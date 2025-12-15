# Baseline Model

## Total Text (Baseline Dataset) (300 samples)
```
[2025/12/10 05:15:59] ppocr INFO: metric eval ***************
[2025/12/10 05:15:59] ppocr INFO: total_num_gt:2543
[2025/12/10 05:15:59] ppocr INFO: total_num_det:2275
[2025/12/10 05:15:59] ppocr INFO: global_accumulative_recall:1886.3999999999958
[2025/12/10 05:15:59] ppocr INFO: hit_str_count:1292
[2025/12/10 05:15:59] ppocr INFO: recall:0.7418010224144694
[2025/12/10 05:15:59] ppocr INFO: precision:0.8344615384615373
[2025/12/10 05:15:59] ppocr INFO: f_score:0.7854077585301629
[2025/12/10 05:15:59] ppocr INFO: seqerr:0.31509754028837844
[2025/12/10 05:15:59] ppocr INFO: recall_e2e:0.5080613448682658
[2025/12/10 05:15:59] ppocr INFO: precision_e2e:0.5679120879120879
[2025/12/10 05:15:59] ppocr INFO: f_score_e2e:0.5363221253632213
[2025/12/10 05:15:59] ppocr INFO: fps:15.143809365895997
```

Blur Dataset (11)

### No enchancement
```
[2025/12/10 05:16:06] ppocr INFO: metric eval ***************
[2025/12/10 05:16:06] ppocr INFO: total_num_gt:124
[2025/12/10 05:16:06] ppocr INFO: total_num_det:111
[2025/12/10 05:16:06] ppocr INFO: global_accumulative_recall:63.399999999999984
[2025/12/10 05:16:06] ppocr INFO: hit_str_count:41
[2025/12/10 05:16:06] ppocr INFO: recall:0.511290322580645
[2025/12/10 05:16:06] ppocr INFO: precision:0.6864864864864865
[2025/12/10 05:16:06] ppocr INFO: f_score:0.5860756268879426
[2025/12/10 05:16:06] ppocr INFO: seqerr:0.3533123028391165
[2025/12/10 05:16:06] ppocr INFO: recall_e2e:0.33064516129032256
[2025/12/10 05:16:06] ppocr INFO: precision_e2e:0.36936936936936937
[2025/12/10 05:16:06] ppocr INFO: f_score_e2e:0.34893617021276596
[2025/12/10 05:16:06] ppocr INFO: fps:10.293962424204832
```


### Sharpening 1
```
[2025/12/10 05:16:14] ppocr INFO: metric eval ***************
[2025/12/10 05:16:14] ppocr INFO: total_num_gt:124
[2025/12/10 05:16:14] ppocr INFO: total_num_det:119
[2025/12/10 05:16:14] ppocr INFO: global_accumulative_recall:64.6
[2025/12/10 05:16:14] ppocr INFO: hit_str_count:36
[2025/12/10 05:16:14] ppocr INFO: recall:0.5209677419354838
[2025/12/10 05:16:14] ppocr INFO: precision:0.6369747899159663
[2025/12/10 05:16:14] ppocr INFO: f_score:0.5731602542343122
[2025/12/10 05:16:14] ppocr INFO: seqerr:0.44272445820433437
[2025/12/10 05:16:14] ppocr INFO: recall_e2e:0.2903225806451613
[2025/12/10 05:16:14] ppocr INFO: precision_e2e:0.3025210084033613
[2025/12/10 05:16:14] ppocr INFO: f_score_e2e:0.2962962962962963
[2025/12/10 05:16:14] ppocr INFO: fps:10.63425774185801
```

