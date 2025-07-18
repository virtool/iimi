# run_with_defaults

    Code
      convert_rle_to_df(rles(), unreliable_regions = prepared_unreliable_regions())
    Output
           seg_id   iso_id                            virus_name sample_id A_percent
      1  at4zpfgj      ozx Grapevine leafroll-associated virus 1   reads_1 0.2681833
      2  at4zpfgj koa3kpag Grapevine leafroll-associated virus 1   reads_1 0.2681833
      3  qx9tftoq zz3exj6x Grapevine leafroll-associated virus 1   reads_1 0.2677694
      4  wxn762t4 qqxfgg47 Grapevine leafroll-associated virus 1   reads_1 0.2687711
      5  wxn762t4 qqxfgg47 Grapevine leafroll-associated virus 1   reads_1 0.2687711
      6  0puj7meb      397 Grapevine leafroll-associated virus 1   reads_1 0.2713955
      7  0puj7meb pb7u9x1l Grapevine leafroll-associated virus 1   reads_1 0.2713955
      8  tfyvouo8      wb4 Grapevine leafroll-associated virus 1   reads_1 0.2709946
      9  tfyvouo8 8mgrmyn4 Grapevine leafroll-associated virus 1   reads_1 0.2709946
      10 b96oqx77      h9j Grapevine leafroll-associated virus 1   reads_1 0.2689392
      11 b96oqx77 t0bfutne Grapevine leafroll-associated virus 1   reads_1 0.2689392
         C_percent T_percent GC_percent     avg_cov max_cov seg_len cov_2_percent
      1  0.1883247 0.2809036  0.4509131 0.001477885       1   18946             0
      2  0.1883247 0.2809036  0.4509131 0.001477885       1   18946             0
      3  0.1909845 0.2797125  0.4525181 0.005337420       1   18923             0
      4  0.1843078 0.2818479  0.4493810 0.010825875       1   18659             0
      5  0.1843078 0.2818479  0.4493810 0.010825875       1   18659             0
      6  0.1850595 0.2815210  0.4470835 0.005439759       1   18567             0
      7  0.1850595 0.2815210  0.4470835 0.005439759       1   18567             0
      8  0.1884042 0.2777748  0.4512306 0.001601623       1   18731             0
      9  0.1884042 0.2777748  0.4512306 0.001601623       1   18731             0
      10 0.1876160 0.2793299  0.4517309 0.005354397       1   18863             0
      11 0.1876160 0.2793299  0.4517309 0.005354397       1   18863             0
         cov_3_percent cov_4_percent cov_5_percent cov_6_percent cov_7_percent
      1              0             0             0             0             0
      2              0             0             0             0             0
      3              0             0             0             0             0
      4              0             0             0             0             0
      5              0             0             0             0             0
      6              0             0             0             0             0
      7              0             0             0             0             0
      8              0             0             0             0             0
      9              0             0             0             0             0
      10             0             0             0             0             0
      11             0             0             0             0             0
         cov_8_percent cov_9_percent cov_10_percent
      1              0             0              0
      2              0             0              0
      3              0             0              0
      4              0             0              0
      5              0             0              0
      6              0             0              0
      7              0             0              0
      8              0             0              0
      9              0             0              0
      10             0             0              0
      11             0             0              0

# run_without_unreliable_regions

    Code
      convert_rle_to_df(rles(), unreliable_region_enabled = FALSE)
    Output
           seg_id   iso_id                            virus_name sample_id A_percent
      1  at4zpfgj      ozx Grapevine leafroll-associated virus 1   reads_1 0.2681833
      2  at4zpfgj koa3kpag Grapevine leafroll-associated virus 1   reads_1 0.2681833
      3  qx9tftoq zz3exj6x Grapevine leafroll-associated virus 1   reads_1 0.2677694
      4  wxn762t4 qqxfgg47 Grapevine leafroll-associated virus 1   reads_1 0.2687711
      5  wxn762t4 qqxfgg47 Grapevine leafroll-associated virus 1   reads_1 0.2687711
      6  0puj7meb      397 Grapevine leafroll-associated virus 1   reads_1 0.2713955
      7  0puj7meb pb7u9x1l Grapevine leafroll-associated virus 1   reads_1 0.2713955
      8  tfyvouo8      wb4 Grapevine leafroll-associated virus 1   reads_1 0.2709946
      9  tfyvouo8 8mgrmyn4 Grapevine leafroll-associated virus 1   reads_1 0.2709946
      10 b96oqx77      h9j Grapevine leafroll-associated virus 1   reads_1 0.2689392
      11 b96oqx77 t0bfutne Grapevine leafroll-associated virus 1   reads_1 0.2689392
         C_percent T_percent GC_percent     avg_cov max_cov seg_len cov_2_percent
      1  0.1883247 0.2809036  0.4509131 0.005330941       1   18946             0
      2  0.1883247 0.2809036  0.4509131 0.005330941       1   18946             0
      3  0.1909845 0.2797125  0.4525181 0.005337420       1   18923             0
      4  0.1843078 0.2818479  0.4493810 0.010825875       1   18659             0
      5  0.1843078 0.2818479  0.4493810 0.010825875       1   18659             0
      6  0.1850595 0.2815210  0.4470835 0.005439759       1   18567             0
      7  0.1850595 0.2815210  0.4470835 0.005439759       1   18567             0
      8  0.1884042 0.2777748  0.4512306 0.005392131       1   18731             0
      9  0.1884042 0.2777748  0.4512306 0.005392131       1   18731             0
      10 0.1876160 0.2793299  0.4517309 0.005354397       1   18863             0
      11 0.1876160 0.2793299  0.4517309 0.005354397       1   18863             0
         cov_3_percent cov_4_percent cov_5_percent cov_6_percent cov_7_percent
      1              0             0             0             0             0
      2              0             0             0             0             0
      3              0             0             0             0             0
      4              0             0             0             0             0
      5              0             0             0             0             0
      6              0             0             0             0             0
      7              0             0             0             0             0
      8              0             0             0             0             0
      9              0             0             0             0             0
      10             0             0             0             0             0
      11             0             0             0             0             0
         cov_8_percent cov_9_percent cov_10_percent
      1              0             0              0
      2              0             0              0
      3              0             0              0
      4              0             0              0
      5              0             0              0
      6              0             0              0
      7              0             0              0
      8              0             0              0
      9              0             0              0
      10             0             0              0
      11             0             0              0

