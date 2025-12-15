# run_with_defaults

    Code
      convert_rle_to_df(rles())
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

# run_with_unreliable_regions

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

# unreliable_regions_has_effect

    Code
      waldo::compare(unmasked_rles, masked_rles, max_diffs = Inf, x_arg = "disabled",
        y_arg = "enabled")
    Output
      disabled vs enabled
                           avg_cov
      - disabled[1, ]  0.005330941
      + enabled[1, ]   0.001477885
      - disabled[2, ]  0.005330941
      + enabled[2, ]   0.001477885
        disabled[3, ]  0.005337420
        disabled[4, ]  0.010825875
        disabled[5, ]  0.010825875
        disabled[6, ]  0.005439759
        disabled[7, ]  0.005439759
      - disabled[8, ]  0.005392131
      + enabled[8, ]   0.001601623
      - disabled[9, ]  0.005392131
      + enabled[9, ]   0.001601623
        disabled[10, ] 0.005354397
        disabled[11, ] 0.005354397
      
           disabled$avg_cov | enabled$avg_cov     
       [1] 0.0053           - 0.0015          [1] 
       [2] 0.0053           - 0.0015          [2] 
       [3] 0.0053           | 0.0053          [3] 
       [4] 0.0108           | 0.0108          [4] 
       [5] 0.0108           | 0.0108          [5] 
       [6] 0.0054           | 0.0054          [6] 
       [7] 0.0054           | 0.0054          [7] 
       [8] 0.0054           - 0.0016          [8] 
       [9] 0.0054           - 0.0016          [9] 
      [10] 0.0054           | 0.0054          [10]
      [11] 0.0054           | 0.0054          [11]