### Sharpening 2
```
[2025/12/10 05:16:22] ppocr INFO: metric eval ***************
[2025/12/10 05:16:22] ppocr INFO: total_num_gt:124
[2025/12/10 05:16:22] ppocr INFO: total_num_det:116
[2025/12/10 05:16:22] ppocr INFO: global_accumulative_recall:64.6
[2025/12/10 05:16:22] ppocr INFO: hit_str_count:43
[2025/12/10 05:16:22] ppocr INFO: recall:0.5209677419354838
[2025/12/10 05:16:22] ppocr INFO: precision:0.646551724137931
[2025/12/10 05:16:22] ppocr INFO: f_score:0.577005525914634
[2025/12/10 05:16:22] ppocr INFO: seqerr:0.33436532507739936
[2025/12/10 05:16:22] ppocr INFO: recall_e2e:0.3467741935483871
[2025/12/10 05:16:22] ppocr INFO: precision_e2e:0.3706896551724138
[2025/12/10 05:16:22] ppocr INFO: f_score_e2e:0.3583333333333334
[2025/12/10 05:16:22] ppocr INFO: fps:11.096012973510652
```

### Sharpening 3
```
[2025/12/10 05:16:30] ppocr INFO: metric eval ***************
[2025/12/10 05:16:30] ppocr INFO: total_num_gt:124
[2025/12/10 05:16:30] ppocr INFO: total_num_det:117
[2025/12/10 05:16:30] ppocr INFO: global_accumulative_recall:64.19999999999999
[2025/12/10 05:16:30] ppocr INFO: hit_str_count:35
[2025/12/10 05:16:30] ppocr INFO: recall:0.5177419354838709
[2025/12/10 05:16:30] ppocr INFO: precision:0.6581196581196581
[2025/12/10 05:16:30] ppocr INFO: f_score:0.5795514496406673
[2025/12/10 05:16:30] ppocr INFO: seqerr:0.454828660436137
[2025/12/10 05:16:30] ppocr INFO: recall_e2e:0.28225806451612906
[2025/12/10 05:16:30] ppocr INFO: precision_e2e:0.29914529914529914
[2025/12/10 05:16:30] ppocr INFO: f_score_e2e:0.29045643153526973
[2025/12/10 05:16:30] ppocr INFO: fps:10.702368644290917
```

### Sharpening 4
```
[2025/12/10 05:16:38] ppocr INFO: metric eval ***************
[2025/12/10 05:16:38] ppocr INFO: total_num_gt:124
[2025/12/10 05:16:38] ppocr INFO: total_num_det:104
[2025/12/10 05:16:38] ppocr INFO: global_accumulative_recall:63.79999999999999
[2025/12/10 05:16:38] ppocr INFO: hit_str_count:38
[2025/12/10 05:16:38] ppocr INFO: recall:0.514516129032258
[2025/12/10 05:16:38] ppocr INFO: precision:0.7211538461538461
[2025/12/10 05:16:38] ppocr INFO: f_score:0.6005572568904062
[2025/12/10 05:16:38] ppocr INFO: seqerr:0.4043887147335422
[2025/12/10 05:16:38] ppocr INFO: recall_e2e:0.3064516129032258
[2025/12/10 05:16:38] ppocr INFO: precision_e2e:0.36538461538461536
[2025/12/10 05:16:38] ppocr INFO: f_score_e2e:0.33333333333333337
[2025/12/10 05:16:38] ppocr INFO: fps:10.871100999143268
```

### Sharpening 5
```
[2025/12/10 05:16:45] ppocr INFO: metric eval ***************
[2025/12/10 05:16:45] ppocr INFO: total_num_gt:124
[2025/12/10 05:16:45] ppocr INFO: total_num_det:107
[2025/12/10 05:16:45] ppocr INFO: global_accumulative_recall:64.8
[2025/12/10 05:16:45] ppocr INFO: hit_str_count:37
[2025/12/10 05:16:45] ppocr INFO: recall:0.5225806451612903
[2025/12/10 05:16:45] ppocr INFO: precision:0.7102803738317757
[2025/12/10 05:16:45] ppocr INFO: f_score:0.6021421235389054
[2025/12/10 05:16:45] ppocr INFO: seqerr:0.42901234567901236
[2025/12/10 05:16:45] ppocr INFO: recall_e2e:0.29838709677419356
[2025/12/10 05:16:45] ppocr INFO: precision_e2e:0.34579439252336447
[2025/12/10 05:16:45] ppocr INFO: f_score_e2e:0.3203463203463203
[2025/12/10 05:16:45] ppocr INFO: fps:10.26528272425227
```


