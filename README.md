## 配置环境

- windows 10 64-bit
- Intel Core i7-8700K（3.70GHz）
- 32G RAM
- Nvidia GeForce RTX 2080
- Matlab 2017b

## 评估

在UAV123、UAVDT、DTB70上评估跟踪器（OPE）。

| 序号 | 跟踪器      | 会议/期刊 | 时间 | CPU  | GPU  | Features/Networks                                 | UAV123_10fps | UAVDT | DTB70 | UAV123 | UAV123_20L |
| ---- | ----------- | --------- | ---- | ---- | ---- | ------------------------------------------------- | ------------ | ----- | ----- | ------ | ---------- |
| 1    | UDT+        | CVPR      | 2019 |      | ✔    |                                                   |              |       |       |        |            |
| 2    | UDT         | CVPR      | 2019 |      | ✔    |                                                   | ✔            | ✔     | ✔     |        |            |
| 3    | TADT        | CVPR      | 2019 |      | ✔    | imagenet-vgg-verydeep-16                          | ✔            | ✔     | ✔     |        |            |
| 4    | VITAL       | CVPR      | 2018 |      | ✔    |                                                   |              |       |       |        |            |
| 5    | STRCF       | CVPR      | 2018 | ✔    |      | HOG+CN                                            | ✔            | ✔     | ✔     |        |            |
| 6    | MCCT-H      | CVPR      | 2018 | ✔    |      | HOG+CN                                            | ✔            | ✔     | ✔     |        |            |
| 7    | MCCT        | CVPR      | 2018 |      | ✔    | imagenet-vgg-verydeep-19                          | ✔            | ✔     | ✔     |        |            |
| 8    | KCC         | AAAI      | 2018 | ✔    |      | HOG                                               |              |       |       |        |            |
| 9    | DeepSTRCF   | CVPR      | 2018 |      | ✔    | HOG+CN+imagenet-vgg-m-2048                        | ✔            | ✔     | ✔     |        |            |
| 10   | Staple_CA   | CVPR      | 2017 | ✔    |      | HOG+Color historgram                              | ✔            | ✔     | ✔     |        |            |
| 11   | SRDCF       | ICCV      | 2017 | ✔    |      | HOG                                               | ✔            | ✔     | ✔     |        |            |
| 12   | SAMF_CA     | CVPR      | 2017 | ✔    |      | HOG+CN                                            | ✔            | ✔     | ✔     |        |            |
| 13   | PATV        | ICCV      | 2017 |      | ✔    | HOG                                               |              |       |       |        |            |
| 14   | MOSSE_CA    | CVPR      | 2017 | ✔    |      | Gray                                              |              |       |       |        |            |
| 15   | MCPF        | CVPR      | 2017 |      | ✔    | imagenet-vgg-verydeep-19(Conv3-4+Conv4-4+Conv5-4) |              |       |       |        |            |
| 16   | IBCCF       | ICCVws    | 2017 |      | ✔    | imagenet-vgg-verydeep-19                          | ✔            | ✔     | ✔     |        |            |
| 17   | fDSST       | PAMI      | 2017 | ✔    |      | HOG                                               |              |       |       |        |            |
| 18   | ECO-HC      | CVPR      | 2017 | ✔    |      | HOG+CN                                            | ✔            | ✔     | ✔     |        |            |
| 19   | ECO         | CVPR      | 2017 |      | ✔    | HOG+imagenet-vgg-m-2048                           | ✔            | ✔     | ✔     |        |            |
| 20   | DCF_CA      | CVPR      | 2017 | ✔    |      | HOG                                               |              |       |       |        |            |
| 21   | CSR-DCF     | CVPR      | 2017 | ✔    |      | HOG+CN                                            | ✔            | ✔     | ✔     |        |            |
| 22   | CoKCF       | PR        | 2017 |      | ✔    | imagenet-vgg-verydeep-19(Conv4-4+Conv5-4)         | ✔            | ✔     | ✔     |        |            |
| 23   | CFWCR       | ICCVws    | 2017 |      | ✔    | imagenet-vgg-m-2048                               |              |       |       |        |            |
| 24   | CFNet_conv2 | CVPR      | 2017 |      | ✔    |                                                   |              |       |       |        |            |
| 25   | BACF        | ICCV      | 2017 | ✔    |      | HOG                                               | ✔            | ✔     | ✔     |        |            |
| 26   | ADNet       | CVPR      | 2017 |      | ✔    |                                                   |              |       |       |        |            |
| 27   | Staple      | CVPR      | 2016 | ✔    |      | HOG+Color historgram                              | ✔            | ✔     | ✔     |        |            |
| 28   | SRDCFdecon  | CVPR      | 2016 | ✔    |      | HOG                                               | ✔            | ✔     | ✔     |        |            |
| 29   | SiamFC      | ECCV      | 2016 |      | ✔    |                                                   |              |       |       |        |            |
| 30   | C-COT       | ECCV      | 2016 | ✔    |      | imagenet-vgg-m-2048                               | ✔            | ✔     | ✔     |        |            |
| 31   | MUSTer      | CVPR      | 2015 | ✔    |      | HOG                                               |              |       |       |        |            |
| 32   | CF2         | ICCV      | 2015 |      | ✔    | imagenet-vgg-verydeep-19(Conv3-4+Conv4-4+Conv5-4) | ✔            | ✔     | ✔     |        |            |
| 33   | SAMF        | ECCV      | 2014 | ✔    |      | HOG+CN                                            | ✔            | ✔     | ✔     |        |            |
| 34   | MEEM        | ECCV      | 2014 | ✔    |      | SVM方法，非CF类                                   |              |       |       |        |            |
| 35   | KCF         | PAMI      | 2014 | ✔    |      | HOG                                               | ✔            | ✔     | ✔     |        |            |
| 36   | DSST        | BMVC      | 2014 | ✔    |      | HOG                                               | ✔            | ✔     | ✔     |        |            |
| 37   | DCF         | PAMI      | 2014 | ✔    |      | HOG                                               | ✔            | ✔     | ✔     |        |            |

目前已有 23 个跟踪器的结果，均为 2014 年以后的。

Todo：

- [ ] KCC、ADNet、UPT+、CFWCR、fDSST。
- [ ] SiamFC、CFNet_conv2、VITAL。
- [ ] ECO代码需要跑10次取再取平均。
- [ ] 等UAV123_10fps、UAVDT、DTB70跑完，再跑新的数据集。
- [ ] 都好了跑TRE和SRE，不仅仅OPE。
- [ ] MUSTer、MEEM看情况。

## Results

各跟踪结果位于`./results`里面。



UAV123_10fps结果图：



UAV123_10fps结果图：



UAV123_10fps结果图：






