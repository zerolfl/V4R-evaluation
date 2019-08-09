% 针对数据集UAVDT
% 一键起飞脚本，需要修改的地方（Need to change）：
% - dataPath：数据集位置
% - annoPath：对应的anno文件
% - evalType：评估方式OPE或者SRE
% - .\util\configTrackers.m 中要进行比较的跟踪器设置，可以trackers+paper+year+author进行设置，例如 trackers_ICRA19_LFL
% by lfl 190623

close all;
clear, clc;
warning off all;

% Need to change
dataPath = 'D:\Tracking\UAVDT\data_seq\';
annoPath = './anno/';
evalType = 'OPE'; %'OPE','SRE'

addpath('./util');

resPath = ['./results/results_' evalType '/'];
visPath = ['./results/visual_results_' evalType '/'];
bSaveImage = 0;
if(~exist(resPath,'dir'))
    mkdir(resPath);
end
if(~exist(visPath,'dir'))
    mkdir(visPath);
end

shiftTypeSet = {'left','right','up','down','topLeft','topRight','bottomLeft','bottomRight','scale_8','scale_9','scale_11','scale_12'};

sequences = configSeqs(dataPath);
trackers = configTrackers;
numSeq = length(sequences);
numTrk = length(trackers);

for idxSeq = 1:length(sequences)
    s = sequences{idxSeq};        
    s.len = s.endFrame - s.startFrame + 1;
    s.s_frames = cell(s.len,1);
    nz	= strcat('img%0',num2str(s.nz),'d'); %number of zeros in the name of image
    for i = 1:s.len
        image_no = s.startFrame + (i-1);
        id = sprintf(nz,image_no);
        s.s_frames{i} = strcat(s.path,id,'.',s.ext);
    end
    
    img = imread(s.s_frames{1});
    [imgH, imgW, ch] = size(img);
    
    rect_anno = dlmread([annoPath s.name '_gt.txt']);
    numSeg = 1;   
    [subSeqs, subAnno] = splitSeqTRE(s,numSeg,rect_anno(1,1:4));
    
    switch evalType
        case 'SRE'
            subS = subSeqs{1};
            subA = subAnno{1};
            subSeqs = [];
            subAnno = [];
            r = subS.init_rect;
            for i = 1:length(shiftTypeSet)
                subSeqs{i} = subS;
                shiftType = shiftTypeSet{i};
                subSeqs{i}.init_rect = shiftInitBB(subS.init_rect,shiftType,imgH,imgW);
                subSeqs{i}.shiftType = shiftType;
                subAnno{i} = subA;
            end
        case 'OPE'
            subS = subSeqs{1};
            subSeqs = [];
            subSeqs{1} = subS;
            subA = subAnno{1};
            subAnno = [];
            subAnno{1} = subA;
    end

            
    for idxTrk = 1:numTrk
        t = trackers{idxTrk};
        % validate the results
        if(exist([resPath t.name '/' s.name '_' t.name '.mat'], 'file'))
            load([resPath t.name '/' s.name '_' t.name '.mat']);
            bfail = checkResult(results, subAnno);
            if(bfail)
                disp(['error in ' s.name ' '  t.name '!']);
            end
            continue;
        end

        results = cell(1, length(subSeqs));
        for idx = 1:length(subSeqs)
            disp([num2str(idxTrk) '_' t.name ', ' num2str(idxSeq) '_' s.name ': ' num2str(idx) '/' num2str(length(subSeqs))])       
            rp = [visPath s.name '_' t.name '_' num2str(idx) '/'];
            if(bSaveImage && ~exist(rp,'dir'))
                mkdir(rp);
            end
            
            subS = subSeqs{idx};            
            subS.name = [subS.name '_' num2str(idx)];
            funcName = ['res = run_' t.name '(subS, rp, bSaveImage);'];

            try      
                cd(['./trackers/' t.name]);
                addpath(genpath('./'))                
                eval(funcName);
                rmpath(genpath('./'))
                cd('../../');
                if(isempty(res))
                    results = [];
                    break;
                end
            catch err
                disp('error in running the tracker!');
                rmpath(genpath('./'))
                cd('../../');
                res = [];
                continue;
            end
            
            res.len = subS.len;
            res.annoBegin = subS.annoBegin;
            res.startFrame = subS.startFrame;   
            
            switch evalType
                case 'SRE'
                    res.shiftType = shiftTypeSet{idx};
            end            
            
            results{idx} = res;            
        end
        if(~isdir([resPath t.name '/']))
            mkdir([resPath t.name '/']);
        end
        save([resPath t.name '/' s.name '_' t.name '.mat'], 'results');
    end
end

rmpath('./util');