### Blind deconvolution 1
```
[2025/12/10 05:16:53] ppocr INFO: metric eval ***************
[2025/12/10 05:16:53] ppocr INFO: total_num_gt:124
[2025/12/10 05:16:53] ppocr INFO: total_num_det:101
[2025/12/10 05:16:53] ppocr INFO: global_accumulative_recall:39.0
[2025/12/10 05:16:53] ppocr INFO: hit_str_count:21
[2025/12/10 05:16:53] ppocr INFO: recall:0.31451612903225806
[2025/12/10 05:16:53] ppocr INFO: precision:0.44950495049504957
[2025/12/10 05:16:53] ppocr INFO: f_score:0.3700854879501703
[2025/12/10 05:16:53] ppocr INFO: seqerr:0.46153846153846156
[2025/12/10 05:16:53] ppocr INFO: recall_e2e:0.1693548387096774
[2025/12/10 05:16:53] ppocr INFO: precision_e2e:0.2079207920792079
[2025/12/10 05:16:53] ppocr INFO: f_score_e2e:0.18666666666666668
[2025/12/10 05:16:53] ppocr INFO: fps:10.255058475424674
```

### Blind deconvolution 2
```
[2025/12/10 05:17:01] ppocr INFO: metric eval ***************
[2025/12/10 05:17:01] ppocr INFO: total_num_gt:124
[2025/12/10 05:17:01] ppocr INFO: total_num_det:112
[2025/12/10 05:17:01] ppocr INFO: global_accumulative_recall:45.0
[2025/12/10 05:17:01] ppocr INFO: hit_str_count:25
[2025/12/10 05:17:01] ppocr INFO: recall:0.3629032258064516
[2025/12/10 05:17:01] ppocr INFO: precision:0.48035714285714287
[2025/12/10 05:17:01] ppocr INFO: f_score:0.4134503722931895
[2025/12/10 05:17:01] ppocr INFO: seqerr:0.4444444444444444
[2025/12/10 05:17:01] ppocr INFO: recall_e2e:0.20161290322580644
[2025/12/10 05:17:01] ppocr INFO: precision_e2e:0.22321428571428573
[2025/12/10 05:17:01] ppocr INFO: f_score_e2e:0.21186440677966098
[2025/12/10 05:17:01] ppocr INFO: fps:10.744522283708047
```

### Blind deconvolution 3
```
[2025/12/10 05:17:09] ppocr INFO: metric eval ***************
[2025/12/10 05:17:09] ppocr INFO: total_num_gt:124
[2025/12/10 05:17:09] ppocr INFO: total_num_det:118
[2025/12/10 05:17:09] ppocr INFO: global_accumulative_recall:51.19999999999999
[2025/12/10 05:17:09] ppocr INFO: hit_str_count:32
[2025/12/10 05:17:09] ppocr INFO: recall:0.4129032258064515
[2025/12/10 05:17:09] ppocr INFO: precision:0.535593220338983
[2025/12/10 05:17:09] ppocr INFO: f_score:0.4663131196679731
[2025/12/10 05:17:09] ppocr INFO: seqerr:0.3749999999999999
[2025/12/10 05:17:09] ppocr INFO: recall_e2e:0.25806451612903225
[2025/12/10 05:17:09] ppocr INFO: precision_e2e:0.2711864406779661
[2025/12/10 05:17:09] ppocr INFO: f_score_e2e:0.2644628099173554
[2025/12/10 05:17:09] ppocr INFO: fps:10.699856840011698
```


