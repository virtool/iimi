# run_defaults

    Code
      convert_bam_to_rle(here::here("tests", "files", "reads_1.sorted.bam"))
    Output
      $reads_1
      RleList of length 6
      $at4zpfgj
      integer-Rle of length 18946 with 3 runs
        Lengths:  2486   101 16359
        Values :     0     1     0
      
      $qx9tftoq
      integer-Rle of length 18923 with 3 runs
        Lengths:  2547   101 16275
        Values :     0     1     0
      
      $wxn762t4
      integer-Rle of length 18659 with 5 runs
        Lengths:  2345   101  1190   101 14922
        Values :     0     1     0     1     0
      
      $`0puj7meb`
      integer-Rle of length 18567 with 3 runs
        Lengths:  2421   101 16045
        Values :     0     1     0
      
      $tfyvouo8
      integer-Rle of length 18731 with 3 runs
        Lengths:  2421   101 16209
        Values :     0     1     0
      
      ...
      <1 more element>
      

# run_single

    Code
      convert_bam_to_rle(here::here("tests", "files", "single.sorted.bam"), paired = FALSE)
    Output
      $single
      RleList of length 77
      $vueoserj
      integer-Rle of length 7334 with 18 runs
        Lengths: 7187    3    3   10    8    2    3 ...   11    9    2    3    9    7
        Values :    0    2    3    4    5    6    7 ...    6    5    4    3    2    1
      
      $jeu4ud7j
      integer-Rle of length 3820 with 12 runs
        Lengths: 3690    8    2    3    9    6   73    8    2    3    9    7
        Values :    0    1    2    3    4    5    6    5    4    3    2    1
      
      $tvbf7jb6
      integer-Rle of length 3816 with 11 runs
        Lengths:  410  101   73   19   29   53   19   29 2961  101   21
        Values :    0    1    0    1    2    3    2    1    0    1    0
      
      $kjsrehl3
      integer-Rle of length 7336 with 3 runs
        Lengths: 7206  101   29
        Values :    0    1    0
      
      $`2vjwy1ur`
      integer-Rle of length 7334 with 7 runs
        Lengths: 7188   14   28   59   14   30    1
        Values :    0    1    2    3    2    1    0
      
      ...
      <72 more elements>
      

# run_paired

    Code
      convert_bam_to_rle(here::here("tests", "files", "paired_1.sorted.bam"), paired = TRUE)
    Output
      $paired_1
      RleList of length 12
      $wagchhes
      integer-Rle of length 8358 with 5 runs
        Lengths: 8002   46  187    7  116
        Values :    0    2    4    2    0
      
      $voimcy9x
      integer-Rle of length 7420 with 5 runs
        Lengths: 7064   46  187    7  116
        Values :    0    2    4    2    0
      
      $p20hs8ax
      integer-Rle of length 8224 with 7 runs
        Lengths: 6943  149  775   46  187    7  117
        Values :    0    2    0    2    4    2    0
      
      $`2u83j3ub`
      integer-Rle of length 7563 with 5 runs
        Lengths: 7205   46  187    7  118
        Values :    0    2    4    2    0
      
      $`8ye5dqvy`
      integer-Rle of length 7271 with 5 runs
        Lengths: 6914   46  187    7  117
        Values :    0    2    4    2    0
      
      ...
      <7 more elements>
      