# run_single

    Code
      convert_rle_to_df(rles, unreliable_regions = prepared_unreliable_regions())
    Output
            seg_id   iso_id                                        virus_name
      1   vueoserj sw9uvwdi                               Arabis mosaic virus
      2   vueoserj sw9uvwdi                               Arabis mosaic virus
      3   jeu4ud7j sw9uvwdi                               Arabis mosaic virus
      4   jeu4ud7j sw9uvwdi                               Arabis mosaic virus
      5   tvbf7jb6 28fok9f5                               Arabis mosaic virus
      6   tvbf7jb6 28fok9f5                               Arabis mosaic virus
      7   kjsrehl3 28fok9f5                               Arabis mosaic virus
      8   kjsrehl3 28fok9f5                               Arabis mosaic virus
      9   2vjwy1ur wr8gogfd                               Arabis mosaic virus
      10  2vjwy1ur wr8gogfd                               Arabis mosaic virus
      11  cwwn3iet wr8gogfd                               Arabis mosaic virus
      12  cwwn3iet wr8gogfd                               Arabis mosaic virus
      13  2lbwz9rn 7pv6pnht                               Arabis mosaic virus
      14  2lbwz9rn 7pv6pnht                               Arabis mosaic virus
      15  vonmfl9b 7pv6pnht                               Arabis mosaic virus
      16  vonmfl9b 7pv6pnht                               Arabis mosaic virus
      17  94r4nzm6 dvfq3bck                           Broad bean mottle virus
      18  94r4nzm6 dvfq3bck                           Broad bean mottle virus
      19  0idllg2i gle4x8ju                                 Prune dwarf virus
      20  0idllg2i gle4x8ju                                 Prune dwarf virus
      21  u70u89n0      2g7                             Little cherry virus 1
      22  u70u89n0 j6wyen79                             Little cherry virus 1
      23  pgcx8bfe 0eptgc39                             Little cherry virus 1
      24  pgcx8bfe 0eptgc39                             Little cherry virus 1
      25  mu7w353z lcdiwo1c                             Little cherry virus 1
      26  mu7w353z lcdiwo1c                             Little cherry virus 1
      27  po3192t4      tek                             Little cherry virus 1
      28  po3192t4 qqou6gb9                             Little cherry virus 1
      29  hpxiy9ot      uvw                             Little cherry virus 1
      30  hpxiy9ot b0y0094y                             Little cherry virus 1
      31  m0xjzu5u      j9s                             Little cherry virus 1
      32  m0xjzu5u gl846qtl                             Little cherry virus 1
      33  z6w52e4d      tok                             Little cherry virus 1
      34  z6w52e4d cst0w3iz                             Little cherry virus 1
      35  zj05ynxg g5h5psy1                             Little cherry virus 1
      36  zj05ynxg g5h5psy1                             Little cherry virus 1
      37  w8okj0tr      ikh                             Little cherry virus 1
      38  w8okj0tr 5u6lgcu5                             Little cherry virus 1
      39  35l0lrpl      6b9                             Little cherry virus 1
      40  35l0lrpl ch7n99cb                             Little cherry virus 1
      41  937ob21p gv9iccm2                            Citrus excortis viroid
      42  937ob21p gv9iccm2                            Citrus excortis viroid
      43  i6nwfvr6 qq38obx8                                  Hop stunt viroid
      44  i6nwfvr6 qq38obx8                                  Hop stunt viroid
      45  jepcmzez nhr14qel                                  Hop stunt viroid
      46  jepcmzez nhr14qel                                  Hop stunt viroid
      47  q1p4t120 v79asybg                                  Hop stunt viroid
      48  q1p4t120 v79asybg                                  Hop stunt viroid
      49  70amom0t 7zn0eu67                                  Hop stunt viroid
      50  70amom0t 7zn0eu67                                  Hop stunt viroid
      51  v9w93afv ojwdnn5y                                  Hop stunt viroid
      52  v9w93afv ojwdnn5y                                  Hop stunt viroid
      53  0v6dhby6 7941vyb1                                  Hop stunt viroid
      54  0v6dhby6 7941vyb1                                  Hop stunt viroid
      55  spdtpy69 7eimpwul                                  Hop stunt viroid
      56  spdtpy69 7eimpwul                                  Hop stunt viroid
      57  5cg0fzz4 guj9svby                                  Hop stunt viroid
      58  5cg0fzz4 guj9svby                                  Hop stunt viroid
      59  fwgwcplg 1hv48355                                  Hop stunt viroid
      60  fwgwcplg 1hv48355                                  Hop stunt viroid
      61  j3gc98g1 s83gic3g                                  Hop stunt viroid
      62  j3gc98g1 s83gic3g                                  Hop stunt viroid
      63  e20ikgna l2ij32dd                                  Hop stunt viroid
      64  e20ikgna l2ij32dd                                  Hop stunt viroid
      65  kedqwle2 v4zfzo5f                                  Hop stunt viroid
      66  kedqwle2 v4zfzo5f                                  Hop stunt viroid
      67  1i3zldbi m9h3f8z8                                  Hop stunt viroid
      68  1i3zldbi m9h3f8z8                                  Hop stunt viroid
      69  fv1aumbg 1ligh64j                           Grapevine fanleaf virus
      70  fv1aumbg 1ligh64j                           Grapevine fanleaf virus
      71  wh7fzy9c 1ligh64j                           Grapevine fanleaf virus
      72  wh7fzy9c 1ligh64j                           Grapevine fanleaf virus
      73  mjsdukfr      s1s             Grapevine leafroll-associated virus 2
      74  mjsdukfr b8uunsbk             Grapevine leafroll-associated virus 2
      75  nb48exd1 5r4xi0cp             Grapevine leafroll-associated virus 2
      76  nb48exd1 5r4xi0cp             Grapevine leafroll-associated virus 2
      77  qt54au1c up3h2ys0             Grapevine leafroll-associated virus 2
      78  qt54au1c up3h2ys0             Grapevine leafroll-associated virus 2
      79  5fy5m846      7lx             Grapevine leafroll-associated virus 2
      80  5fy5m846 wehnw7mv             Grapevine leafroll-associated virus 2
      81  t0c4806q      qnl             Grapevine leafroll-associated virus 2
      82  t0c4806q dt80fqlo             Grapevine leafroll-associated virus 2
      83  id147cot scdt570z             Grapevine leafroll-associated virus 2
      84  id147cot scdt570z             Grapevine leafroll-associated virus 2
      85  evq2m9zm qjz6w3r0             Grapevine leafroll-associated virus 2
      86  evq2m9zm qjz6w3r0             Grapevine leafroll-associated virus 2
      87  g8fm2s6o ubp598ob             Grapevine leafroll-associated virus 2
      88  g8fm2s6o ubp598ob             Grapevine leafroll-associated virus 2
      89  axd75k0z      3z5             Grapevine leafroll-associated virus 2
      90  axd75k0z 975r4tv0             Grapevine leafroll-associated virus 2
      91  owqmsw7t      qo0             Grapevine leafroll-associated virus 2
      92  owqmsw7t i7t8148o             Grapevine leafroll-associated virus 2
      93  ycrpqhpc f7ni7ez1 Grapevine rupestris stem pitting-associated virus
      94  ycrpqhpc f7ni7ez1 Grapevine rupestris stem pitting-associated virus
      95  8ygq429a wqes469z Grapevine rupestris stem pitting-associated virus
      96  8ygq429a wqes469z Grapevine rupestris stem pitting-associated virus
      97  138mtg3l 293ct80a Grapevine rupestris stem pitting-associated virus
      98  138mtg3l 293ct80a Grapevine rupestris stem pitting-associated virus
      99  d004pi7r t30yi9en Grapevine rupestris stem pitting-associated virus
      100 d004pi7r t30yi9en Grapevine rupestris stem pitting-associated virus
      101 ihlcido5 85npynru Grapevine rupestris stem pitting-associated virus
      102 ihlcido5 85npynru Grapevine rupestris stem pitting-associated virus
      103 3yxnuxpf 3x5ail02 Grapevine rupestris stem pitting-associated virus
      104 3yxnuxpf 3x5ail02 Grapevine rupestris stem pitting-associated virus
      105 prqddi2n 2j7ki65k Grapevine rupestris stem pitting-associated virus
      106 prqddi2n 2j7ki65k Grapevine rupestris stem pitting-associated virus
      107 7mx8yxvg ir2r2v1e Grapevine rupestris stem pitting-associated virus
      108 7mx8yxvg ir2r2v1e Grapevine rupestris stem pitting-associated virus
      109 rvhpxtbq i0gxiw6u             Grapevine leafroll-associated virus 4
      110 rvhpxtbq i0gxiw6u             Grapevine leafroll-associated virus 4
      111 vajtrm7i m13hamm7             Grapevine leafroll-associated virus 4
      112 vajtrm7i m13hamm7             Grapevine leafroll-associated virus 4
      113 4ty6dskd itlgqn0g             Grapevine leafroll-associated virus 4
      114 4ty6dskd itlgqn0g             Grapevine leafroll-associated virus 4
      115 5l536j9o bvijlm5n                             Grapevine fleck virus
      116 5l536j9o bvijlm5n                             Grapevine fleck virus
      117 a136wnbt khc5zc4b                       Grapevine deformation virus
      118 a136wnbt khc5zc4b                       Grapevine deformation virus
      119 0jti6qrg khc5zc4b                       Grapevine deformation virus
      120 0jti6qrg khc5zc4b                       Grapevine deformation virus
      121 0puj7meb      397             Grapevine leafroll-associated virus 1
      122 0puj7meb pb7u9x1l             Grapevine leafroll-associated virus 1
      123 wxn762t4 qqxfgg47             Grapevine leafroll-associated virus 1
      124 wxn762t4 qqxfgg47             Grapevine leafroll-associated virus 1
      125 b96oqx77      h9j             Grapevine leafroll-associated virus 1
      126 b96oqx77 t0bfutne             Grapevine leafroll-associated virus 1
      127 tfyvouo8      wb4             Grapevine leafroll-associated virus 1
      128 tfyvouo8 8mgrmyn4             Grapevine leafroll-associated virus 1
      129 at4zpfgj      ozx             Grapevine leafroll-associated virus 1
      130 at4zpfgj koa3kpag             Grapevine leafroll-associated virus 1
      131 st0i8m8x      yw2             Grapevine leafroll-associated virus 1
      132 st0i8m8x n5pfl6yk             Grapevine leafroll-associated virus 1
      133 om9ltl4g      ybm             Grapevine leafroll-associated virus 3
      134 om9ltl4g qa9t8ap8             Grapevine leafroll-associated virus 3
      135 dwy14qv0 20fm4eoc             Grapevine leafroll-associated virus 3
      136 dwy14qv0 20fm4eoc             Grapevine leafroll-associated virus 3
      137 knqdbnvs c5uqslb4             Grapevine leafroll-associated virus 3
      138 knqdbnvs c5uqslb4             Grapevine leafroll-associated virus 3
      139 zs5acisd      cnz             Grapevine leafroll-associated virus 3
      140 zs5acisd 09imif2p             Grapevine leafroll-associated virus 3
      141 osp9k85l lmx90t8q                   Grapevine yellow speckle viroid
      142 osp9k85l lmx90t8q                   Grapevine yellow speckle viroid
      143 v3w3g665 k6uhqyl9                   Grapevine yellow speckle viroid
      144 v3w3g665 k6uhqyl9                   Grapevine yellow speckle viroid
      145 bmf5g19u 55aeebde                   Grapevine yellow speckle viroid
      146 bmf5g19u 55aeebde                   Grapevine yellow speckle viroid
      147 l0xtuna1 zxbst9nh                   Grapevine yellow speckle viroid
      148 l0xtuna1 zxbst9nh                   Grapevine yellow speckle viroid
      149 tt53gpv5 hsxjnm0r                   Grapevine yellow speckle viroid
      150 tt53gpv5 hsxjnm0r                   Grapevine yellow speckle viroid
      151 v27zpfje cci28ufg                   Grapevine yellow speckle viroid
      152 v27zpfje cci28ufg                   Grapevine yellow speckle viroid
      153 whpt8nfj ra3houup                   Grapevine yellow speckle viroid
      154 whpt8nfj ra3houup                   Grapevine yellow speckle viroid
          sample_id A_percent C_percent T_percent GC_percent      avg_cov max_cov
      1      single 0.2722934 0.1973002 0.2890646  0.4386419 0.0104990455       5
      2      single 0.2722934 0.1973002 0.2890646  0.4386419 0.0104990455       5
      3      single 0.2400524 0.2130890 0.3015707  0.4583770 0.1314136126       6
      4      single 0.2400524 0.2130890 0.3015707  0.4583770 0.1314136126       6
      5      single 0.2403040 0.2148847 0.3003145  0.4593816 0.0631551363       3
      6      single 0.2403040 0.2148847 0.3003145  0.4593816 0.0631551363       3
      7      single 0.2662214 0.1935660 0.2930752  0.4407034 0.0137677208       1
      8      single 0.2662214 0.1935660 0.2930752  0.4407034 0.0137677208       1
      9      single 0.2683392 0.1967548 0.2844287  0.4472321 0.0016362149       1
      10     single 0.2683392 0.1967548 0.2844287  0.4472321 0.0016362149       1
      11     single 0.2337356 0.2211438 0.2961700  0.4700944 0.0036726128       1
      12     single 0.2337356 0.2211438 0.2961700  0.4700944 0.0036726128       1
      13     single 0.2403141 0.2128272 0.3007853  0.4589005 0.1589005236       6
      14     single 0.2403141 0.2128272 0.3007853  0.4589005 0.1589005236       6
      15     single 0.2729877 0.1963165 0.2901774  0.4368349 0.0000000000       0
      16     single 0.2729877 0.1963165 0.2901774  0.4368349 0.0000000000       0
      17     single 0.2799826 0.2058439 0.2908853  0.4291321 0.0000000000       0
      18     single 0.2799826 0.2058439 0.2908853  0.4291321 0.0000000000       0
      19     single 0.2845287 0.1908714 0.2969769  0.4184944 0.0302311796       1
      20     single 0.2845287 0.1908714 0.2969769  0.4184944 0.0302311796       1
      21     single 0.3248908 0.1569253 0.3288464  0.3462628 0.7215137561       9
      22     single 0.3248908 0.1569253 0.3288464  0.3462628 0.7215137561       9
      23     single 0.3208338 0.1583205 0.3264438  0.3527223 0.0010629503       1
      24     single 0.3208338 0.1583205 0.3264438  0.3527223 0.0010629503       1
      25     single 0.3203591 0.1572855 0.3290414  0.3505995 0.2431634280       6
      26     single 0.3203591 0.1572855 0.3290414  0.3505995 0.2431634280       6
      27     single 0.3308377 0.1543949 0.3307788  0.3383835 0.0235807345       2
      28     single 0.3308377 0.1543949 0.3307788  0.3383835 0.0235807345       2
      29     single 0.3246515 0.1582802 0.3274864  0.3478030 0.7277344673       9
      30     single 0.3246515 0.1582802 0.3274864  0.3478030 0.7277344673       9
      31     single 0.3202055 0.1599551 0.3247520  0.3550425 0.0612895607       9
      32     single 0.3202055 0.1599551 0.3247520  0.3550425 0.0612895607       9
      33     single 0.3230379 0.1581527 0.3274080  0.3494951 0.7276914900       9
      34     single 0.3230379 0.1581527 0.3274080  0.3494951 0.7276914900       9
      35     single 0.3325654 0.1518696 0.3327426  0.3346919 0.0025990903       1
      36     single 0.3325654 0.1518696 0.3327426  0.3346919 0.0025990903       1
      37     single 0.3212028 0.1556685 0.3289419  0.3498553 0.0112837479       2
      38     single 0.3212028 0.1556685 0.3289419  0.3498553 0.0112837479       2
      39     single 0.3212071 0.1601016 0.3261678  0.3525660 0.7276914900       9
      40     single 0.3212071 0.1601016 0.3261678  0.3525660 0.7276914900       9
      41     single 0.2335025 0.2538071 0.2131980  0.5532995 0.0000000000       0
      42     single 0.2335025 0.2538071 0.2131980  0.5532995 0.0000000000       0
      43     single 0.2027027 0.2939189 0.2331081  0.5641892 0.0033783784       1
      44     single 0.2027027 0.2939189 0.2331081  0.5641892 0.0033783784       1
      45     single 0.1925676 0.2972973 0.2364865  0.5709459 0.0000000000       0
      46     single 0.1925676 0.2972973 0.2364865  0.5709459 0.0000000000       0
      47     single 0.2040134 0.2909699 0.2307692  0.5652174 0.0100334448       1
      48     single 0.2040134 0.2909699 0.2307692  0.5652174 0.0100334448       1
      49     single 0.2079208 0.2838284 0.2376238  0.5544554 0.6798679868       2
      50     single 0.2079208 0.2838284 0.2376238  0.5544554 0.6798679868       2
      51     single 0.2065574 0.2950820 0.2196721  0.5737705 0.0000000000       0
      52     single 0.2065574 0.2950820 0.2196721  0.5737705 0.0000000000       0
      53     single 0.2087542 0.2962963 0.2255892  0.5656566 0.0000000000       0
      54     single 0.2087542 0.2962963 0.2255892  0.5656566 0.0000000000       0
      55     single 0.2053872 0.2962963 0.2289562  0.5656566 0.0067340067       1
      56     single 0.2053872 0.2962963 0.2289562  0.5656566 0.0067340067       1
      57     single 0.1986532 0.2962963 0.2323232  0.5690236 0.6767676768       2
      58     single 0.1986532 0.2962963 0.2323232  0.5690236 0.6767676768       2
      59     single 0.1919192 0.2962963 0.2356902  0.5723906 0.0000000000       0
      60     single 0.1919192 0.2962963 0.2356902  0.5723906 0.0000000000       0
      61     single 0.2027027 0.2939189 0.2331081  0.5641892 0.0168918919       1
      62     single 0.2027027 0.2939189 0.2331081  0.5641892 0.0168918919       1
      63     single 0.2000000 0.2866667 0.2333333  0.5666667 0.3300000000       1
      64     single 0.2000000 0.2866667 0.2333333  0.5666667 0.3300000000       1
      65     single 0.2059801 0.2857143 0.2358804  0.5581395 0.0000000000       0
      66     single 0.2059801 0.2857143 0.2358804  0.5581395 0.0000000000       0
      67     single 0.2119205 0.2814570 0.2350993  0.5529801 0.6788079470       2
      68     single 0.2119205 0.2814570 0.2350993  0.5529801 0.6788079470       2
      69     single 0.2424483 0.2151563 0.2896131  0.4679385 1.3463169051      11
      70     single 0.2424483 0.2151563 0.2896131  0.4679385 1.3463169051      11
      71     single 0.2692727 0.1919096 0.2849360  0.4457913 0.8782348134       7
      72     single 0.2692727 0.1919096 0.2849360  0.4457913 0.8782348134       7
      73     single 0.2531845 0.2075701 0.2849084  0.4619071 0.0003032876       1
      74     single 0.2531845 0.2075701 0.2849084  0.4619071 0.0003032876       1
      75     single 0.2557605 0.2050197 0.2853341  0.4589054 0.0631992743       7
      76     single 0.2557605 0.2050197 0.2853341  0.4589054 0.0631992743       7
      77     single 0.2571550 0.2074787 0.2797846  0.4630604 0.0014521692       4
      78     single 0.2571550 0.2074787 0.2797846  0.4630604 0.0014521692       4
      79     single 0.2521375 0.2075678 0.2850646  0.4627979 0.0243162937       3
      80     single 0.2521375 0.2075678 0.2850646  0.4627979 0.0243162937       3
      81     single 0.2568985 0.2075323 0.2800655  0.4630360 0.0384498757       9
      82     single 0.2568985 0.2075323 0.2800655  0.4630360 0.0384498757       9
      83     single 0.2532452 0.2075701 0.2849691  0.4617858 0.0306320514       5
      84     single 0.2532452 0.2075701 0.2849691  0.4617858 0.0306320514       5
      85     single 0.2522736 0.2046199 0.2873772  0.4603492 0.0020007275       2
      86     single 0.2522736 0.2046199 0.2873772  0.4603492 0.0020007275       2
      87     single 0.2520942 0.2069928 0.2860265  0.4618793 0.0061308729       1
      88     single 0.2520942 0.2069928 0.2860265  0.4618793 0.0061308729       1
      89     single 0.2526993 0.2076307 0.2849084  0.4623923 0.0000000000       0
      90     single 0.2526993 0.2076307 0.2849084  0.4623923 0.0000000000       0
      91     single 0.2570996 0.2075689 0.2799273  0.4629731 0.5254011505      10
      92     single 0.2570996 0.2075689 0.2799273  0.4629731 0.5254011505      10
      93     single 0.2785927 0.1935595 0.2907403  0.4306670 0.0484758194       2
      94     single 0.2785927 0.1935595 0.2907403  0.4306670 0.0484758194       2
      95     single 0.2779048 0.1919030 0.2927722  0.4292086 0.9120539799       6
      96     single 0.2779048 0.1919030 0.2927722  0.4292086 0.9120539799       6
      97     single 0.2784318 0.1931649 0.2913476  0.4302206 0.1945365185       3
      98     single 0.2784318 0.1931649 0.2913476  0.4302206 0.1945365185       3
      99     single 0.2756999 0.1925195 0.2935980  0.4307022 0.9381597063       6
      100    single 0.2756999 0.1925195 0.2935980  0.4307022 0.9381597063       6
      101    single 0.2771181 0.1911395 0.2931034  0.4297785 0.1923955241       6
      102    single 0.2771181 0.1911395 0.2931034  0.4297785 0.1923955241       6
      103    single 0.2766762 0.1932378 0.2927221  0.4306017 0.9487679083       6
      104    single 0.2766762 0.1932378 0.2927221  0.4306017 0.9487679083       6
      105    single 0.2762210 0.1950132 0.2934919  0.4302871 0.0231041976       1
      106    single 0.2762210 0.1950132 0.2934919  0.4302871 0.0231041976       1
      107    single 0.2778540 0.1930908 0.2905514  0.4315946 0.2310684054       2
      108    single 0.2778540 0.1930908 0.2905514  0.4315946 0.2310684054       2
      109    single 0.2895248 0.1957561 0.2679319  0.4425433 0.2478332337       2
      110    single 0.2895248 0.1957561 0.2679319  0.4425433 0.2478332337       2
      111    single 0.2913955 0.1885756 0.2766450  0.4319595 0.0074475777       1
      112    single 0.2913955 0.1885756 0.2766450  0.4319595 0.0074475777       1
      113    single 0.2826827 0.1966394 0.2713841  0.4459332 0.1394944593       3
      114    single 0.2826827 0.1966394 0.2713841  0.4459332 0.1394944593       3
      115    single 0.1393443 0.4989424 0.1983078  0.6623480 0.0161290323       2
      116    single 0.1393443 0.4989424 0.1983078  0.6623480 0.0161290323       2
      117    single 0.2430056 0.2062350 0.3074873  0.4495071 0.2049027445      10
      118    single 0.2430056 0.2062350 0.3074873  0.4495071 0.2049027445      10
      119    single 0.2682101 0.1971297 0.2797184  0.4520715 0.1814243163      10
      120    single 0.2682101 0.1971297 0.2797184  0.4520715 0.1814243163      10
      121    single 0.2713955 0.1850595 0.2815210  0.4470835 2.7931814510     207
      122    single 0.2713955 0.1850595 0.2815210  0.4470835 2.7931814510     207
      123    single 0.2687711 0.1843078 0.2818479  0.4493810 6.3018918484     258
      124    single 0.2687711 0.1843078 0.2818479  0.4493810 6.3018918484     258
      125    single 0.2689392 0.1876160 0.2793299  0.4517309 1.0608598844     190
      126    single 0.2689392 0.1876160 0.2793299  0.4517309 1.0608598844     190
      127    single 0.2709946 0.1884042 0.2777748  0.4512306 0.9357749186     188
      128    single 0.2709946 0.1884042 0.2777748  0.4512306 0.9357749186     188
      129    single 0.2681833 0.1883247 0.2809036  0.4509131 1.7416341180     231
      130    single 0.2681833 0.1883247 0.2809036  0.4509131 1.7416341180     231
      131    single 0.2681897 0.1840342 0.2851264  0.4466839 0.6717670026      85
      132    single 0.2681897 0.1840342 0.2851264  0.4466839 0.6717670026      85
      133    single 0.2619202 0.1934263 0.2840848  0.4539950 0.0218401989       2
      134    single 0.2619202 0.1934263 0.2840848  0.4539950 0.0218401989       2
      135    single 0.2617040 0.1921289 0.2852200  0.4530760 0.0218401989       2
      136    single 0.2617040 0.1921289 0.2852200  0.4530760 0.0218401989       2
      137    single 0.2617580 0.1933182 0.2841929  0.4540491 0.0218401989       2
      138    single 0.2617580 0.1933182 0.2841929  0.4540491 0.0218401989       2
      139    single 0.2622047 0.1928961 0.2843704  0.4534249 0.0218413797       2
      140    single 0.2622047 0.1928961 0.2843704  0.4534249 0.0218413797       2
      141    single 0.1689373 0.3160763 0.2207084  0.6103542 0.0000000000       0
      142    single 0.1689373 0.3160763 0.2207084  0.6103542 0.0000000000       0
      143    single 0.1726027 0.3095890 0.2219178  0.6054795 0.0000000000       0
      144    single 0.1726027 0.3095890 0.2219178  0.6054795 0.0000000000       0
      145    single 0.1607629 0.3160763 0.2316076  0.6076294 0.0000000000       0
      146    single 0.1607629 0.3160763 0.2316076  0.6076294 0.0000000000       0
      147    single 0.1689373 0.3133515 0.2261580  0.6049046 0.0000000000       0
      148    single 0.1689373 0.3133515 0.2261580  0.6049046 0.0000000000       0
      149    single 0.1662125 0.3133515 0.2261580  0.6076294 0.0000000000       0
      150    single 0.1662125 0.3133515 0.2261580  0.6076294 0.0000000000       0
      151    single 0.1810585 0.3119777 0.2144847  0.6044568 0.0000000000       0
      152    single 0.1810585 0.3119777 0.2144847  0.6044568 0.0000000000       0
      153    single 0.1657609 0.3179348 0.2255435  0.6086957 0.0000000000       0
      154    single 0.1657609 0.3179348 0.2255435  0.6086957 0.0000000000       0
          seg_len cov_2_percent cov_3_percent cov_4_percent cov_5_percent
      1      7334  0.0016362149  0.0012271612  0.0009544587   0.000000000
      2      7334  0.0016362149  0.0012271612  0.0009544587   0.000000000
      3      3820  0.0217277487  0.0209424084  0.0204188482   0.018324607
      4      3820  0.0217277487  0.0209424084  0.0204188482   0.018324607
      5      3816  0.0028825996  0.0000000000  0.0000000000   0.000000000
      6      3816  0.0028825996  0.0000000000  0.0000000000   0.000000000
      7      7336  0.0000000000  0.0000000000  0.0000000000   0.000000000
      8      7336  0.0000000000  0.0000000000  0.0000000000   0.000000000
      9      7334  0.0000000000  0.0000000000  0.0000000000   0.000000000
      10     7334  0.0000000000  0.0000000000  0.0000000000   0.000000000
      11     3812  0.0000000000  0.0000000000  0.0000000000   0.000000000
      12     3812  0.0000000000  0.0000000000  0.0000000000   0.000000000
      13     3820  0.0272251309  0.0256544503  0.0227748691   0.019109948
      14     3820  0.0272251309  0.0256544503  0.0227748691   0.019109948
      15     7330  0.0000000000  0.0000000000  0.0000000000   0.000000000
      16     7330  0.0000000000  0.0000000000  0.0000000000   0.000000000
      17     2293  0.0000000000  0.0000000000  0.0000000000   0.000000000
      18     2293  0.0000000000  0.0000000000  0.0000000000   0.000000000
      19     3374  0.0000000000  0.0000000000  0.0000000000   0.000000000
      20     3374  0.0000000000  0.0000000000  0.0000000000   0.000000000
      21    16938  0.0940488842  0.0596882749  0.0412681544   0.029401346
      22    16938  0.0940488842  0.0596882749  0.0412681544   0.029401346
      23    16934  0.0000000000  0.0000000000  0.0000000000   0.000000000
      24    16934  0.0000000000  0.0000000000  0.0000000000   0.000000000
      25    16931  0.0349063847  0.0199043175  0.0114582718   0.003780048
      26    16931  0.0349063847  0.0199043175  0.0114582718   0.003780048
      27    16963  0.0000000000  0.0000000000  0.0000000000   0.000000000
      28    16963  0.0000000000  0.0000000000  0.0000000000   0.000000000
      29    16932  0.0939640917  0.0593550673  0.0418143161   0.030888259
      30    16932  0.0939640917  0.0593550673  0.0418143161   0.030888259
      31    16936  0.0081483231  0.0063769485  0.0060226736   0.005136986
      32    16936  0.0081483231  0.0063769485  0.0060226736   0.005136986
      33    16933  0.0940766551  0.0598240123  0.0421661844   0.031358885
      34    16933  0.0940766551  0.0598240123  0.0421661844   0.031358885
      35    16929  0.0000000000  0.0000000000  0.0000000000   0.000000000
      36    16929  0.0000000000  0.0000000000  0.0000000000   0.000000000
      37    16927  0.0000000000  0.0000000000  0.0000000000   0.000000000
      38    16927  0.0000000000  0.0000000000  0.0000000000   0.000000000
      39    16933  0.0939585425  0.0593515620  0.0418118467   0.030886435
      40    16933  0.0939585425  0.0593515620  0.0418118467   0.030886435
      41      394  0.0000000000  0.0000000000  0.0000000000   0.000000000
      42      394  0.0000000000  0.0000000000  0.0000000000   0.000000000
      43      296  0.0000000000  0.0000000000  0.0000000000   0.000000000
      44      296  0.0000000000  0.0000000000  0.0000000000   0.000000000
      45      296  0.0000000000  0.0000000000  0.0000000000   0.000000000
      46      296  0.0000000000  0.0000000000  0.0000000000   0.000000000
      47      299  0.0000000000  0.0000000000  0.0000000000   0.000000000
      48      299  0.0000000000  0.0000000000  0.0000000000   0.000000000
      49      303  0.0000000000  0.0000000000  0.0000000000   0.000000000
      50      303  0.0000000000  0.0000000000  0.0000000000   0.000000000
      51      305  0.0000000000  0.0000000000  0.0000000000   0.000000000
      52      305  0.0000000000  0.0000000000  0.0000000000   0.000000000
      53      297  0.0000000000  0.0000000000  0.0000000000   0.000000000
      54      297  0.0000000000  0.0000000000  0.0000000000   0.000000000
      55      297  0.0000000000  0.0000000000  0.0000000000   0.000000000
      56      297  0.0000000000  0.0000000000  0.0000000000   0.000000000
      57      297  0.0000000000  0.0000000000  0.0000000000   0.000000000
      58      297  0.0000000000  0.0000000000  0.0000000000   0.000000000
      59      297  0.0000000000  0.0000000000  0.0000000000   0.000000000
      60      297  0.0000000000  0.0000000000  0.0000000000   0.000000000
      61      296  0.0000000000  0.0000000000  0.0000000000   0.000000000
      62      296  0.0000000000  0.0000000000  0.0000000000   0.000000000
      63      300  0.0000000000  0.0000000000  0.0000000000   0.000000000
      64      300  0.0000000000  0.0000000000  0.0000000000   0.000000000
      65      301  0.0000000000  0.0000000000  0.0000000000   0.000000000
      66      301  0.0000000000  0.0000000000  0.0000000000   0.000000000
      67      302  0.0000000000  0.0000000000  0.0000000000   0.000000000
      68      302  0.0000000000  0.0000000000  0.0000000000   0.000000000
      69     3774  0.1997880233  0.0937996820  0.0588235294   0.034711182
      70     3774  0.1997880233  0.0937996820  0.0588235294   0.034711182
      71     7342  0.1206755652  0.0588395533  0.0137564696   0.005992917
      72     7342  0.1206755652  0.0588395533  0.0137564696   0.005992917
      73    16486  0.0000000000  0.0000000000  0.0000000000   0.000000000
      74    16486  0.0000000000  0.0000000000  0.0000000000   0.000000000
      75    16535  0.0101602661  0.0071968552  0.0048986997   0.004354400
      76    16535  0.0101602661  0.0071968552  0.0048986997   0.004354400
      77    16527  0.0001210141  0.0001210141  0.0000000000   0.000000000
      78    16527  0.0001210141  0.0001210141  0.0000000000   0.000000000
      79    16491  0.0049724092  0.0000000000  0.0000000000   0.000000000
      80    16491  0.0049724092  0.0000000000  0.0000000000   0.000000000
      81    16489  0.0003032325  0.0001212930  0.0001212930   0.000121293
      82    16489  0.0003032325  0.0001212930  0.0001212930   0.000121293
      83    16486  0.0061264103  0.0046099721  0.0038820818   0.000000000
      84    16486  0.0061264103  0.0046099721  0.0038820818   0.000000000
      85    16494  0.0000000000  0.0000000000  0.0000000000   0.000000000
      86    16494  0.0000000000  0.0000000000  0.0000000000   0.000000000
      87    16474  0.0000000000  0.0000000000  0.0000000000   0.000000000
      88    16474  0.0000000000  0.0000000000  0.0000000000   0.000000000
      89    16486  0.0000000000  0.0000000000  0.0000000000   0.000000000
      90    16486  0.0000000000  0.0000000000  0.0000000000   0.000000000
      91    16515  0.0418407508  0.0238570996  0.0151983046   0.009264305
      92    16515  0.0418407508  0.0238570996  0.0151983046   0.009264305
      93     8726  0.0000000000  0.0000000000  0.0000000000   0.000000000
      94     8726  0.0000000000  0.0000000000  0.0000000000   0.000000000
      95     8744  0.0809698079  0.0231015554  0.0081198536   0.005718207
      96     8744  0.0809698079  0.0231015554  0.0081198536   0.005718207
      97     8749  0.0025145731  0.0000000000  0.0000000000   0.000000000
      98     8749  0.0025145731  0.0000000000  0.0000000000   0.000000000
      99     8716  0.0902937127  0.0320100964  0.0106700321   0.005736576
      100    8716  0.0902937127  0.0320100964  0.0106700321   0.005736576
      101    8758  0.0186115551  0.0082210550  0.0063941539   0.005709066
      102    8758  0.0186115551  0.0082210550  0.0063941539   0.005709066
      103    8725  0.0902005731  0.0319770774  0.0106590258   0.005730659
      104    8725  0.0902005731  0.0319770774  0.0106590258   0.005730659
      105    8743  0.0000000000  0.0000000000  0.0000000000   0.000000000
      106    8743  0.0000000000  0.0000000000  0.0000000000   0.000000000
      107    8742  0.0000000000  0.0000000000  0.0000000000   0.000000000
      108    8742  0.0000000000  0.0000000000  0.0000000000   0.000000000
      109   13384  0.0000000000  0.0000000000  0.0000000000   0.000000000
      110   13384  0.0000000000  0.0000000000  0.0000000000   0.000000000
      111   13830  0.0000000000  0.0000000000  0.0000000000   0.000000000
      112   13830  0.0000000000  0.0000000000  0.0000000000   0.000000000
      113   13807  0.0002172811  0.0000000000  0.0000000000   0.000000000
      114   13807  0.0002172811  0.0000000000  0.0000000000   0.000000000
      115    7564  0.0000000000  0.0000000000  0.0000000000   0.000000000
      116    7564  0.0000000000  0.0000000000  0.0000000000   0.000000000
      117    3753  0.0460964562  0.0210498268  0.0125233147   0.001865175
      118    3753  0.0460964562  0.0210498268  0.0125233147   0.001865175
      119    7386  0.0208502572  0.0142160845  0.0094773897   0.000947739
      120    7386  0.0208502572  0.0142160845  0.0094773897   0.000947739
      121   18567  0.0750255830  0.0525125222  0.0448106856   0.037701298
      122   18567  0.0750255830  0.0525125222  0.0448106856   0.037701298
      123   18659  0.1786805295  0.1223538239  0.1069189131   0.093734927
      124   18659  0.1786805295  0.1223538239  0.1069189131   0.093734927
      125   18863  0.0419339448  0.0229019774  0.0144727774   0.012140169
      126   18863  0.0419339448  0.0229019774  0.0144727774   0.012140169
      127   18731  0.0202338370  0.0168170413  0.0128663713   0.011691848
      128   18731  0.0202338370  0.0168170413  0.0128663713   0.011691848
      129   18946  0.0263380133  0.0163622928  0.0137232133   0.013564869
      130   18946  0.0263380133  0.0163622928  0.0137232133   0.013564869
      131   18953  0.0418931040  0.0312879228  0.0246926608   0.020207883
      132   18953  0.0418931040  0.0312879228  0.0246926608   0.020207883
      133   18498  0.0000000000  0.0000000000  0.0000000000   0.000000000
      134   18498  0.0000000000  0.0000000000  0.0000000000   0.000000000
      135   18498  0.0000000000  0.0000000000  0.0000000000   0.000000000
      136   18498  0.0000000000  0.0000000000  0.0000000000   0.000000000
      137   18498  0.0000000000  0.0000000000  0.0000000000   0.000000000
      138   18498  0.0000000000  0.0000000000  0.0000000000   0.000000000
      139   18497  0.0000000000  0.0000000000  0.0000000000   0.000000000
      140   18497  0.0000000000  0.0000000000  0.0000000000   0.000000000
      141     367  0.0000000000  0.0000000000  0.0000000000   0.000000000
      142     367  0.0000000000  0.0000000000  0.0000000000   0.000000000
      143     365  0.0000000000  0.0000000000  0.0000000000   0.000000000
      144     365  0.0000000000  0.0000000000  0.0000000000   0.000000000
      145     367  0.0000000000  0.0000000000  0.0000000000   0.000000000
      146     367  0.0000000000  0.0000000000  0.0000000000   0.000000000
      147     367  0.0000000000  0.0000000000  0.0000000000   0.000000000
      148     367  0.0000000000  0.0000000000  0.0000000000   0.000000000
      149     367  0.0000000000  0.0000000000  0.0000000000   0.000000000
      150     367  0.0000000000  0.0000000000  0.0000000000   0.000000000
      151     359  0.0000000000  0.0000000000  0.0000000000   0.000000000
      152     359  0.0000000000  0.0000000000  0.0000000000   0.000000000
      153     368  0.0000000000  0.0000000000  0.0000000000   0.000000000
      154     368  0.0000000000  0.0000000000  0.0000000000   0.000000000
          cov_6_percent cov_7_percent cov_8_percent cov_9_percent cov_10_percent
      1    0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      2    0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      3    0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      4    0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      5    0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      6    0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      7    0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      8    0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      9    0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      10   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      11   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      12   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      13   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      14   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      15   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      16   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      17   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      18   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      19   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      20   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      21   0.0161766442  0.0119258472  0.0058448459  0.0000000000    0.000000000
      22   0.0161766442  0.0119258472  0.0058448459  0.0000000000    0.000000000
      23   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      24   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      25   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      26   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      27   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      28   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      29   0.0190172455  0.0118710135  0.0039570045  0.0000000000    0.000000000
      30   0.0190172455  0.0118710135  0.0039570045  0.0000000000    0.000000000
      31   0.0051369863  0.0050188947  0.0029522910  0.0000000000    0.000000000
      32   0.0051369863  0.0050188947  0.0029522910  0.0000000000    0.000000000
      33   0.0191932912  0.0119293687  0.0058465718  0.0000000000    0.000000000
      34   0.0191932912  0.0119293687  0.0058465718  0.0000000000    0.000000000
      35   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      36   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      37   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      38   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      39   0.0190161224  0.0115159747  0.0033662080  0.0000000000    0.000000000
      40   0.0190161224  0.0115159747  0.0033662080  0.0000000000    0.000000000
      41   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      42   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      43   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      44   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      45   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      46   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      47   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      48   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      49   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      50   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      51   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      52   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      53   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      54   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      55   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      56   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      57   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      58   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      59   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      60   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      61   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      62   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      63   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      64   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      65   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      66   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      67   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      68   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      69   0.0246422893  0.0206677266  0.0196078431  0.0166931638    0.015103339
      70   0.0246422893  0.0206677266  0.0196078431  0.0166931638    0.015103339
      71   0.0017706347  0.0000000000  0.0000000000  0.0000000000    0.000000000
      72   0.0017706347  0.0000000000  0.0000000000  0.0000000000    0.000000000
      73   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      74   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      75   0.0038705776  0.0000000000  0.0000000000  0.0000000000    0.000000000
      76   0.0038705776  0.0000000000  0.0000000000  0.0000000000    0.000000000
      77   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      78   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      79   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      80   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      81   0.0001212930  0.0001212930  0.0001212930  0.0000000000    0.000000000
      82   0.0001212930  0.0001212930  0.0001212930  0.0000000000    0.000000000
      83   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      84   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      85   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      86   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      87   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      88   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      89   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      90   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      91   0.0072055707  0.0052679382  0.0036330609  0.0011504693    0.000000000
      92   0.0072055707  0.0052679382  0.0036330609  0.0011504693    0.000000000
      93   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      94   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      95   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      96   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      97   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      98   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      99   0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      100  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      101  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      102  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      103  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      104  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      105  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      106  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      107  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      108  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      109  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      110  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      111  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      112  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      113  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      114  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      115  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      116  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      117  0.0013322675  0.0010658140  0.0005329070  0.0005329070    0.000000000
      118  0.0013322675  0.0010658140  0.0005329070  0.0005329070    0.000000000
      119  0.0006769564  0.0005415651  0.0002707826  0.0002707826    0.000000000
      120  0.0006769564  0.0005415651  0.0002707826  0.0002707826    0.000000000
      121  0.0371088490  0.0366779771  0.0363548231  0.0352776431    0.035008348
      122  0.0371088490  0.0366779771  0.0363548231  0.0352776431    0.035008348
      123  0.0877860550  0.0860174715  0.0796934455  0.0744948818    0.073637387
      124  0.0877860550  0.0860174715  0.0796934455  0.0744948818    0.073637387
      125  0.0104437258  0.0092774214  0.0091713937  0.0090123522    0.008694269
      126  0.0104437258  0.0092774214  0.0091713937  0.0090123522    0.008694269
      127  0.0100902248  0.0099834499  0.0099300625  0.0098766750    0.009876675
      128  0.0100902248  0.0099834499  0.0099300625  0.0098766750    0.009876675
      129  0.0135120870  0.0135120870  0.0135120870  0.0134593054    0.013459305
      130  0.0135120870  0.0135120870  0.0135120870  0.0134593054    0.013459305
      131  0.0180973988  0.0147733868  0.0138764312  0.0135070965    0.013032238
      132  0.0180973988  0.0147733868  0.0138764312  0.0135070965    0.013032238
      133  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      134  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      135  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      136  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      137  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      138  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      139  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      140  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      141  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      142  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      143  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      144  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      145  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      146  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      147  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      148  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      149  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      150  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      151  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      152  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      153  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000
      154  0.0000000000  0.0000000000  0.0000000000  0.0000000000    0.000000000