## Low Contrast (18)

### No enchancement
```
[2025/12/10 05:17:17] ppocr INFO: metric eval ***************
[2025/12/10 05:17:17] ppocr INFO: total_num_gt:142
[2025/12/10 05:17:17] ppocr INFO: total_num_det:135
[2025/12/10 05:17:17] ppocr INFO: global_accumulative_recall:70.99999999999996
[2025/12/10 05:17:17] ppocr INFO: hit_str_count:36
[2025/12/10 05:17:17] ppocr INFO: recall:0.4999999999999997
[2025/12/10 05:17:17] ppocr INFO: precision:0.6918518518518519
[2025/12/10 05:17:17] ppocr INFO: f_score:0.5804847731510253
[2025/12/10 05:17:17] ppocr INFO: seqerr:0.4929577464788729
[2025/12/10 05:17:17] ppocr INFO: recall_e2e:0.2535211267605634
[2025/12/10 05:17:17] ppocr INFO: precision_e2e:0.26666666666666666
[2025/12/10 05:17:17] ppocr INFO: f_score_e2e:0.259927797833935
[2025/12/10 05:17:17] ppocr INFO: fps:12.292551685397832
```


### CLAHE 1
```
[2025/12/10 05:17:26] ppocr INFO: metric eval ***************
[2025/12/10 05:17:26] ppocr INFO: total_num_gt:142
[2025/12/10 05:17:26] ppocr INFO: total_num_det:130
[2025/12/10 05:17:26] ppocr INFO: global_accumulative_recall:70.99999999999999
[2025/12/10 05:17:26] ppocr INFO: hit_str_count:38
[2025/12/10 05:17:26] ppocr INFO: recall:0.4999999999999999
[2025/12/10 05:17:26] ppocr INFO: precision:0.7123076923076924
[2025/12/10 05:17:26] ppocr INFO: f_score:0.5875634517766497
[2025/12/10 05:17:26] ppocr INFO: seqerr:0.46478873239436613
[2025/12/10 05:17:26] ppocr INFO: recall_e2e:0.2676056338028169
[2025/12/10 05:17:26] ppocr INFO: precision_e2e:0.2923076923076923
[2025/12/10 05:17:26] ppocr INFO: f_score_e2e:0.27941176470588236
[2025/12/10 05:17:26] ppocr INFO: fps:12.307083591369626
```

### CLAHE 2
```
[2025/12/10 05:17:34] ppocr INFO: metric eval ***************
[2025/12/10 05:17:34] ppocr INFO: total_num_gt:142
[2025/12/10 05:17:34] ppocr INFO: total_num_det:133
[2025/12/10 05:17:34] ppocr INFO: global_accumulative_recall:70.99999999999999
[2025/12/10 05:17:34] ppocr INFO: hit_str_count:38
[2025/12/10 05:17:34] ppocr INFO: recall:0.4999999999999999
[2025/12/10 05:17:34] ppocr INFO: precision:0.6902255639097744
[2025/12/10 05:17:34] ppocr INFO: f_score:0.5799115603284901
[2025/12/10 05:17:34] ppocr INFO: seqerr:0.46478873239436613
[2025/12/10 05:17:34] ppocr INFO: recall_e2e:0.2676056338028169
[2025/12/10 05:17:34] ppocr INFO: precision_e2e:0.2857142857142857
[2025/12/10 05:17:34] ppocr INFO: f_score_e2e:0.2763636363636363
[2025/12/10 05:17:34] ppocr INFO: fps:12.157064223492647
```