# run_paired

    Code
      waldo::compare(convert_rle_to_df(rles_single, unreliable_regions = prepared_unreliable_regions()),
      convert_rle_to_df(rles_paired, unreliable_regions = prepared_unreliable_regions()),
      max_diffs = Inf, x_arg = "single", y_arg = "paired")
    Output
      single vs paired
                          avg_cov max_cov cov_3_percent cov_4_percent cov_5_percent cov_6_percent cov_7_percent cov_8_percent cov_9_percent cov_10_percent
        single[2, ]  4.785834e-04       4  0.0001196458     0.0000000     0.0000000     0.0000000     0.0000000     0.0000000     0.0000000      0.0000000
        single[3, ]  0.000000e+00       0  0.0000000000     0.0000000     0.0000000     0.0000000     0.0000000     0.0000000     0.0000000      0.0000000
        single[4, ]  0.000000e+00       0  0.0000000000     0.0000000     0.0000000     0.0000000     0.0000000     0.0000000     0.0000000      0.0000000
      - single[5, ]  4.267996e-02       2  0.0000000000     0.0000000     0.0000000     0.0000000     0.0000000     0.0000000     0.0000000      0.0000000
      + paired[5, ]  2.164397e-02       2  0.0000000000     0.0000000     0.0000000     0.0000000     0.0000000     0.0000000     0.0000000      0.0000000
      - single[6, ]  4.267996e-02       2  0.0000000000     0.0000000     0.0000000     0.0000000     0.0000000     0.0000000     0.0000000      0.0000000
      + paired[6, ]  2.164397e-02       2  0.0000000000     0.0000000     0.0000000     0.0000000     0.0000000     0.0000000     0.0000000      0.0000000
        single[7, ]  1.129182e-01       4  0.0247256380     0.0000000     0.0000000     0.0000000     0.0000000     0.0000000     0.0000000      0.0000000
        single[8, ]  1.129182e-01       4  0.0247256380     0.0000000     0.0000000     0.0000000     0.0000000     0.0000000     0.0000000      0.0000000
        single[9, ]  1.174529e-01       4  0.0257186082     0.0000000     0.0000000     0.0000000     0.0000000     0.0000000     0.0000000      0.0000000
      
      single vs paired
                          avg_cov max_cov cov_3_percent cov_4_percent cov_5_percent cov_6_percent cov_7_percent cov_8_percent cov_9_percent cov_10_percent
        single[18, ] 2.192715e-02       4  0.0054817883     0.0000000     0.0000000     0.0000000     0.0000000     0.0000000     0.0000000      0.0000000
        single[19, ] 2.476269e-02       4  0.0061906727     0.0000000     0.0000000     0.0000000     0.0000000     0.0000000     0.0000000      0.0000000
        single[20, ] 2.476269e-02       4  0.0061906727     0.0000000     0.0000000     0.0000000     0.0000000     0.0000000     0.0000000      0.0000000
      - single[21, ] 2.730810e+03    7101  0.8712251941     0.8712252     0.8712252     0.8712252     0.8712252     0.8712252     0.8712252      0.8712252
      + paired[21, ] 2.632179e+03    6841  0.8711532931     0.8710814     0.8710814     0.8710814     0.8710814     0.8710095     0.8710095      0.8709376
      - single[22, ] 2.730810e+03    7101  0.8712251941     0.8712252     0.8712252     0.8712252     0.8712252     0.8712252     0.8712252      0.8712252
      + paired[22, ] 2.632179e+03    6841  0.8711532931     0.8710814     0.8710814     0.8710814     0.8710814     0.8710095     0.8710095      0.8709376
        single[23, ] 0.000000e+00       0  0.0000000000     0.0000000     0.0000000     0.0000000     0.0000000     0.0000000     0.0000000      0.0000000
        single[24, ] 0.000000e+00       0  0.0000000000     0.0000000     0.0000000     0.0000000     0.0000000     0.0000000     0.0000000      0.0000000
      
      `single$avg_cov[2:9]`: 0.000 0.000 0.000 0.043 0.043 0.113 0.113 0.117
      `paired$avg_cov[2:9]`: 0.000 0.000 0.000 0.022 0.022 0.113 0.113 0.117
      
      `single$avg_cov[18:24]`: 0.022 0.025 0.025 2730.810 2730.810 0.000 0.000
      `paired$avg_cov[18:24]`: 0.022 0.025 0.025 2632.179 2632.179 0.000 0.000
      
      `single$max_cov[18:24]`: 4.0 4.0 4.0 7101.0 7101.0 0.0 0.0
      `paired$max_cov[18:24]`: 4.0 4.0 4.0 6841.0 6841.0 0.0 0.0
      
           single$cov_3_percent | paired$cov_3_percent     
      [18] 0.005482             | 0.005482             [18]
      [19] 0.006191             | 0.006191             [19]
      [20] 0.006191             | 0.006191             [20]
      [21] 0.871225             - 0.871153             [21]
      [22] 0.871225             - 0.871153             [22]
      [23] 0.000000             | 0.000000             [23]
      [24] 0.000000             | 0.000000             [24]
      
           single$cov_4_percent | paired$cov_4_percent     
      [18] 0.00000              | 0.00000              [18]
      [19] 0.00000              | 0.00000              [19]
      [20] 0.00000              | 0.00000              [20]
      [21] 0.87123              - 0.87108              [21]
      [22] 0.87123              - 0.87108              [22]
      [23] 0.00000              | 0.00000              [23]
      [24] 0.00000              | 0.00000              [24]
      
           single$cov_5_percent | paired$cov_5_percent     
      [18] 0.00000              | 0.00000              [18]
      [19] 0.00000              | 0.00000              [19]
      [20] 0.00000              | 0.00000              [20]
      [21] 0.87123              - 0.87108              [21]
      [22] 0.87123              - 0.87108              [22]
      [23] 0.00000              | 0.00000              [23]
      [24] 0.00000              | 0.00000              [24]
      
           single$cov_6_percent | paired$cov_6_percent     
      [18] 0.00000              | 0.00000              [18]
      [19] 0.00000              | 0.00000              [19]
      [20] 0.00000              | 0.00000              [20]
      [21] 0.87123              - 0.87108              [21]
      [22] 0.87123              - 0.87108              [22]
      [23] 0.00000              | 0.00000              [23]
      [24] 0.00000              | 0.00000              [24]
      
           single$cov_7_percent | paired$cov_7_percent     
      [18] 0.00000              | 0.00000              [18]
      [19] 0.00000              | 0.00000              [19]
      [20] 0.00000              | 0.00000              [20]
      [21] 0.87123              - 0.87108              [21]
      [22] 0.87123              - 0.87108              [22]
      [23] 0.00000              | 0.00000              [23]
      [24] 0.00000              | 0.00000              [24]
      
           single$cov_8_percent | paired$cov_8_percent     
      [18] 0.00000              | 0.00000              [18]
      [19] 0.00000              | 0.00000              [19]
      [20] 0.00000              | 0.00000              [20]
      [21] 0.87123              - 0.87101              [21]
      [22] 0.87123              - 0.87101              [22]
      [23] 0.00000              | 0.00000              [23]
      [24] 0.00000              | 0.00000              [24]
      
           single$cov_9_percent | paired$cov_9_percent     
      [18] 0.00000              | 0.00000              [18]
      [19] 0.00000              | 0.00000              [19]
      [20] 0.00000              | 0.00000              [20]
      [21] 0.87123              - 0.87101              [21]
      [22] 0.87123              - 0.87101              [22]
      [23] 0.00000              | 0.00000              [23]
      [24] 0.00000              | 0.00000              [24]
      
           single$cov_10_percent | paired$cov_10_percent     
      [18] 0.00000               | 0.00000               [18]
      [19] 0.00000               | 0.00000               [19]
      [20] 0.00000               | 0.00000               [20]
      [21] 0.87123               - 0.87094               [21]
      [22] 0.87123               - 0.87094               [22]
      [23] 0.00000               | 0.00000               [23]
      [24] 0.00000               | 0.00000               [24]