# run_paired

    Code
      convert_rle_to_df(rles, unreliable_regions = prepared_unreliable_regions())
    Output
           seg_id   iso_id                        virus_name sample_id A_percent
      1  wagchhes      6x9             Tomato ringspot virus  paired_1 0.2421632
      2  wagchhes zijzfedq             Tomato ringspot virus  paired_1 0.2421632
      3  voimcy9x      6x9             Tomato ringspot virus  paired_1 0.2338275
      4  voimcy9x zijzfedq             Tomato ringspot virus  paired_1 0.2338275
      5  p20hs8ax      l9a             Tomato ringspot virus  paired_1 0.2367461
      6  p20hs8ax g7baryfl             Tomato ringspot virus  paired_1 0.2367461
      7  2u83j3ub      l9a             Tomato ringspot virus  paired_1 0.2247785
      8  2u83j3ub g7baryfl             Tomato ringspot virus  paired_1 0.2247785
      9  8ye5dqvy cw8ncw9v             Tomato ringspot virus  paired_1 0.2256911
      10 8ye5dqvy cw8ncw9v             Tomato ringspot virus  paired_1 0.2256911
      11 i6xgwyiv cw8ncw9v             Tomato ringspot virus  paired_1 0.2386170
      12 i6xgwyiv cw8ncw9v             Tomato ringspot virus  paired_1 0.2386170
      13 oespandq      5jz             Tomato ringspot virus  paired_1 0.2333106
      14 oespandq 3f9nhjom             Tomato ringspot virus  paired_1 0.2333106
      15 4udmm239      5jz             Tomato ringspot virus  paired_1 0.2368133
      16 4udmm239 3f9nhjom             Tomato ringspot virus  paired_1 0.2368133
      17 3pkjlgdf      94r             Tomato ringspot virus  paired_1 0.2354733
      18 3pkjlgdf 1ofyb1d8             Tomato ringspot virus  paired_1 0.2354733
      19 7jjo5z0x      94r             Tomato ringspot virus  paired_1 0.2228642
      20 7jjo5z0x 1ofyb1d8             Tomato ringspot virus  paired_1 0.2228642
      21 4c559wtw szgbqwr9 Phaseolus vulgaris endornavirus 1  paired_1 0.3441904
      22 4c559wtw szgbqwr9 Phaseolus vulgaris endornavirus 1  paired_1 0.3441904
      23 937ob21p gv9iccm2            Citrus excortis viroid  paired_1 0.2335025
      24 937ob21p gv9iccm2            Citrus excortis viroid  paired_1 0.2335025
         C_percent T_percent GC_percent      avg_cov max_cov seg_len cov_2_percent
      1  0.2053123 0.3027040  0.4551328 4.785834e-04       4    8358  0.0001196458
      2  0.2053123 0.3027040  0.4551328 4.785834e-04       4    8358  0.0001196458
      3  0.2202156 0.3021563  0.4640162 0.000000e+00       0    7420  0.0000000000
      4  0.2202156 0.3021563  0.4640162 0.000000e+00       0    7420  0.0000000000
      5  0.2125486 0.3003405  0.4629134 2.164397e-02       2    8224  0.0000000000
      6  0.2125486 0.3003405  0.4629134 2.164397e-02       2    8224  0.0000000000
      7  0.2317863 0.2953854  0.4798360 1.129182e-01       4    7563  0.0247256380
      8  0.2317863 0.2953854  0.4798360 1.129182e-01       4    7563  0.0247256380
      9  0.2329803 0.2923944  0.4819145 1.174529e-01       4    7271  0.0257186082
      10 0.2329803 0.2923944  0.4819145 1.174529e-01       4    7271  0.0257186082
      11 0.2147553 0.2981495  0.4629900 1.039688e-01       4    8214  0.0227660093
      12 0.2147553 0.2981495  0.4629900 1.039688e-01       4    8214  0.0227660093
      13 0.2218430 0.2875085  0.4791809 3.075768e-01       4    7325  0.0012286689
      14 0.2218430 0.2875085  0.4791809 3.075768e-01       4    7325  0.0012286689
      15 0.2119625 0.3012547  0.4619320 2.168352e-02       2    8209  0.0000000000
      16 0.2119625 0.3012547  0.4619320 2.168352e-02       2    8209  0.0000000000
      17 0.2172006 0.2973566  0.4671702 2.192715e-02       4    8209  0.0054817883
      18 0.2172006 0.2973566  0.4671702 2.192715e-02       4    8209  0.0054817883
      19 0.2308433 0.2961893  0.4809465 2.476269e-02       4    7269  0.0061906727
      20 0.2308433 0.2961893  0.4809465 2.476269e-02       4    7269  0.0061906727
      21 0.1747196 0.2826431  0.3731665 2.632179e+03    6841   13908  0.8712251941
      22 0.1747196 0.2826431  0.3731665 2.632179e+03    6841   13908  0.8712251941
      23 0.2538071 0.2131980  0.5532995 0.000000e+00       0     394  0.0000000000
      24 0.2538071 0.2131980  0.5532995 0.000000e+00       0     394  0.0000000000
         cov_3_percent cov_4_percent cov_5_percent cov_6_percent cov_7_percent
      1   0.0001196458     0.0000000     0.0000000     0.0000000     0.0000000
      2   0.0001196458     0.0000000     0.0000000     0.0000000     0.0000000
      3   0.0000000000     0.0000000     0.0000000     0.0000000     0.0000000
      4   0.0000000000     0.0000000     0.0000000     0.0000000     0.0000000
      5   0.0000000000     0.0000000     0.0000000     0.0000000     0.0000000
      6   0.0000000000     0.0000000     0.0000000     0.0000000     0.0000000
      7   0.0247256380     0.0000000     0.0000000     0.0000000     0.0000000
      8   0.0247256380     0.0000000     0.0000000     0.0000000     0.0000000
      9   0.0257186082     0.0000000     0.0000000     0.0000000     0.0000000
      10  0.0257186082     0.0000000     0.0000000     0.0000000     0.0000000
      11  0.0227660093     0.0000000     0.0000000     0.0000000     0.0000000
      12  0.0227660093     0.0000000     0.0000000     0.0000000     0.0000000
      13  0.0012286689     0.0000000     0.0000000     0.0000000     0.0000000
      14  0.0012286689     0.0000000     0.0000000     0.0000000     0.0000000
      15  0.0000000000     0.0000000     0.0000000     0.0000000     0.0000000
      16  0.0000000000     0.0000000     0.0000000     0.0000000     0.0000000
      17  0.0054817883     0.0000000     0.0000000     0.0000000     0.0000000
      18  0.0054817883     0.0000000     0.0000000     0.0000000     0.0000000
      19  0.0061906727     0.0000000     0.0000000     0.0000000     0.0000000
      20  0.0061906727     0.0000000     0.0000000     0.0000000     0.0000000
      21  0.8711532931     0.8710814     0.8710814     0.8710814     0.8710814
      22  0.8711532931     0.8710814     0.8710814     0.8710814     0.8710814
      23  0.0000000000     0.0000000     0.0000000     0.0000000     0.0000000
      24  0.0000000000     0.0000000     0.0000000     0.0000000     0.0000000
         cov_8_percent cov_9_percent cov_10_percent
      1      0.0000000     0.0000000      0.0000000
      2      0.0000000     0.0000000      0.0000000
      3      0.0000000     0.0000000      0.0000000
      4      0.0000000     0.0000000      0.0000000
      5      0.0000000     0.0000000      0.0000000
      6      0.0000000     0.0000000      0.0000000
      7      0.0000000     0.0000000      0.0000000
      8      0.0000000     0.0000000      0.0000000
      9      0.0000000     0.0000000      0.0000000
      10     0.0000000     0.0000000      0.0000000
      11     0.0000000     0.0000000      0.0000000
      12     0.0000000     0.0000000      0.0000000
      13     0.0000000     0.0000000      0.0000000
      14     0.0000000     0.0000000      0.0000000
      15     0.0000000     0.0000000      0.0000000
      16     0.0000000     0.0000000      0.0000000
      17     0.0000000     0.0000000      0.0000000
      18     0.0000000     0.0000000      0.0000000
      19     0.0000000     0.0000000      0.0000000
      20     0.0000000     0.0000000      0.0000000
      21     0.8710095     0.8710095      0.8709376
      22     0.8710095     0.8710095      0.8709376
      23     0.0000000     0.0000000      0.0000000
      24     0.0000000     0.0000000      0.0000000