### MSRCP 1
```
[2025/12/10 05:17:42] ppocr INFO: metric eval ***************
[2025/12/10 05:17:42] ppocr INFO: total_num_gt:142
[2025/12/10 05:17:42] ppocr INFO: total_num_det:136
[2025/12/10 05:17:42] ppocr INFO: global_accumulative_recall:71.19999999999996
[2025/12/10 05:17:42] ppocr INFO: hit_str_count:37
[2025/12/10 05:17:42] ppocr INFO: recall:0.501408450704225
[2025/12/10 05:17:42] ppocr INFO: precision:0.6764705882352942
[2025/12/10 05:17:42] ppocr INFO: f_score:0.5759302243792641
[2025/12/10 05:17:42] ppocr INFO: seqerr:0.48033707865168507
[2025/12/10 05:17:42] ppocr INFO: recall_e2e:0.2605633802816901
[2025/12/10 05:17:42] ppocr INFO: precision_e2e:0.27205882352941174
[2025/12/10 05:17:42] ppocr INFO: f_score_e2e:0.2661870503597122
[2025/12/10 05:17:42] ppocr INFO: fps:11.605199118836145
```

### MSRCP 2
```
[2025/12/10 05:17:50] ppocr INFO: metric eval ***************
[2025/12/10 05:17:50] ppocr INFO: total_num_gt:142
[2025/12/10 05:17:50] ppocr INFO: total_num_det:138
[2025/12/10 05:17:50] ppocr INFO: global_accumulative_recall:70.99999999999996
[2025/12/10 05:17:50] ppocr INFO: hit_str_count:36
[2025/12/10 05:17:50] ppocr INFO: recall:0.4999999999999997
[2025/12/10 05:17:50] ppocr INFO: precision:0.6710144927536231
[2025/12/10 05:17:50] ppocr INFO: f_score:0.5730198019801979
[2025/12/10 05:17:50] ppocr INFO: seqerr:0.4929577464788729
[2025/12/10 05:17:50] ppocr INFO: recall_e2e:0.2535211267605634
[2025/12/10 05:17:50] ppocr INFO: precision_e2e:0.2608695652173913
[2025/12/10 05:17:50] ppocr INFO: f_score_e2e:0.2571428571428571
[2025/12/10 05:17:50] ppocr INFO: fps:12.013937907662077
```

### MSRCP 3
```
[2025/12/10 05:17:58] ppocr INFO: metric eval ***************
[2025/12/10 05:17:58] ppocr INFO: total_num_gt:142
[2025/12/10 05:17:58] ppocr INFO: total_num_det:138
[2025/12/10 05:17:58] ppocr INFO: global_accumulative_recall:71.99999999999996
[2025/12/10 05:17:58] ppocr INFO: hit_str_count:37
[2025/12/10 05:17:58] ppocr INFO: recall:0.5070422535211264
[2025/12/10 05:17:58] ppocr INFO: precision:0.6840579710144928
[2025/12/10 05:17:58] ppocr INFO: f_score:0.5823964902659718
[2025/12/10 05:17:58] ppocr INFO: seqerr:0.4861111111111108
[2025/12/10 05:17:58] ppocr INFO: recall_e2e:0.2605633802816901
[2025/12/10 05:17:58] ppocr INFO: precision_e2e:0.26811594202898553
[2025/12/10 05:17:58] ppocr INFO: f_score_e2e:0.2642857142857143
[2025/12/10 05:17:58] ppocr INFO: fps:11.961634663601428
```

### MSRCP 4
```
[2025/12/10 05:18:06] ppocr INFO: metric eval ***************
[2025/12/10 05:18:06] ppocr INFO: total_num_gt:142
[2025/12/10 05:18:06] ppocr INFO: total_num_det:138
[2025/12/10 05:18:06] ppocr INFO: global_accumulative_recall:69.79999999999997
[2025/12/10 05:18:06] ppocr INFO: hit_str_count:37
[2025/12/10 05:18:06] ppocr INFO: recall:0.4915492957746477
[2025/12/10 05:18:06] ppocr INFO: precision:0.6565217391304348
[2025/12/10 05:18:06] ppocr INFO: f_score:0.5621826328141667
[2025/12/10 05:18:06] ppocr INFO: seqerr:0.4699140401146129
[2025/12/10 05:18:06] ppocr INFO: recall_e2e:0.2605633802816901
[2025/12/10 05:18:06] ppocr INFO: precision_e2e:0.26811594202898553
[2025/12/10 05:18:06] ppocr INFO: f_score_e2e:0.2642857142857143
[2025/12/10 05:18:06] ppocr INFO: fps:12.063688822466249
```

