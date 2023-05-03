#' @title BAMtocov
#'
#' @description Converts one or more indexed and sorted BAM files into a
#'     feature-extracted data frame after mappability profiling
#'
#' @param bamfile A BAM file
#' @param MP The mappability profile from a host sample (we only have
#'     Arabdopsis. Thaliana right now)
#' @param type Indicate if the sequencing type is single-end or pair-end reads
#'
#' @return A data frame object that contains the mapping result for each virus
#'     segment that the plant sample is aligned to and a RLE list of coverage
#'     information

#' @export
#' @importFrom Rsamtools BamFile
#' @importFrom GenomicAlignments readGAlignments
#' @importFrom GenomicAlignments readGAlignmentPairs
#' @importFrom IRanges coverage
#' @importFrom stats setNames





## convert BAM sorted and index files to dataframe and mappability profiling
BAMtocov<-function(bamfile, MP = mappability_profile, type) {
  ## first, convert BAM files to coverages
  covs<- setNames(lapply(
    bamfile,
    function(x) {
      filedata <- BamFile(x)
      if (type == "single") {
        xread<-readGAlignments(filedata)
      } else if (type == "pair") {
        xread<-readGAlignmentPairs(filedata)
      }
      xcov<-coverage(xread)
      return(xcov)
    }), sub(pattern = "(.*)\\.sorted.*$", replacement = "\\1", basename(bamfile)))
  ### only keep reads that are mapped to the virus segment
  covs_onlymapped<-lapply(covs, function(x) {
    x[sapply(x, function(y){!all(y==0)})]
  })
  ## MP step
  for (nn in names(covs_onlymapped)) {
    for (ss in names(covs_onlymapped[[nn]])) {
      if (length(mappability_profile[[ss]])>0 && (length(mappability_profile[[ss]])>0/length(covs_onlymapped[[nn]][[ss]]))<0.2) {
        for (ii in mappability_profile[[ss]]) {
          covs_onlymapped[[nn]][[ss]][ii] = 0
        }
      }
    }
  }
  ## convert from cov to df
  model.data<-data.frame(matrix(ncol = 20,nrow = 0))
  col_names<- c("seg_id","iso_id","virus_name","sample_id","A_percent","C_percent",
                "T_percent","GC_percent","avg_cov","max_cov","seg_len","cov_2_percent","cov_3_percent",
                "cov_4_percent","cov_5_percent","cov_6_percent","cov_7_percent","cov_8_percent","cov_9_percent","cov_10_percent")
  colnames(model.data)<-col_names
  maxcov<-vector()
  meancov<-vector()
  #use for loop to get the data frame
  for (sample in names(covs_onlymapped)) {
    for (seg in names(covs_onlymapped[[sample]])) {
      iso_id = GCdf[GCdf$seg_id == seg,2]
      v_name = GCdf[GCdf$seg_id == seg,1]
      # detection_result = "Not available"
      sample_id = sample
      seg_id = seg
      seg_length = GCdf[GCdf$seg_id == seg, 8]
      acontent = GCdf[GCdf$seg_id == seg,4]
      ccontent = GCdf[GCdf$seg_id == seg,5]
      tcontent = GCdf[GCdf$seg_id == seg,6]
      gccontent = GCdf[GCdf$seg_id == seg,7]
      maxval = max(covs_onlymapped[[sample]][[seg]])
      meanval = mean(covs_onlymapped[[sample]][[seg]])
      maxcov<-append(maxcov,maxval)
      meancov<- append(meancov, meanval)
      idx2<-covs_onlymapped[[sample]][[seg]]@values>2
      idx3<-covs_onlymapped[[sample]][[seg]]@values>3
      idx4<-covs_onlymapped[[sample]][[seg]]@values>4
      idx5<-covs_onlymapped[[sample]][[seg]]@values>5
      idx6<-covs_onlymapped[[sample]][[seg]]@values>6
      idx7<-covs_onlymapped[[sample]][[seg]]@values>7
      idx8<-covs_onlymapped[[sample]][[seg]]@values>8
      idx9<-covs_onlymapped[[sample]][[seg]]@values>9
      idx10<-covs_onlymapped[[sample]][[seg]]@values>10
      percent_2<-sum(covs_onlymapped[[sample]][[seg]]@lengths[idx2])/sum(covs_onlymapped[[sample]][[seg]]@lengths)
      percent_3<-sum(covs_onlymapped[[sample]][[seg]]@lengths[idx3])/sum(covs_onlymapped[[sample]][[seg]]@lengths)
      percent_4<-sum(covs_onlymapped[[sample]][[seg]]@lengths[idx4])/sum(covs_onlymapped[[sample]][[seg]]@lengths)
      percent_5<-sum(covs_onlymapped[[sample]][[seg]]@lengths[idx5])/sum(covs_onlymapped[[sample]][[seg]]@lengths)
      percent_6<-sum(covs_onlymapped[[sample]][[seg]]@lengths[idx6])/sum(covs_onlymapped[[sample]][[seg]]@lengths)
      percent_7<-sum(covs_onlymapped[[sample]][[seg]]@lengths[idx7])/sum(covs_onlymapped[[sample]][[seg]]@lengths)
      percent_8<-sum(covs_onlymapped[[sample]][[seg]]@lengths[idx8])/sum(covs_onlymapped[[sample]][[seg]]@lengths)
      percent_9<-sum(covs_onlymapped[[sample]][[seg]]@lengths[idx9])/sum(covs_onlymapped[[sample]][[seg]]@lengths)
      percent_10<-sum(covs_onlymapped[[sample]][[seg]]@lengths[idx10])/sum(covs_onlymapped[[sample]][[seg]]@lengths)
      model.data[nrow(model.data)+1, ] <- c(seg_id,iso_id, v_name,sample_id,
                                            acontent, ccontent, tcontent,
                                            gccontent, meanval, maxval,
                                            seg_length, percent_2, percent_3,
                                            percent_4, percent_5, percent_6,
                                            percent_7, percent_8, percent_9,
                                            percent_10)
    }
  }
  for (i in colnames(model.data[,-c(1:4)])) {
    model.data[[i]] = as.numeric(model.data[[i]])
  }
  list(MLdataframe = model.data, cov = covs_onlymapped)
}


