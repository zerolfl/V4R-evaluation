## 配置环境

- windows 10 64-bit
- Intel Core i7-8700K（3.70GHz）
- 32G RAM
- Nvidia GeForce RTX 2080
- Matlab 2017b

## 评估

在UAV123、UAVDT、DTB70上评估跟踪器（OPE）。

| 序号 | 跟踪器      | 会议/期刊 | 时间 | CPU  | GPU  | Features/Networks                                 | UAV123     | UAVDT | DTB70 |
| ---- | ----------- | --------- | ---- | ---- | ---- | ------------------------------------------------- | ---------- | ----- | ----- |
| 1    | TADT        | CVPR      | 2019 |      | ✔    | imagenet-vgg-verydeep-16                          | ✔          |       |       |
| 2    | UDT         | CVPR      | 2019 |      | ✔    |                                                   | ✔          |       |       |
| 3    | UDT+        | CVPR      | 2019 |      | ✔    |                                                   |            |       |       |
| 4    | MCCT-H      | CVPR      | 2018 | ✔    |      | HOG+CN                                            | ✔          |       |       |
| 5    | MCCT        | CVPR      | 2018 |      | ✔    | imagenet-vgg-verydeep-19                          | ✔          |       |       |
| 6    | STRCF       | CVPR      | 2018 | ✔    |      | HOG+CN                                            | ✔          |       |       |
| 7    | DeepSTRCF   | CVPR      | 2018 |      | ✔    | HOG+CN+imagenet-vgg-m-2048                        | ✔          |       |       |
| 8    | KCC         | AAAI      | 2018 | ✔    |      | HOG                                               |            |       |       |
| 9    | VITAL       | CVPR      | 2018 |      | ✔    |                                                   |            |       |       |
| 10   | ECO-HC      | CVPR      | 2017 | ✔    |      | HOG+CN                                            | ✔          |       |       |
| 11   | ECO         | CVPR      | 2017 | ✔    | ✔    | HOG+imagenet-vgg-m-2048                           | ✔(CPU+GPU) |       |       |
| 12   | ADNet       | CVPR      | 2017 |      | ✔    |                                                   |            |       |       |
| 13   | BACF        | ICCV      | 2017 | ✔    |      | HOG                                               | ✔          |       |       |
| 14   | SRDCF       | ICCV      | 2017 | ✔    |      | HOG                                               | ✔          |       |       |
| 15   | PATV        | ICCV      | 2017 |      | ✔    | HOG                                               |            |       |       |
| 16   | MOSSE_CA    | CVPR      | 2017 | ✔    |      | Gray                                              |            |       |       |
| 17   | DCF_CA      | CVPR      | 2017 | ✔    |      | HOG                                               |            |       |       |
| 18   | SAMF_CA     | CVPR      | 2017 | ✔    |      | HOG+CN                                            | ✔          |       |       |
| 19   | Staple_CA   | CVPR      | 2017 | ✔    |      | HOG+Color historgram                              | ✔          |       |       |
| 20   | CoKCF       | PR        | 2017 |      | ✔    | imagenet-vgg-verydeep-19(Conv4-4+Conv5-4)         | ✔          |       |       |
| 21   | CSR-DCF     | CVPR      | 2017 | ✔    |      | HOG+CN                                            | ✔          |       |       |
| 22   | IBCCF       | ICCVws    | 2017 |      | ✔    | imagenet-vgg-verydeep-19                          | ✔          |       |       |
| 23   | MCPF        | CVPR      | 2017 |      | ✔    | imagenet-vgg-verydeep-19(Conv3-4+Conv4-4+Conv5-4) |            |       |       |
| 24   | CFNet_conv2 | CVPR      | 2017 |      | ✔    |                                                   |            |       |       |
| 25   | C-COT       | ECCV      | 2016 | ✔    |      | imagenet-vgg-m-2048                               | ✔          |       |       |
| 26   | Staple      | CVPR      | 2016 | ✔    |      | HOG+Color historgram                              | ✔          |       |       |
| 27   | SRDCFdecon  | CVPR      | 2016 | ✔    |      | HOG                                               | ✔          |       |       |
| 28   | SiamFC      | ECCV      | 2016 |      | ✔    |                                                   |            |       |       |
| 29   | CF2         | ICCV      | 2015 |      | ✔    | imagenet-vgg-verydeep-19(Conv3-4+Conv4-4+Conv5-4) | ✔          |       |       |
| 30   | MUSTer      | CVPR      | 2015 | ✔    |      | HOG                                               |            |       |       |
| 31   | MEEM        | ECCV      | 2014 | ✔    |      | SVM方法，非CF类                                   |            |       |       |
| 32   | SAMF        | ECCV      | 2014 | ✔    |      | HOG+CN                                            | ✔          |       |       |
| 33   | DSST        | BMVC      | 2014 | ✔    |      | HOG                                               | ✔          |       |       |
| 34   | fDSST       | BMVC      | 2014 | ✔    |      | HOG                                               |            |       |       |
| 35   | KCF         | PAMI      | 2014 | ✔    |      | HOG                                               | ✔          |       |       |
| 36   | DCF         | PAMI      | 2014 | ✔    |      | HOG                                               | ✔          |       |       |
| 37   | CSK         | ECCV      | 2012 | ✔    |      | Gray                                              |            |       |       |

## Results

