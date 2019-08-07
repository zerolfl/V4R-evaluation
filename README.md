## 配置环境

- windows 10 64-bit
- Intel Core i7-8700K（3.70GHz）
- 32G RAM
- Nvidia GeForce RTX 2080
- Matlab 2017b

## 评估

在UAV123、UAVDT、DTB70上评估跟踪器（OPE）。

| 序号 | 跟踪器      | 会议/期刊 | 时间 | CPU  | GPU  | Features/Networks                                 | UAV123_10fps | UAVDT | DTB70 |
| ---- | ----------- | --------- | ---- | ---- | ---- | ------------------------------------------------- | ------------ | ----- | ----- |
| 1    | UDT+        | CVPR      | 2019 |      | ✔    |                                                   | ✔            | ✔     | ✔     |
| 2    | UDT         | CVPR      | 2019 |      | ✔    |                                                   | ✔            | ✔     | ✔     |
| 3    | TADT        | CVPR      | 2019 |      | ✔    | imagenet-vgg-verydeep-16                          | ✔            | ✔     | ✔     |
| 4    | VITAL       | CVPR      | 2018 |      | ✔    |                                                   |              |       |       |
| 5    | STRCF       | CVPR      | 2018 | ✔    |      | HOG+CN                                            | ✔            | ✔     | ✔     |
| 6    | MCCT-H      | CVPR      | 2018 | ✔    |      | HOG+CN                                            | ✔            | ✔     | ✔     |
| 7    | MCCT        | CVPR      | 2018 |      | ✔    | imagenet-vgg-verydeep-19                          | ✔            | ✔     | ✔     |
| 8    | KCC         | AAAI      | 2018 | ✔    |      | HOG                                               | ✔            | ✔     | ✔     |
| 9    | DeepSTRCF   | CVPR      | 2018 |      | ✔    | HOG+CN+imagenet-vgg-m-2048                        | ✔            | ✔     | ✔     |
| 10   | Staple_CA   | CVPR      | 2017 | ✔    |      | HOG+Color historgram                              | ✔            | ✔     | ✔     |
| 11   | SRDCF       | ICCV      | 2017 | ✔    |      | HOG                                               | ✔            | ✔     | ✔     |
| 12   | SAMF_CA     | CVPR      | 2017 | ✔    |      | HOG+CN                                            | ✔            | ✔     | ✔     |
| 13   | MCPF        | CVPR      | 2017 |      | ✔    | imagenet-vgg-verydeep-19(Conv3-4+Conv4-4+Conv5-4) | ✔            | ✔     | ✔     |
| 14   | IBCCF       | ICCVws    | 2017 |      | ✔    | imagenet-vgg-verydeep-19                          | ✔            | ✔     | ✔     |
| 15   | fDSST       | PAMI      | 2017 | ✔    |      | HOG                                               | ✔            | ✔     | ✔     |
| 16   | ECO-HC      | CVPR      | 2017 | ✔    |      | HOG+CN                                            | ✔            | ✔     | ✔     |
| 17   | ECO         | CVPR      | 2017 |      | ✔    | HOG+imagenet-vgg-m-2048                           | ✔            | ✔     | ✔     |
| 18   | CSR-DCF     | CVPR      | 2017 | ✔    |      | HOG+CN                                            | ✔            | ✔     | ✔     |
| 19   | CoKCF       | PR        | 2017 |      | ✔    | imagenet-vgg-verydeep-19(Conv4-4+Conv5-4)         | ✔            | ✔     | ✔     |
| 20   | CFWCR       | ICCVws    | 2017 |      | ✔    | imagenet-vgg-m-2048                               |              |       |       |
| 21   | CFNet_conv2 | CVPR      | 2017 |      | ✔    |                                                   |              |       |       |
| 22   | BACF        | ICCV      | 2017 | ✔    |      | HOG                                               | ✔            | ✔     | ✔     |
| 23   | ADNet       | CVPR      | 2017 |      | ✔    |                                                   |              |       |       |
| 24   | Staple      | CVPR      | 2016 | ✔    |      | HOG+Color historgram                              | ✔            | ✔     | ✔     |
| 25   | SRDCFdecon  | CVPR      | 2016 | ✔    |      | HOG                                               | ✔            | ✔     | ✔     |
| 26   | SiamFC      | ECCV      | 2016 |      | ✔    |                                                   |              |       |       |
| 27   | C-COT       | ECCV      | 2016 | ✔    |      | imagenet-vgg-m-2048                               | ✔            | ✔     | ✔     |
| 28   | CF2         | ICCV      | 2015 |      | ✔    | imagenet-vgg-verydeep-19(Conv3-4+Conv4-4+Conv5-4) | ✔            | ✔     | ✔     |
| 29   | SAMF        | ECCV      | 2014 | ✔    |      | HOG+CN                                            | ✔            | ✔     | ✔     |
| 30   | KCF         | PAMI      | 2014 | ✔    |      | HOG                                               | ✔            | ✔     | ✔     |
| 31   | DSST        | BMVC      | 2014 | ✔    |      | HOG                                               | ✔            | ✔     | ✔     |
| 32   | DCF         | PAMI      | 2014 | ✔    |      | HOG                                               | ✔            | ✔     | ✔     |
|      |             |           |      |      |      |                                                   |              |       |       |
| 1    | DCF_CA      | CVPR      | 2017 | ✔    |      | HOG                                               |              |       |       |
| 2    | MOSSE_CA    | CVPR      | 2017 | ✔    |      | Gray                                              |              |       |       |
| 3    | PATV        | ICCV      | 2017 |      | ✔    | HOG                                               |              |       |       |
| 4    | MUSTer      | CVPR      | 2015 | ✔    |      | HOG                                               |              |       |       |
| 5    | MEEM        | ECCV      | 2014 | ✔    |      | SVM方法，非CF类                                   |              |       |       |

目前已有 ~~23~~ 27 个跟踪器的结果，均为 2014 年以后的。

Todo：

- [x] ~~KCC、UPT+、MCPF、fDSST。~~
- [ ] SiamFC
- [ ] CFNet_conv2
- [ ] ADNet
- [ ] CFWCR
- [ ] VITAL
- [ ] ASRCF
- [ ] ECO代码跑10次取再取平均

## Results

各跟踪结果位于`./results`里面。



UAV123_10fps结果图：

<figure class="half">
    <img src="./figs/UAV123_10fps/error_OPE.tiff"><img src="./figs/UAV123_10fps/overlap_OPE.tiff">
</figure>





