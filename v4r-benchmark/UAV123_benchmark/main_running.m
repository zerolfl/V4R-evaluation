% 针对数据集UAV123
% 一键起飞脚本，需要修改的地方（Need to change）：
% - dataPath：数据集位置
% - annoPath：对应的anno文件
% - evalType：评估方式OPE或者SRE
% - ./util/configSeq.m 中更改数据集类型
% - ./util/configTrackers.m 中要进行比较的跟踪器设置，可以trackers+paper+year+author进行设置，例如 trackers_ICRA19_LFL
% by lfl 190623

close all;
clear, clc;
warning off all;

% Need to change
dataPath = 'D:\Tracking\UAV123_10fps\data_seq';
annoPath = ['./anno/', 'UAV123_10fps', '/']; % 对应UAV123_10fps
evalType= 'OPE'; %'OPE','SRE'

addpath('./util');
addpath(('./rstEval'));
% addpath(['./trackers/VIVID_Tracker']);
% addpath(('D:\vlfeat-0.9.14\toolbox'));
% vl_setup

resPath = ['./results/results_' evalType '/'];
visPath = ['./results/visual_results_' evalType '/'];
bSaveImage=0;
if ~exist(resPath,'dir')
    mkdir(resPath);
end
if ~exist(visPath,'dir')
    mkdir(visPath);
end

shiftTypeSet = {'left','right','up','down','topLeft','topRight','bottomLeft','bottomRight','scale_8','scale_9','scale_11','scale_12'};

seqs=configSeqs(dataPath);
trackers=configTrackers;
numSeq=length(seqs);
numTrk=length(trackers);

for idxSeq=1:length(seqs)
    s = seqs{idxSeq};
    
    s.len = s.endFrame - s.startFrame + 1;
    s.s_frames = cell(s.len,1);
    nz	= strcat('%0',num2str(s.nz),'d'); %number of zeros in the name of image
    for i=1:s.len
        image_no = s.startFrame + (i-1);
        id = sprintf(nz,image_no);
        s.s_frames{i} = strcat(s.path,id,'.',s.ext);
    end
    
    img = imread(s.s_frames{1});
    [imgH,imgW,ch]=size(img);
    
    rect_anno = dlmread([annoPath s.name '.txt']);
    numSeg = 20;
    
    [subSeqs, subAnno]=splitSeqTRE(s,numSeg,rect_anno);
    
    switch evalType
        case 'SRE'
            subS = subSeqs{1};
            subA = subAnno{1};
            subSeqs=[];
            subAnno=[];
            r=subS.init_rect;
            
            for i=1:length(shiftTypeSet)
                subSeqs{i} = subS;
                shiftType = shiftTypeSet{i};
                subSeqs{i}.init_rect=shiftInitBB(subS.init_rect,shiftType,imgH,imgW);
                subSeqs{i}.shiftType = shiftType;
                
                subAnno{i} = subA;
            end

        case 'OPE'
            subS = subSeqs{1};
            subSeqs=[];
            subSeqs{1} = subS;
            
            subA = subAnno{1};
            subAnno=[];
            subAnno{1} = subA;
        otherwise
    end

            
    for idxTrk=1:numTrk
        t = trackers{idxTrk};
        % validate the results
        if exist([resPath t.name '/' s.name '_' t.name '.mat'], 'file')
            load([resPath t.name '/' s.name '_' t.name '.mat']);
            bfail=checkResult(results, subAnno);
            if bfail
                disp(['error in ' s.name ' '  t.name '!']);
            end
            continue;
        end

        switch t.name
            case {'VTD','VTS'}
                continue;
        end

        results = [];
        for idx=1:length(subSeqs)
            disp([num2str(idxTrk) '_' t.name ', ' num2str(idxSeq) '_' s.name ': ' num2str(idx) '/' num2str(length(subSeqs))])       
            rp = [visPath s.name '_' t.name '_' num2str(idx) '/'];
            if bSaveImage && ~exist(rp,'dir')
                mkdir(rp);
            end
            
            subS = subSeqs{idx};
            subS.name = [subS.name '_' num2str(idx)];
            funcName = ['res=run_' t.name '(subS, rp, bSaveImage);'];

            try
                switch t.name
                    case {'VR','TM','RS','PD','MS'}
                    otherwise
                        cd(['./trackers/' t.name]);
                        addpath(genpath('./'))
                end
                
                eval(funcName); % 运行主函数
                
                switch t.name
                    case {'VR','TM','RS','PD','MS'}
                    otherwise
                        rmpath(genpath('./'))
                        cd('../../');
                end
                
                if isempty(res)
                    results = [];
                    break;
                end
            catch err
                disp('error in running the tracker!');
                rmpath(genpath('./'))
                cd('../../');
                res=[];
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
rmpath(('./rstEval'));