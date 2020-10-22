# V4R-benchmark

该repo为重新整理的benchmark，包括：[UAV123](https://ivul.kaust.edu.sa/Pages/Dataset-UAV123.aspx)，[UAVDT](https://sites.google.com/site/daviddo0323/projects/uavdt)，[DTB70](https://github.com/flyers/drone-tracking) 这三个benchmark，并增加部分工具脚本。

详细使用在WeChat组群内询问。

## 内容

在UAV123（UAV123、UAV123@10fps、UAV20L）、DTB70、UAVDT、VisDroneSOT-2019（除了testset-challenge部分的其他序列）上评估跟踪器（**OPE**模式）。

- 使用手工特征跟踪器：使用fHOG、CN、Gray等人为设计、不走网络的特征的跟踪器。

- 使用Deep-based跟踪器：使用深度特征的跟踪器、end-to-end的跟踪器

## Results_OPE_win10_i7_2080_R2019a

结果在如下配置环境中得到：

- windows 10 64-bit
- Intel Core i7-8700K（3.70GHz）
- 32G RAM
- Nvidia GeForce RTX 2080
- [![matlab-2019a](https://img.shields.io/badge/matlab-2019a-yellow.svg)](https://www.mathworks.com/products/matlab.html)
- CUDA10
- VS2017

跟踪结果可在[百度云盘](https://pan.baidu.com/s/1V91PV60-0WgXFN6MESirQw)中获取，提取码：v4rr。

### 使用手工特征跟踪器（21个）的结果

<details open>   
    <summary><b>UAV123总体结果和FPS</b></summary> 
    <div align="center"> 
        <img src="./figs_HC_Results_OPE_win10_i7_2080_R2019a/UAV123/error_OPE.png" width="400">
        <img src="./figs_HC_Results_OPE_win10_i7_2080_R2019a/UAV123/overlap_OPE.png" width="400"> 
        <img src="./figs_HC_Results_OPE_win10_i7_2080_R2019a/UAV123/UAV123_avgFPS.png">
    </div>
</details>

<details close>   
    <summary><b>UAV20L总体结果和FPS</b></summary> 
    <div align="center"> 
        <img src="./figs_HC_Results_OPE_win10_i7_2080_R2019a/UAV20L/error_OPE.png" width="400">
        <img src="./figs_HC_Results_OPE_win10_i7_2080_R2019a/UAV20L/overlap_OPE.png" width="400">
        <img src="./figs_HC_Results_OPE_win10_i7_2080_R2019a/UAV20L/UAV20L_avgFPS.png">
    </div>
</details>

<details close>   
    <summary><b>UAV123_10fps总体结果和FPS</b></summary> 
    <div align="center"> 
        <img src="./figs_HC_Results_OPE_win10_i7_2080_R2019a/UAV123_10fps/error_OPE.png" width="400">
        <img src="./figs_HC_Results_OPE_win10_i7_2080_R2019a/UAV123_10fps/overlap_OPE.png" width="400">
        <img src="./figs_HC_Results_OPE_win10_i7_2080_R2019a/UAV123_10fps/UAV123@10fps_avgFPS.png">
    </div>
</details>

<details close>   
    <summary><b>DTB70总体结果和FPS</b></summary> 
    <div align="center"> 
        <img src="./figs_HC_Results_OPE_win10_i7_2080_R2019a/DTB70/error_OPE.png" width="400">
        <img src="./figs_Results_Ofigs_HC_Results_OPE_win10_i7_2080_R2019aPE_win10_i7_2080_R2019a/DTB70/overlap_OPE.png" width="400">
        <img src="./figs_HC_Results_OPE_win10_i7_2080_R2019a/DTB70/DTB70_avgFPS.png">
    </div>
</details>

<details close>   
    <summary><b>UAVDT总体结果和FPS</b></summary> 
  <div align="center"> 
        <img src="./figs_HC_Results_OPE_win10_i7_2080_R2019a/UAVDT/error_OPE.png" width="400">
        <img src="./figs_HC_Results_OPE_win10_i7_2080_R2019a/UAVDT/overlap_OPE.png" width="400">
        <img src="./figs_HC_Results_OPE_win10_i7_2080_R2019a/UAVDT/UAVDT_avgFPS.png">
    </div>
</details>

<details close>   
    <summary><b>VisDrone2019-SOT总体结果和FPS</b></summary> 
  <div align="center"> 
        <img src="./figs_HC_Results_OPE_win10_i7_2080_R2019a/VisDrone2019-SOT/error_OPE.png" width="400">
        <img src="./figs_HC_Results_OPE_win10_i7_2080_R2019a/VisDrone2019-SOT/overlap_OPE.png" width="400">
        <img src="./figs_HC_Results_OPE_win10_i7_2080_R2019a/VisDrone2019-SOT/VisDrone2019-SOT_avgFPS.png">
    </div>
</details>

### Deep-based特征跟踪器（15个）的结果

<details open>   
    <summary><b>UAVDT总体结果和FPS</b></summary> 
  <div align="center"> 
        <img src="./figs_Deep_Results_OPE_win10_i7_2080_R2019a/UAVDT/error_OPE.png" width="400">
        <img src="./figs_Deep_Results_OPE_win10_i7_2080_R2019a/UAVDT/overlap_OPE.png" width="400">
        <img src="./figs_Deep_Results_OPE_win10_i7_2080_R2019a/UAVDT/UAVDT_avgFPS.png">
    </div>
</details>

## Results_OPE_win10_i7_2080_R2017b

结果在如下配置环境中得到：

- windows 10 64-bit
- Intel Core i7-8700K（3.70GHz）
- 32G RAM
- Nvidia GeForce RTX 2080
- [![matlab-2017b](https://img.shields.io/badge/matlab-2017b-yellow.svg)](https://www.mathworks.com/products/matlab.html)

跟踪结果可在[百度云盘](https://pan.baidu.com/s/1UjQ9zD6wjHkEexDwyg9dvA)中获取，提取码：v4rr。

### 使用手工特征与Deep-based跟踪器（27个）的结果

<details open>   
    <summary><b>UAV123总体结果和FPS</b></summary> 
    <div align="center"> 
        <img src="./figs_Results_OPE_win10_i7_2080_R2017b/UAV123/error_OPE.png" width="400">
        <img src="./figs_Results_OPE_win10_i7_2080_R2017b/UAV123/overlap_OPE.png" width="400"> 
        <img src="./figs_Results_OPE_win10_i7_2080_R2017b/UAV123/FPS_avg_27.png">
    </div>
</details>


<details close>   
    <summary><b>UAV20L总体结果和FPS</b></summary> 
    <div align="center"> 
        <img src="./figs_Results_OPE_win10_i7_2080_R2017b/UAV20L/error_OPE.png" width="400">
        <img src="./figs_Results_OPE_win10_i7_2080_R2017b/UAV20L/overlap_OPE.png" width="400">
        <img src="./figs_Results_OPE_win10_i7_2080_R2017b/UAV20L/FPS_avg_27.png">
    </div>
</details>

<details close>   
    <summary><b>UAV123_10fps总体结果和FPS</b></summary> 
    <div align="center"> 
        <img src="./figs_Results_OPE_win10_i7_2080_R2017b/UAV123_10fps/error_OPE.png" width="400">
        <img src="./figs_Results_OPE_win10_i7_2080_R2017b/UAV123_10fps/overlap_OPE.png" width="400">
        <img src="./figs_Results_OPE_win10_i7_2080_R2017b/UAV123_10fps/FPS_avg_27.png">
    </div>
</details>

<details close>   
    <summary><b>DTB70总体结果和FPS</b></summary> 
    <div align="center"> 
        <img src="./figs_Results_OPE_win10_i7_2080_R2017b/DTB70/error_OPE.png" width="400">
        <img src="./figs_Results_OPE_win10_i7_2080_R2017b/DTB70/overlap_OPE.png" width="400">
        <img src="./figs_Results_OPE_win10_i7_2080_R2017b/DTB70/FPS_avg_27.png">
    </div>
</details>

<details close>   
    <summary><b>UAVDT总体结果和FPS</b></summary> 
  <div align="center"> 
        <img src="./figs_Results_OPE_win10_i7_2080_R2017b/UAVDT/error_OPE.png" width="400">
        <img src="./figs_Results_OPE_win10_i7_2080_R2017b/UAVDT/overlap_OPE.png" width="400">
        <img src="./figs_Results_OPE_win10_i7_2080_R2017b/UAVDT/FPS_avg_27.png">
    </div>
</details>

## 相关工作

请参考该项目：[Correlation Filter for UAV-Based Aerial Tracking: A Review and Experimental Evaluation](https://github.com/vision4robotics/DCFTracking4UAV)