### MSRCP 5
```
[2025/12/10 05:18:14] ppocr INFO: metric eval ***************
[2025/12/10 05:18:14] ppocr INFO: total_num_gt:142
[2025/12/10 05:18:14] ppocr INFO: total_num_det:134
[2025/12/10 05:18:14] ppocr INFO: global_accumulative_recall:66.59999999999997
[2025/12/10 05:18:14] ppocr INFO: hit_str_count:35
[2025/12/10 05:18:14] ppocr INFO: recall:0.469014084507042
[2025/12/10 05:18:14] ppocr INFO: precision:0.682089552238806
[2025/12/10 05:18:14] ppocr INFO: f_score:0.5558311114357717
[2025/12/10 05:18:14] ppocr INFO: seqerr:0.4744744744744742
[2025/12/10 05:18:14] ppocr INFO: recall_e2e:0.24647887323943662
[2025/12/10 05:18:14] ppocr INFO: precision_e2e:0.26119402985074625
[2025/12/10 05:18:14] ppocr INFO: f_score_e2e:0.25362318840579706
[2025/12/10 05:18:14] ppocr INFO: fps:11.89455619137107
```

### MSRCP 6
```
[2025/12/10 05:18:22] ppocr INFO: metric eval ***************
[2025/12/10 05:18:22] ppocr INFO: total_num_gt:142
[2025/12/10 05:18:22] ppocr INFO: total_num_det:137
[2025/12/10 05:18:22] ppocr INFO: global_accumulative_recall:69.79999999999997
[2025/12/10 05:18:22] ppocr INFO: hit_str_count:37
[2025/12/10 05:18:22] ppocr INFO: recall:0.4915492957746477
[2025/12/10 05:18:22] ppocr INFO: precision:0.6613138686131387
[2025/12/10 05:18:22] ppocr INFO: f_score:0.5639322626383325
[2025/12/10 05:18:22] ppocr INFO: seqerr:0.4699140401146129
[2025/12/10 05:18:22] ppocr INFO: recall_e2e:0.2605633802816901
[2025/12/10 05:18:22] ppocr INFO: precision_e2e:0.27007299270072993
[2025/12/10 05:18:22] ppocr INFO: f_score_e2e:0.26523297491039427
[2025/12/10 05:18:22] ppocr INFO: fps:12.273782469102766
```

### MSRCP 7
```
[2025/12/10 05:18:31] ppocr INFO: metric eval ***************
[2025/12/10 05:18:31] ppocr INFO: total_num_gt:142
[2025/12/10 05:18:31] ppocr INFO: total_num_det:137
[2025/12/10 05:18:31] ppocr INFO: global_accumulative_recall:68.79999999999995
[2025/12/10 05:18:31] ppocr INFO: hit_str_count:37
[2025/12/10 05:18:31] ppocr INFO: recall:0.4845070422535208
[2025/12/10 05:18:31] ppocr INFO: precision:0.6773722627737228
[2025/12/10 05:18:31] ppocr INFO: f_score:0.5649323989523606
[2025/12/10 05:18:31] ppocr INFO: seqerr:0.462209302325581
[2025/12/10 05:18:31] ppocr INFO: recall_e2e:0.2605633802816901
[2025/12/10 05:18:31] ppocr INFO: precision_e2e:0.27007299270072993
[2025/12/10 05:18:31] ppocr INFO: f_score_e2e:0.26523297491039427
[2025/12/10 05:18:31] ppocr INFO: fps:11.595969382543872
```


