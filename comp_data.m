function comp_data(varsUsed,embedWin,iceVar,fullDataOn)

	compDataDir = fullfile(strcat('output/predictions/',iceVar,'/',varsUsed,'_q',num2str(embedWin),'_train_100_499','/'))
	if exist(compDataDir) == 0
    	mkdir(compDataDir)
	end

	% load data
	region =  'Arctic';
	lonLim = [0 360];
	latLim = [45 90];
	saveTag = strcat(region,'_',varsUsed,'_q',num2str(embedWin),'_train_100_499');
	saveDir = fullfile('output/predictions/',saveTag,'/');
	S = fullfile(strcat(saveDir,'pred_',iceVar,num2str(fullDataOn),'.mat'));
	load(S)
	pred_panel_1_pcIM     = pred_pcIM;
	pred_panel_1_pcTM     = pred_pcTM;
	pred_panel_1_pcIMdiff = pred_pcIM;
	pred_panel_1_pcIMdiff((pred_pcIM<0.5) & (pred_pcIMP<0.5)) = nan;
	pred_panel_1_pcIMdiff = pred_panel_1_pcIMdiff - pred_pcIMP;
	pred_panel_1_pcTMdiff = pred_pcTM;
	pred_panel_1_pcTMdiff((pred_pcTM<0.5) & (pred_pcTMP<0.5)) = nan;
	pred_panel_1_pcTMdiff = pred_panel_1_pcTMdiff - pred_pcTMP;

	pred_panel_1_pcIMDdiff = pred_pcIM;
	pred_panel_1_pcIMDdiff((pred_pcIM<0.5) & (pred_pcIMDP<0.5)) = nan;
	pred_panel_1_pcIMDdiff = pred_panel_1_pcIMDdiff - pred_pcIMDP;
	pred_panel_1_pcTMDdiff = pred_pcTM;
	pred_panel_1_pcTMDdiff((pred_pcTM<0.5) & (pred_pcTMDP<0.5)) = nan;
	pred_panel_1_pcTMDdiff = pred_panel_1_pcTMDdiff - pred_pcTMDP;

	pred_panel_1_rms      = pred_rms;
	pred_panel_1_rmsP     = pred_rmsP;
	pred_panel_1_rmsDP    = pred_rmsDP;	
	pred_panel_1_pc       = pred_pc;
	pred_panel_1_pcP      = pred_pcP;
	pred_panel_1_pcDP     = pred_pcDP;	
	pred_panel_1_truth    = data_test;
	pred_panel_1_ose      = f_ext;

	pred_panel_1_pcIMP    = pred_pcIMP;
	pred_panel_1_pcTMP    = pred_pcTMP;
	pred_panel_1_pcIMDP   = pred_pcIMDP;
	pred_panel_1_pcTMDP   = pred_pcTMDP;

	pred_panel_1_stdIM    = std_truthIM;
	pred_panel_1_stdTM    = std_truthTM;
	pred_panel_1_NstdIM    = Nstd_truthIM;
	pred_panel_1_NstdTM    = Nstd_truthTM;			
	    
	region = 'ChukchiBeaufort';
	lonLim = [175 235];
	latLim = [65 75];
	saveTag = strcat(region,'_',varsUsed,'_q',num2str(embedWin),'_train_100_499');
	saveDir = fullfile('output/predictions/',saveTag,'/');
	S = fullfile(strcat(saveDir,'pred_',iceVar,num2str(fullDataOn),'.mat'));
	load(S)
	pred_panel_2_pcIM     = pred_pcIM;
	pred_panel_2_pcTM     = pred_pcTM;
	pred_panel_2_pcIMdiff = pred_pcIM;
	pred_panel_2_pcIMdiff((pred_pcIM<0.5) & (pred_pcIMP<0.5)) = nan;
	pred_panel_2_pcIMdiff = pred_panel_2_pcIMdiff - pred_pcIMP;
	pred_panel_2_pcTMdiff = pred_pcTM;
	pred_panel_2_pcTMdiff((pred_pcTM<0.5) & (pred_pcTMP<0.5)) = nan;
	pred_panel_2_pcTMdiff = pred_panel_2_pcTMdiff - pred_pcTMP;

	pred_panel_2_pcIMDdiff = pred_pcIM;
	pred_panel_2_pcIMDdiff((pred_pcIM<0.5) & (pred_pcIMDP<0.5)) = nan;
	pred_panel_2_pcIMDdiff = pred_panel_2_pcIMDdiff - pred_pcIMDP;
	pred_panel_2_pcTMDdiff = pred_pcTM;
	pred_panel_2_pcTMDdiff((pred_pcTM<0.5) & (pred_pcTMDP<0.5)) = nan;
	pred_panel_2_pcTMDdiff = pred_panel_2_pcTMDdiff - pred_pcTMDP;
	
	pred_panel_2_rms      = pred_rms;
	pred_panel_2_rmsP     = pred_rmsP;
	pred_panel_2_rmsDP    = pred_rmsDP;	
	pred_panel_2_pc       = pred_pc;
	pred_panel_2_pcP      = pred_pcP;
	pred_panel_2_pcDP     = pred_pcDP;	
	pred_panel_2_truth    = data_test;
	pred_panel_2_ose      = f_ext;

	pred_panel_2_pcIMP    = pred_pcIMP;
	pred_panel_2_pcTMP    = pred_pcTMP;
	pred_panel_2_pcIMDP   = pred_pcIMDP;
	pred_panel_2_pcTMDP   = pred_pcTMDP;

	pred_panel_2_stdIM    = std_truthIM;
	pred_panel_2_stdTM    = std_truthTM;
	pred_panel_2_NstdIM    = Nstd_truthIM;
	pred_panel_2_NstdTM    = Nstd_truthTM;		
	        
	region = 'Chukchi';
	lonLim = [175 205];
	latLim = [65 75];
	saveTag = strcat(region,'_',varsUsed,'_q',num2str(embedWin),'_train_100_499');
	saveDir = fullfile('output/predictions/',saveTag,'/');
	S = fullfile(strcat(saveDir,'pred_',iceVar,num2str(fullDataOn),'.mat'));
	load(S)
	pred_panel_3_pcIM     = pred_pcIM;
	pred_panel_3_pcTM     = pred_pcTM;
	pred_panel_3_pcIMdiff = pred_pcIM;
	pred_panel_3_pcIMdiff((pred_pcIM<0.5) & (pred_pcIMP<0.5)) = nan;
	pred_panel_3_pcIMdiff = pred_panel_3_pcIMdiff - pred_pcIMP;
	pred_panel_3_pcTMdiff = pred_pcTM;
	pred_panel_3_pcTMdiff((pred_pcTM<0.5) & (pred_pcTMP<0.5)) = nan;
	pred_panel_3_pcTMdiff = pred_panel_3_pcTMdiff - pred_pcTMP;

	pred_panel_3_pcIMDdiff = pred_pcIM;
	pred_panel_3_pcIMDdiff((pred_pcIM<0.5) & (pred_pcIMDP<0.5)) = nan;
	pred_panel_3_pcIMDdiff = pred_panel_3_pcIMDdiff - pred_pcIMDP;
	pred_panel_3_pcTMDdiff = pred_pcTM;
	pred_panel_3_pcTMDdiff((pred_pcTM<0.5) & (pred_pcTMDP<0.5)) = nan;
	pred_panel_3_pcTMDdiff = pred_panel_3_pcTMDdiff - pred_pcTMDP;
	
	pred_panel_3_rms      = pred_rms;
	pred_panel_3_rmsP     = pred_rmsP;
	pred_panel_3_rmsDP    = pred_rmsDP;	
	pred_panel_3_pc       = pred_pc;
	pred_panel_3_pcP      = pred_pcP;
	pred_panel_3_pcDP     = pred_pcDP;	
	pred_panel_3_truth    = data_test;
	pred_panel_3_ose      = f_ext;

	pred_panel_3_pcIMP    = pred_pcIMP;
	pred_panel_3_pcTMP    = pred_pcTMP;
	pred_panel_3_pcIMDP   = pred_pcIMDP;
	pred_panel_3_pcTMDP   = pred_pcTMDP;

	pred_panel_3_stdIM    = std_truthIM;
	pred_panel_3_stdTM    = std_truthTM;
	pred_panel_3_NstdIM    = Nstd_truthIM;
	pred_panel_3_NstdTM    = Nstd_truthTM;		
	        
	region = 'Beaufort';
	lonLim = [205 235];
	latLim = [65 75];
	saveTag = strcat(region,'_',varsUsed,'_q',num2str(embedWin),'_train_100_499');
	saveDir = fullfile('output/predictions/',saveTag,'/');
	S = fullfile(strcat(saveDir,'pred_',iceVar,num2str(fullDataOn),'.mat'));
	load(S)
	pred_panel_4_pcIM     = pred_pcIM;
	pred_panel_4_pcTM     = pred_pcTM;
	pred_panel_4_pcIMdiff = pred_pcIM;
	pred_panel_4_pcIMdiff((pred_pcIM<0.5) & (pred_pcIMP<0.5)) = nan;
	pred_panel_4_pcIMdiff = pred_panel_4_pcIMdiff - pred_pcIMP;
	pred_panel_4_pcTMdiff = pred_pcTM;
	pred_panel_4_pcTMdiff((pred_pcTM<0.5) & (pred_pcTMP<0.5)) = nan;
	pred_panel_4_pcTMdiff = pred_panel_4_pcTMdiff - pred_pcTMP;

	pred_panel_4_pcIMDdiff = pred_pcIM;
	pred_panel_4_pcIMDdiff((pred_pcIM<0.5) & (pred_pcIMDP<0.5)) = nan;
	pred_panel_4_pcIMDdiff = pred_panel_4_pcIMDdiff - pred_pcIMDP;
	pred_panel_4_pcTMDdiff = pred_pcTM;
	pred_panel_4_pcTMDdiff((pred_pcTM<0.5) & (pred_pcTMDP<0.5)) = nan;
	pred_panel_4_pcTMDdiff = pred_panel_4_pcTMDdiff - pred_pcTMDP;
	
	pred_panel_4_rms      = pred_rms;
	pred_panel_4_rmsP     = pred_rmsP;
	pred_panel_4_rmsDP    = pred_rmsDP;	
	pred_panel_4_pc       = pred_pc;
	pred_panel_4_pcP      = pred_pcP;
	pred_panel_4_pcDP     = pred_pcDP;	
	pred_panel_4_truth    = data_test;
	pred_panel_4_ose      = f_ext;

	pred_panel_4_pcIMP    = pred_pcIMP;
	pred_panel_4_pcTMP    = pred_pcTMP;
	pred_panel_4_pcIMDP   = pred_pcIMDP;
	pred_panel_4_pcTMDP   = pred_pcTMDP;

	pred_panel_4_stdIM    = std_truthIM;
	pred_panel_4_stdTM    = std_truthTM;
	pred_panel_4_NstdIM    = Nstd_truthIM;
	pred_panel_4_NstdTM    = Nstd_truthTM;			

	region = 'EastSibLaptev';
	lonLim = [105 175];
	latLim = [65 75];
	saveTag = strcat(region,'_',varsUsed,'_q',num2str(embedWin),'_train_100_499');
	saveDir = fullfile('output/predictions/',saveTag,'/');
	S = fullfile(strcat(saveDir,'pred_',iceVar,num2str(fullDataOn),'.mat'));
	load(S)
	pred_panel_5_pcIM     = pred_pcIM;
	pred_panel_5_pcTM     = pred_pcTM;
	pred_panel_5_pcIMdiff = pred_pcIM;
	pred_panel_5_pcIMdiff((pred_pcIM<0.5) & (pred_pcIMP<0.5)) = nan;
	pred_panel_5_pcIMdiff = pred_panel_5_pcIMdiff - pred_pcIMP;
	pred_panel_5_pcTMdiff = pred_pcTM;
	pred_panel_5_pcTMdiff((pred_pcTM<0.5) & (pred_pcTMP<0.5)) = nan;
	pred_panel_5_pcTMdiff = pred_panel_5_pcTMdiff - pred_pcTMP;

	pred_panel_5_pcIMDdiff = pred_pcIM;
	pred_panel_5_pcIMDdiff((pred_pcIM<0.5) & (pred_pcIMDP<0.5)) = nan;
	pred_panel_5_pcIMDdiff = pred_panel_5_pcIMDdiff - pred_pcIMDP;
	pred_panel_5_pcTMDdiff = pred_pcTM;
	pred_panel_5_pcTMDdiff((pred_pcTM<0.5) & (pred_pcTMDP<0.5)) = nan;
	pred_panel_5_pcTMDdiff = pred_panel_5_pcTMDdiff - pred_pcTMDP;
	
	pred_panel_5_rms      = pred_rms;
	pred_panel_5_rmsP     = pred_rmsP;
	pred_panel_5_rmsDP    = pred_rmsDP;	
	pred_panel_5_pc       = pred_pc;
	pred_panel_5_pcP      = pred_pcP;
	pred_panel_5_pcDP     = pred_pcDP;	
	pred_panel_5_truth    = data_test;
	pred_panel_5_ose      = f_ext;

	pred_panel_5_pcIMP    = pred_pcIMP;
	pred_panel_5_pcTMP    = pred_pcTMP;
	pred_panel_5_pcIMDP   = pred_pcIMDP;
	pred_panel_5_pcTMDP   = pred_pcTMDP;

	pred_panel_5_stdIM    = std_truthIM;
	pred_panel_5_stdTM    = std_truthTM;
	pred_panel_5_NstdIM    = Nstd_truthIM;
	pred_panel_5_NstdTM    = Nstd_truthTM;			
	        
	region = 'EastSib';
	lonLim = [140 175];
	latLim = [65 75];
	saveTag = strcat(region,'_',varsUsed,'_q',num2str(embedWin),'_train_100_499');
	saveDir = fullfile('output/predictions/',saveTag,'/');
	S = fullfile(strcat(saveDir,'pred_',iceVar,num2str(fullDataOn),'.mat'));
	load(S)
	pred_panel_6_pcIM     = pred_pcIM;
	pred_panel_6_pcTM     = pred_pcTM;
	pred_panel_6_pcIMdiff = pred_pcIM;
	pred_panel_6_pcIMdiff((pred_pcIM<0.5) & (pred_pcIMP<0.5)) = nan;
	pred_panel_6_pcIMdiff = pred_panel_6_pcIMdiff - pred_pcIMP;
	pred_panel_6_pcTMdiff = pred_pcTM;
	pred_panel_6_pcTMdiff((pred_pcTM<0.5) & (pred_pcTMP<0.5)) = nan;
	pred_panel_6_pcTMdiff = pred_panel_6_pcTMdiff - pred_pcTMP;

	pred_panel_6_pcIMDdiff = pred_pcIM;
	pred_panel_6_pcIMDdiff((pred_pcIM<0.5) & (pred_pcIMDP<0.5)) = nan;
	pred_panel_6_pcIMDdiff = pred_panel_6_pcIMDdiff - pred_pcIMDP;
	pred_panel_6_pcTMDdiff = pred_pcTM;
	pred_panel_6_pcTMDdiff((pred_pcTM<0.5) & (pred_pcTMDP<0.5)) = nan;
	pred_panel_6_pcTMDdiff = pred_panel_6_pcTMDdiff - pred_pcTMDP;
	
	pred_panel_6_rms      = pred_rms;
	pred_panel_6_rmsP     = pred_rmsP;
	pred_panel_6_rmsDP    = pred_rmsDP;	
	pred_panel_6_pc       = pred_pc;
	pred_panel_6_pcP      = pred_pcP;
	pred_panel_6_pcDP     = pred_pcDP;	
	pred_panel_6_truth    = data_test;
	pred_panel_6_ose      = f_ext;

	pred_panel_6_pcIMP    = pred_pcIMP;
	pred_panel_6_pcTMP    = pred_pcTMP;
	pred_panel_6_pcIMDP   = pred_pcIMDP;
	pred_panel_6_pcTMDP   = pred_pcTMDP;

	pred_panel_6_stdIM    = std_truthIM;
	pred_panel_6_stdTM    = std_truthTM;
	pred_panel_6_NstdIM    = Nstd_truthIM;
	pred_panel_6_NstdTM    = Nstd_truthTM;			
	        
	region = 'Laptev';
	lonLim = [105 140];
	latLim = [70 80];
	saveTag = strcat(region,'_',varsUsed,'_q',num2str(embedWin),'_train_100_499');
	saveDir = fullfile('output/predictions/',saveTag,'/');
	S = fullfile(strcat(saveDir,'pred_',iceVar,num2str(fullDataOn),'.mat'));
	load(S)
	pred_panel_7_pcIM     = pred_pcIM;
	pred_panel_7_pcTM     = pred_pcTM;
	pred_panel_7_pcIMdiff = pred_pcIM;
	pred_panel_7_pcIMdiff((pred_pcIM<0.5) & (pred_pcIMP<0.5)) = nan;
	pred_panel_7_pcIMdiff = pred_panel_7_pcIMdiff - pred_pcIMP;
	pred_panel_7_pcTMdiff = pred_pcTM;
	pred_panel_7_pcTMdiff((pred_pcTM<0.5) & (pred_pcTMP<0.5)) = nan;
	pred_panel_7_pcTMdiff = pred_panel_7_pcTMdiff - pred_pcTMP;

	pred_panel_7_pcIMDdiff = pred_pcIM;
	pred_panel_7_pcIMDdiff((pred_pcIM<0.5) & (pred_pcIMDP<0.5)) = nan;
	pred_panel_7_pcIMDdiff = pred_panel_7_pcIMDdiff - pred_pcIMDP;
	pred_panel_7_pcTMDdiff = pred_pcTM;
	pred_panel_7_pcTMDdiff((pred_pcTM<0.5) & (pred_pcTMDP<0.5)) = nan;
	pred_panel_7_pcTMDdiff = pred_panel_7_pcTMDdiff - pred_pcTMDP;
	
	pred_panel_7_rms      = pred_rms;
	pred_panel_7_rmsP     = pred_rmsP;
	pred_panel_7_rmsDP    = pred_rmsDP;	
	pred_panel_7_pc       = pred_pc;
	pred_panel_7_pcP      = pred_pcP;
	pred_panel_7_pcDP     = pred_pcDP;	
	pred_panel_7_truth    = data_test;
	pred_panel_7_ose      = f_ext;

	pred_panel_7_pcIMP    = pred_pcIMP;
	pred_panel_7_pcTMP    = pred_pcTMP;
	pred_panel_7_pcIMDP   = pred_pcIMDP;
	pred_panel_7_pcTMDP   = pred_pcTMDP;

	pred_panel_7_stdIM    = std_truthIM;
	pred_panel_7_stdTM    = std_truthTM;
	pred_panel_7_NstdIM    = Nstd_truthIM;
	pred_panel_7_NstdTM    = Nstd_truthTM;			

	region = 'BarentsKara';
	lonLim = [30 95];
	latLim = [65 80];
	saveTag = strcat(region,'_',varsUsed,'_q',num2str(embedWin),'_train_100_499');
	saveDir = fullfile('output/predictions/',saveTag,'/');
	S = fullfile(strcat(saveDir,'pred_',iceVar,num2str(fullDataOn),'.mat'));
	load(S)
	pred_panel_8_pcIM     = pred_pcIM;
	pred_panel_8_pcTM     = pred_pcTM;
	pred_panel_8_pcIMdiff = pred_pcIM;
	pred_panel_8_pcIMdiff((pred_pcIM<0.5) & (pred_pcIMP<0.5)) = nan;
	pred_panel_8_pcIMdiff = pred_panel_8_pcIMdiff - pred_pcIMP;
	pred_panel_8_pcTMdiff = pred_pcTM;
	pred_panel_8_pcTMdiff((pred_pcTM<0.5) & (pred_pcTMP<0.5)) = nan;
	pred_panel_8_pcTMdiff = pred_panel_8_pcTMdiff - pred_pcTMP;

	pred_panel_8_pcIMDdiff = pred_pcIM;
	pred_panel_8_pcIMDdiff((pred_pcIM<0.5) & (pred_pcIMDP<0.5)) = nan;
	pred_panel_8_pcIMDdiff = pred_panel_8_pcIMDdiff - pred_pcIMDP;
	pred_panel_8_pcTMDdiff = pred_pcTM;
	pred_panel_8_pcTMDdiff((pred_pcTM<0.5) & (pred_pcTMDP<0.5)) = nan;
	pred_panel_8_pcTMDdiff = pred_panel_8_pcTMDdiff - pred_pcTMDP;
	
	pred_panel_8_rms      = pred_rms;
	pred_panel_8_rmsP     = pred_rmsP;
	pred_panel_8_rmsDP    = pred_rmsDP;	
	pred_panel_8_pc       = pred_pc;
	pred_panel_8_pcP      = pred_pcP;
	pred_panel_8_pcDP     = pred_pcDP;	
	pred_panel_8_truth    = data_test;
	pred_panel_8_ose      = f_ext;

	pred_panel_8_pcIMP    = pred_pcIMP;
	pred_panel_8_pcTMP    = pred_pcTMP;
	pred_panel_8_pcIMDP   = pred_pcIMDP;
	pred_panel_8_pcTMDP   = pred_pcTMDP;

	pred_panel_8_stdIM    = std_truthIM;
	pred_panel_8_stdTM    = std_truthTM;
	pred_panel_8_NstdIM    = Nstd_truthIM;
	pred_panel_8_NstdTM    = Nstd_truthTM;		
	        
	region = 'Barents';
	lonLim = [30 60];
	latLim = [65 80];
	saveTag = strcat(region,'_',varsUsed,'_q',num2str(embedWin),'_train_100_499');
	saveDir = fullfile('output/predictions/',saveTag,'/');
	S = fullfile(strcat(saveDir,'pred_',iceVar,num2str(fullDataOn),'.mat'));
	load(S)
	pred_panel_9_pcIM     = pred_pcIM;
	pred_panel_9_pcTM     = pred_pcTM;
	pred_panel_9_pcIMdiff = pred_pcIM;
	pred_panel_9_pcIMdiff((pred_pcIM<0.5) & (pred_pcIMP<0.5)) = nan;
	pred_panel_9_pcIMdiff = pred_panel_9_pcIMdiff - pred_pcIMP;
	pred_panel_9_pcTMdiff = pred_pcTM;
	pred_panel_9_pcTMdiff((pred_pcTM<0.5) & (pred_pcTMP<0.5)) = nan;
	pred_panel_9_pcTMdiff = pred_panel_9_pcTMdiff - pred_pcTMP;

	pred_panel_9_pcIMDdiff = pred_pcIM;
	pred_panel_9_pcIMDdiff((pred_pcIM<0.5) & (pred_pcIMDP<0.5)) = nan;
	pred_panel_9_pcIMDdiff = pred_panel_9_pcIMDdiff - pred_pcIMDP;
	pred_panel_9_pcTMDdiff = pred_pcTM;
	pred_panel_9_pcTMDdiff((pred_pcTM<0.5) & (pred_pcTMDP<0.5)) = nan;
	pred_panel_9_pcTMDdiff = pred_panel_9_pcTMDdiff - pred_pcTMDP;
	
	pred_panel_9_rms      = pred_rms;
	pred_panel_9_rmsP     = pred_rmsP;
	pred_panel_9_rmsDP    = pred_rmsDP;	
	pred_panel_9_pc       = pred_pc;
	pred_panel_9_pcP      = pred_pcP;
	pred_panel_9_pcDP     = pred_pcDP;	
	pred_panel_9_truth    = data_test;
	pred_panel_9_ose      = f_ext;

	pred_panel_9_pcIMP    = pred_pcIMP;
	pred_panel_9_pcTMP    = pred_pcTMP;
	pred_panel_9_pcIMDP   = pred_pcIMDP;
	pred_panel_9_pcTMDP   = pred_pcTMDP;

	pred_panel_9_stdIM    = std_truthIM;
	pred_panel_9_stdTM    = std_truthTM;
	pred_panel_9_NstdIM    = Nstd_truthIM;
	pred_panel_9_NstdTM    = Nstd_truthTM;		
	        
	region = 'Kara';
	lonLim = [60 95];
	latLim = [65 80];
	saveTag = strcat(region,'_',varsUsed,'_q',num2str(embedWin),'_train_100_499');
	saveDir = fullfile('output/predictions/',saveTag,'/');
	S = fullfile(strcat(saveDir,'pred_',iceVar,num2str(fullDataOn),'.mat'));
	load(S)
	pred_panel_10_pcIM     = pred_pcIM;
	pred_panel_10_pcTM     = pred_pcTM;
	pred_panel_10_pcIMdiff = pred_pcIM;
	pred_panel_10_pcIMdiff((pred_pcIM<0.5) & (pred_pcIMP<0.5)) = nan;
	pred_panel_10_pcIMdiff = pred_panel_10_pcIMdiff - pred_pcIMP;
	pred_panel_10_pcTMdiff = pred_pcTM;
	pred_panel_10_pcTMdiff((pred_pcTM<0.5) & (pred_pcTMP<0.5)) = nan;
	pred_panel_10_pcTMdiff = pred_panel_10_pcTMdiff - pred_pcTMP;

	pred_panel_10_pcIMDdiff = pred_pcIM;
	pred_panel_10_pcIMDdiff((pred_pcIM<0.5) & (pred_pcIMDP<0.5)) = nan;
	pred_panel_10_pcIMDdiff = pred_panel_10_pcIMDdiff - pred_pcIMDP;
	pred_panel_10_pcTMDdiff = pred_pcTM;
	pred_panel_10_pcTMDdiff((pred_pcTM<0.5) & (pred_pcTMDP<0.5)) = nan;
	pred_panel_10_pcTMDdiff = pred_panel_10_pcTMDdiff - pred_pcTMDP;
	
	pred_panel_10_rms      = pred_rms;
	pred_panel_10_rmsP     = pred_rmsP;
	pred_panel_10_rmsDP    = pred_rmsDP;	
	pred_panel_10_pc       = pred_pc;
	pred_panel_10_pcP      = pred_pcP;
	pred_panel_10_pcDP     = pred_pcDP;	
	pred_panel_10_truth    = data_test;
	pred_panel_10_ose      = f_ext;

	pred_panel_10_pcIMP    = pred_pcIMP;
	pred_panel_10_pcTMP    = pred_pcTMP;
	pred_panel_10_pcIMDP   = pred_pcIMDP;
	pred_panel_10_pcTMDP   = pred_pcTMDP;

	pred_panel_10_stdIM    = std_truthIM;
	pred_panel_10_stdTM    = std_truthTM;
	pred_panel_10_NstdIM    = Nstd_truthIM;
	pred_panel_10_NstdTM    = Nstd_truthTM;		

	region = 'Greenland';
	lonLim = [325 360];
	latLim = [65 80];
	saveTag = strcat(region,'_',varsUsed,'_q',num2str(embedWin),'_train_100_499');
	saveDir = fullfile('output/predictions/',saveTag,'/');
	S = fullfile(strcat(saveDir,'pred_',iceVar,num2str(fullDataOn),'.mat'));
	load(S)
	pred_panel_11_pcIM     = pred_pcIM;
	pred_panel_11_pcTM     = pred_pcTM;
	pred_panel_11_pcIMdiff = pred_pcIM;
	pred_panel_11_pcIMdiff((pred_pcIM<0.5) & (pred_pcIMP<0.5)) = nan;
	pred_panel_11_pcIMdiff = pred_panel_11_pcIMdiff - pred_pcIMP;
	pred_panel_11_pcTMdiff = pred_pcTM;
	pred_panel_11_pcTMdiff((pred_pcTM<0.5) & (pred_pcTMP<0.5)) = nan;
	pred_panel_11_pcTMdiff = pred_panel_11_pcTMdiff - pred_pcTMP;

	pred_panel_11_pcIMDdiff = pred_pcIM;
	pred_panel_11_pcIMDdiff((pred_pcIM<0.5) & (pred_pcIMDP<0.5)) = nan;
	pred_panel_11_pcIMDdiff = pred_panel_11_pcIMDdiff - pred_pcIMDP;
	pred_panel_11_pcTMDdiff = pred_pcTM;
	pred_panel_11_pcTMDdiff((pred_pcTM<0.5) & (pred_pcTMDP<0.5)) = nan;
	pred_panel_11_pcTMDdiff = pred_panel_11_pcTMDdiff - pred_pcTMDP;
	
	pred_panel_11_rms      = pred_rms;
	pred_panel_11_rmsP     = pred_rmsP;
	pred_panel_11_rmsDP    = pred_rmsDP;	
	pred_panel_11_pc       = pred_pc;
	pred_panel_11_pcP      = pred_pcP;
	pred_panel_11_pcDP     = pred_pcDP;	
	pred_panel_11_truth    = data_test;
	pred_panel_11_ose      = f_ext;

	pred_panel_11_pcIMP    = pred_pcIMP;
	pred_panel_11_pcTMP    = pred_pcTMP;
	pred_panel_11_pcIMDP   = pred_pcIMDP;
	pred_panel_11_pcTMDP   = pred_pcTMDP;

	pred_panel_11_stdIM    = std_truthIM;
	pred_panel_11_stdTM    = std_truthTM;
	pred_panel_11_NstdIM    = Nstd_truthIM;
	pred_panel_11_NstdTM    = Nstd_truthTM;			

	region = 'Baffin';
	lonLim = [280 310];
	latLim = [70 80];
	saveTag = strcat(region,'_',varsUsed,'_q',num2str(embedWin),'_train_100_499');
	saveDir = fullfile('output/predictions/',saveTag,'/');
	S = fullfile(strcat(saveDir,'pred_',iceVar,num2str(fullDataOn),'.mat'));
	load(S)
	pred_panel_12_pcIM     = pred_pcIM;
	pred_panel_12_pcTM     = pred_pcTM;
	pred_panel_12_pcIMdiff = pred_pcIM;
	pred_panel_12_pcIMdiff((pred_pcIM<0.5) & (pred_pcIMP<0.5)) = nan;
	pred_panel_12_pcIMdiff = pred_panel_12_pcIMdiff - pred_pcIMP;
	pred_panel_12_pcTMdiff = pred_pcTM;
	pred_panel_12_pcTMdiff((pred_pcTM<0.5) & (pred_pcTMP<0.5)) = nan;
	pred_panel_12_pcTMdiff = pred_panel_12_pcTMdiff - pred_pcTMP;

	pred_panel_12_pcIMDdiff = pred_pcIM;
	pred_panel_12_pcIMDdiff((pred_pcIM<0.5) & (pred_pcIMDP<0.5)) = nan;
	pred_panel_12_pcIMDdiff = pred_panel_12_pcIMDdiff - pred_pcIMDP;
	pred_panel_12_pcTMDdiff = pred_pcTM;
	pred_panel_12_pcTMDdiff((pred_pcTM<0.5) & (pred_pcTMDP<0.5)) = nan;
	pred_panel_12_pcTMDdiff = pred_panel_12_pcTMDdiff - pred_pcTMDP;
	
	pred_panel_12_rms      = pred_rms;
	pred_panel_12_rmsP     = pred_rmsP;
	pred_panel_12_rmsDP    = pred_rmsDP;	
	pred_panel_12_pc       = pred_pc;
	pred_panel_12_pcP      = pred_pcP;
	pred_panel_12_pcDP     = pred_pcDP;	
	pred_panel_12_truth    = data_test;
	pred_panel_12_ose      = f_ext;

	pred_panel_12_pcIMP    = pred_pcIMP;
	pred_panel_12_pcTMP    = pred_pcTMP;
	pred_panel_12_pcIMDP   = pred_pcIMDP;
	pred_panel_12_pcTMDP   = pred_pcTMDP;

	pred_panel_12_stdIM    = std_truthIM;
	pred_panel_12_stdTM    = std_truthTM;
	pred_panel_12_NstdIM    = Nstd_truthIM;
	pred_panel_12_NstdTM    = Nstd_truthTM;			

	region = 'Labrador';
	lonLim = [290 310];
	latLim = [50 70];
	saveTag = strcat(region,'_',varsUsed,'_q',num2str(embedWin),'_train_100_499');
	saveDir = fullfile('output/predictions/',saveTag,'/');
	S = fullfile(strcat(saveDir,'pred_',iceVar,num2str(fullDataOn),'.mat'));
	load(S)
	pred_panel_13_pcIM     = pred_pcIM;
	pred_panel_13_pcTM     = pred_pcTM;
	pred_panel_13_pcIMdiff = pred_pcIM;
	pred_panel_13_pcIMdiff((pred_pcIM<0.5) & (pred_pcIMP<0.5)) = nan;
	pred_panel_13_pcIMdiff = pred_panel_13_pcIMdiff - pred_pcIMP;
	pred_panel_13_pcTMdiff = pred_pcTM;
	pred_panel_13_pcTMdiff((pred_pcTM<0.5) & (pred_pcTMP<0.5)) = nan;
	pred_panel_13_pcTMdiff = pred_panel_13_pcTMdiff - pred_pcTMP;

	pred_panel_13_pcIMDdiff = pred_pcIM;
	pred_panel_13_pcIMDdiff((pred_pcIM<0.5) & (pred_pcIMDP<0.5)) = nan;
	pred_panel_13_pcIMDdiff = pred_panel_13_pcIMDdiff - pred_pcIMDP;
	pred_panel_13_pcTMDdiff = pred_pcTM;
	pred_panel_13_pcTMDdiff((pred_pcTM<0.5) & (pred_pcTMDP<0.5)) = nan;
	pred_panel_13_pcTMDdiff = pred_panel_13_pcTMDdiff - pred_pcTMDP;
	
	pred_panel_13_rms      = pred_rms;
	pred_panel_13_rmsP     = pred_rmsP;
	pred_panel_13_rmsDP    = pred_rmsDP;	
	pred_panel_13_pc       = pred_pc;
	pred_panel_13_pcP      = pred_pcP;
	pred_panel_13_pcDP     = pred_pcDP;	
	pred_panel_13_truth    = data_test;
	pred_panel_13_ose      = f_ext;

	pred_panel_13_pcIMP    = pred_pcIMP;
	pred_panel_13_pcTMP    = pred_pcTMP;
	pred_panel_13_pcIMDP   = pred_pcIMDP;
	pred_panel_13_pcTMDP   = pred_pcTMDP;

	pred_panel_13_stdIM    = std_truthIM;
	pred_panel_13_stdTM    = std_truthTM;
	pred_panel_13_NstdIM    = Nstd_truthIM;
	pred_panel_13_NstdTM    = Nstd_truthTM;		

	region = 'Hudson';
	lonLim = [265 285];
	latLim = [55 65];
	saveTag = strcat(region,'_',varsUsed,'_q',num2str(embedWin),'_train_100_499');
	saveDir = fullfile('output/predictions/',saveTag,'/');
	S = fullfile(strcat(saveDir,'pred_',iceVar,num2str(fullDataOn),'.mat'));
	load(S)
	pred_panel_14_pcIM     = pred_pcIM;
	pred_panel_14_pcTM     = pred_pcTM;
	pred_panel_14_pcIMdiff = pred_pcIM;
	pred_panel_14_pcIMdiff((pred_pcIM<0.5) & (pred_pcIMP<0.5)) = nan;
	pred_panel_14_pcIMdiff = pred_panel_14_pcIMdiff - pred_pcIMP;
	pred_panel_14_pcTMdiff = pred_pcTM;
	pred_panel_14_pcTMdiff((pred_pcTM<0.5) & (pred_pcTMP<0.5)) = nan;
	pred_panel_14_pcTMdiff = pred_panel_14_pcTMdiff - pred_pcTMP;

	pred_panel_14_pcIMDdiff = pred_pcIM;
	pred_panel_14_pcIMDdiff((pred_pcIM<0.5) & (pred_pcIMDP<0.5)) = nan;
	pred_panel_14_pcIMDdiff = pred_panel_14_pcIMDdiff - pred_pcIMDP;
	pred_panel_14_pcTMDdiff = pred_pcTM;
	pred_panel_14_pcTMDdiff((pred_pcTM<0.5) & (pred_pcTMDP<0.5)) = nan;
	pred_panel_14_pcTMDdiff = pred_panel_14_pcTMDdiff - pred_pcTMDP;
	
	pred_panel_14_rms      = pred_rms;
	pred_panel_14_rmsP     = pred_rmsP;
	pred_panel_14_rmsDP    = pred_rmsDP;	
	pred_panel_14_pc       = pred_pc;
	pred_panel_14_pcP      = pred_pcP;
	pred_panel_14_pcDP     = pred_pcDP;	
	pred_panel_14_truth    = data_test;
	pred_panel_14_ose      = f_ext;

	pred_panel_14_pcIMP    = pred_pcIMP;
	pred_panel_14_pcTMP    = pred_pcTMP;
	pred_panel_14_pcIMDP   = pred_pcIMDP;
	pred_panel_14_pcTMDP   = pred_pcTMDP;

	pred_panel_14_stdIM    = std_truthIM;
	pred_panel_14_stdTM    = std_truthTM;
	pred_panel_14_NstdIM    = Nstd_truthIM;
	pred_panel_14_NstdTM    = Nstd_truthTM;		
	    
	region = 'Bering';
	lonLim = [165 200];
	latLim = [55 65];
	saveTag = strcat(region,'_',varsUsed,'_q',num2str(embedWin),'_train_100_499');
	saveDir = fullfile('output/predictions/',saveTag,'/');
	S = fullfile(strcat(saveDir,'pred_',iceVar,num2str(fullDataOn),'.mat'));
	load(S)
	pred_panel_15_pcIM     = pred_pcIM;
	pred_panel_15_pcTM     = pred_pcTM;
	pred_panel_15_pcIMdiff = pred_pcIM;
	pred_panel_15_pcIMdiff((pred_pcIM<0.5) & (pred_pcIMP<0.5)) = nan;
	pred_panel_15_pcIMdiff = pred_panel_15_pcIMdiff - pred_pcIMP;
	pred_panel_15_pcTMdiff = pred_pcTM;
	pred_panel_15_pcTMdiff((pred_pcTM<0.5) & (pred_pcTMP<0.5)) = nan;
	pred_panel_15_pcTMdiff = pred_panel_15_pcTMdiff - pred_pcTMP;

	pred_panel_15_pcIMDdiff = pred_pcIM;
	pred_panel_15_pcIMDdiff((pred_pcIM<0.5) & (pred_pcIMDP<0.5)) = nan;
	pred_panel_15_pcIMDdiff = pred_panel_15_pcIMDdiff - pred_pcIMDP;
	pred_panel_15_pcTMDdiff = pred_pcTM;
	pred_panel_15_pcTMDdiff((pred_pcTM<0.5) & (pred_pcTMDP<0.5)) = nan;
	pred_panel_15_pcTMDdiff = pred_panel_15_pcTMDdiff - pred_pcTMDP;
	
	pred_panel_15_rms      = pred_rms;
	pred_panel_15_rmsP     = pred_rmsP;
	pred_panel_15_rmsDP    = pred_rmsDP;	
	pred_panel_15_pc       = pred_pc;
	pred_panel_15_pcP      = pred_pcP;
	pred_panel_15_pcDP     = pred_pcDP;	
	pred_panel_15_truth    = data_test;
	pred_panel_15_ose      = f_ext;

	pred_panel_15_pcIMP    = pred_pcIMP;
	pred_panel_15_pcTMP    = pred_pcTMP;
	pred_panel_15_pcIMDP   = pred_pcIMDP;
	pred_panel_15_pcTMDP   = pred_pcTMDP;

	pred_panel_15_stdIM    = std_truthIM;
	pred_panel_15_stdTM    = std_truthTM;
	pred_panel_15_NstdIM    = Nstd_truthIM;
	pred_panel_15_NstdTM    = Nstd_truthTM;			
	        
	region = 'Okhotsk';
	lonLim = [135 165];
	latLim = [45 65];
	saveTag = strcat(region,'_',varsUsed,'_q',num2str(embedWin),'_train_100_499');
	saveDir = fullfile('output/predictions/',saveTag,'/');
	S = fullfile(strcat(saveDir,'pred_',iceVar,num2str(fullDataOn),'.mat'));
	load(S)
	pred_panel_16_pcIM     = pred_pcIM;
	pred_panel_16_pcTM     = pred_pcTM;
	pred_panel_16_pcIMdiff = pred_pcIM;
	pred_panel_16_pcIMdiff((pred_pcIM<0.5) & (pred_pcIMP<0.5)) = nan;
	pred_panel_16_pcIMdiff = pred_panel_16_pcIMdiff - pred_pcIMP;
	pred_panel_16_pcTMdiff = pred_pcTM;
	pred_panel_16_pcTMdiff((pred_pcTM<0.5) & (pred_pcTMP<0.5)) = nan;
	pred_panel_16_pcTMdiff = pred_panel_16_pcTMdiff - pred_pcTMP;

	pred_panel_16_pcIMDdiff = pred_pcIM;
	pred_panel_16_pcIMDdiff((pred_pcIM<0.5) & (pred_pcIMDP<0.5)) = nan;
	pred_panel_16_pcIMDdiff = pred_panel_16_pcIMDdiff - pred_pcIMDP;
	pred_panel_16_pcTMDdiff = pred_pcTM;
	pred_panel_16_pcTMDdiff((pred_pcTM<0.5) & (pred_pcTMDP<0.5)) = nan;
	pred_panel_16_pcTMDdiff = pred_panel_16_pcTMDdiff - pred_pcTMDP;
	
	pred_panel_16_rms      = pred_rms;
	pred_panel_16_rmsP     = pred_rmsP;
	pred_panel_16_rmsDP    = pred_rmsDP;	
	pred_panel_16_pc       = pred_pc;
	pred_panel_16_pcP      = pred_pcP;
	pred_panel_16_pcDP     = pred_pcDP;	
	pred_panel_16_truth    = data_test;
	pred_panel_16_ose      = f_ext;

	pred_panel_16_pcIMP    = pred_pcIMP;
	pred_panel_16_pcTMP    = pred_pcTMP;
	pred_panel_16_pcIMDP   = pred_pcIMDP;
	pred_panel_16_pcTMDP   = pred_pcTMDP;

	pred_panel_16_stdIM    = std_truthIM;
	pred_panel_16_stdTM    = std_truthTM;
	pred_panel_16_NstdIM    = Nstd_truthIM;
	pred_panel_16_NstdTM    = Nstd_truthTM;		

	region =  'CentralArctic';
	lonLim = [0 360];
	latLim = [70 90];
	saveTag = strcat(region,'_',varsUsed,'_q',num2str(embedWin),'_train_100_499');
	saveDir = fullfile('output/predictions/',saveTag,'/');
	S = fullfile(strcat(saveDir,'pred_',iceVar,num2str(fullDataOn),'.mat'));
	load(S)
	pred_panel_17_pcIM     = pred_pcIM;
	pred_panel_17_pcTM     = pred_pcTM;
	pred_panel_17_pcIMdiff = pred_pcIM;
	pred_panel_17_pcIMdiff((pred_pcIM<0.5) & (pred_pcIMP<0.5)) = nan;
	pred_panel_17_pcIMdiff = pred_panel_17_pcIMdiff - pred_pcIMP;
	pred_panel_17_pcTMdiff = pred_pcTM;
	pred_panel_17_pcTMdiff((pred_pcTM<0.5) & (pred_pcTMP<0.5)) = nan;
	pred_panel_17_pcTMdiff = pred_panel_17_pcTMdiff - pred_pcTMP;

	pred_panel_17_pcIMDdiff = pred_pcIM;
	pred_panel_17_pcIMDdiff((pred_pcIM<0.5) & (pred_pcIMDP<0.5)) = nan;
	pred_panel_17_pcIMDdiff = pred_panel_17_pcIMDdiff - pred_pcIMDP;
	pred_panel_17_pcTMDdiff = pred_pcTM;
	pred_panel_17_pcTMDdiff((pred_pcTM<0.5) & (pred_pcTMDP<0.5)) = nan;
	pred_panel_17_pcTMDdiff = pred_panel_17_pcTMDdiff - pred_pcTMDP;

	pred_panel_17_rms      = pred_rms;
	pred_panel_17_rmsP     = pred_rmsP;
	pred_panel_17_rmsDP    = pred_rmsDP;	
	pred_panel_17_pc       = pred_pc;
	pred_panel_17_pcP      = pred_pcP;
	pred_panel_17_pcDP     = pred_pcDP;	
	pred_panel_17_truth    = data_test;
	pred_panel_17_ose      = f_ext;

	pred_panel_17_pcIMP    = pred_pcIMP;
	pred_panel_17_pcTMP    = pred_pcTMP;
	pred_panel_17_pcIMDP   = pred_pcIMDP;
	pred_panel_17_pcTMDP   = pred_pcTMDP;

	pred_panel_17_stdIM    = std_truthIM;
	pred_panel_17_stdTM    = std_truthTM;
	pred_panel_17_NstdIM    = Nstd_truthIM;
	pred_panel_17_NstdTM    = Nstd_truthTM;		


	if embedWin == 6
	    mM = [6, 7, 8, 9, 10, 11, 12, 1, 2, 3, 4, 5];
	elseif embedWin == 12 | embedWin == 24
	    mM = [11, 12, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
	end

	pred_panel_shift_1_pcIM     = pred_panel_1_pcIM(mM,:);
	pred_panel_shift_1_pcTM     = pred_panel_1_pcTM(mM,:);
	pred_panel_shift_1_pcIMdiff = pred_panel_1_pcIMdiff(mM,:);
	pred_panel_shift_1_pcTMdiff = pred_panel_1_pcTMdiff(mM,:);
	pred_panel_shift_2_pcIM     = pred_panel_2_pcIM(mM,:);
	pred_panel_shift_2_pcTM     = pred_panel_2_pcTM(mM,:);
	pred_panel_shift_2_pcIMdiff = pred_panel_2_pcIMdiff(mM,:);
	pred_panel_shift_2_pcTMdiff = pred_panel_2_pcTMdiff(mM,:);
	pred_panel_shift_3_pcIM     = pred_panel_3_pcIM(mM,:);
	pred_panel_shift_3_pcTM     = pred_panel_3_pcTM(mM,:);
	pred_panel_shift_3_pcIMdiff = pred_panel_3_pcIMdiff(mM,:);
	pred_panel_shift_3_pcTMdiff = pred_panel_3_pcTMdiff(mM,:);
	pred_panel_shift_4_pcIM     = pred_panel_4_pcIM(mM,:);
	pred_panel_shift_4_pcTM     = pred_panel_4_pcTM(mM,:);
	pred_panel_shift_4_pcIMdiff = pred_panel_4_pcIMdiff(mM,:);
	pred_panel_shift_4_pcTMdiff = pred_panel_4_pcTMdiff(mM,:);
	pred_panel_shift_5_pcIM     = pred_panel_5_pcIM(mM,:);
	pred_panel_shift_5_pcTM     = pred_panel_5_pcTM(mM,:);
	pred_panel_shift_5_pcIMdiff = pred_panel_5_pcIMdiff(mM,:);
	pred_panel_shift_5_pcTMdiff = pred_panel_5_pcTMdiff(mM,:);
	pred_panel_shift_6_pcIM     = pred_panel_6_pcIM(mM,:);
	pred_panel_shift_6_pcTM     = pred_panel_6_pcTM(mM,:);
	pred_panel_shift_6_pcIMdiff = pred_panel_6_pcIMdiff(mM,:);
	pred_panel_shift_6_pcTMdiff = pred_panel_6_pcTMdiff(mM,:);
	pred_panel_shift_7_pcIM     = pred_panel_7_pcIM(mM,:);
	pred_panel_shift_7_pcTM     = pred_panel_7_pcTM(mM,:);
	pred_panel_shift_7_pcIMdiff = pred_panel_7_pcIMdiff(mM,:);
	pred_panel_shift_7_pcTMdiff = pred_panel_7_pcTMdiff(mM,:);
	pred_panel_shift_8_pcIM     = pred_panel_8_pcIM(mM,:);
	pred_panel_shift_8_pcTM     = pred_panel_8_pcTM(mM,:);
	pred_panel_shift_8_pcIMdiff = pred_panel_8_pcIMdiff(mM,:);
	pred_panel_shift_8_pcTMdiff = pred_panel_8_pcTMdiff(mM,:);
	pred_panel_shift_9_pcIM     = pred_panel_9_pcIM(mM,:);
	pred_panel_shift_9_pcTM     = pred_panel_9_pcTM(mM,:);
	pred_panel_shift_9_pcIMdiff = pred_panel_9_pcIMdiff(mM,:);
	pred_panel_shift_9_pcTMdiff = pred_panel_9_pcTMdiff(mM,:);
	pred_panel_shift_10_pcIM     = pred_panel_10_pcIM(mM,:);
	pred_panel_shift_10_pcTM     = pred_panel_10_pcTM(mM,:);
	pred_panel_shift_10_pcIMdiff = pred_panel_10_pcIMdiff(mM,:);
	pred_panel_shift_10_pcTMdiff = pred_panel_10_pcTMdiff(mM,:);
	pred_panel_shift_11_pcIM     = pred_panel_11_pcIM(mM,:);
	pred_panel_shift_11_pcTM     = pred_panel_11_pcTM(mM,:);
	pred_panel_shift_11_pcIMdiff = pred_panel_11_pcIMdiff(mM,:);
	pred_panel_shift_11_pcTMdiff = pred_panel_11_pcTMdiff(mM,:);
	pred_panel_shift_12_pcIM     = pred_panel_12_pcIM(mM,:);
	pred_panel_shift_12_pcTM     = pred_panel_12_pcTM(mM,:);
	pred_panel_shift_12_pcIMdiff = pred_panel_12_pcIMdiff(mM,:);
	pred_panel_shift_12_pcTMdiff = pred_panel_12_pcTMdiff(mM,:);
	pred_panel_shift_13_pcIM     = pred_panel_13_pcIM(mM,:);
	pred_panel_shift_13_pcTM     = pred_panel_13_pcTM(mM,:);
	pred_panel_shift_13_pcIMdiff = pred_panel_13_pcIMdiff(mM,:);
	pred_panel_shift_13_pcTMdiff = pred_panel_13_pcTMdiff(mM,:);
	pred_panel_shift_14_pcIM     = pred_panel_14_pcIM(mM,:);
	pred_panel_shift_14_pcTM     = pred_panel_14_pcTM(mM,:);
	pred_panel_shift_14_pcIMdiff = pred_panel_14_pcIMdiff(mM,:);
	pred_panel_shift_14_pcTMdiff = pred_panel_14_pcTMdiff(mM,:);
	pred_panel_shift_15_pcIM     = pred_panel_15_pcIM(mM,:);
	pred_panel_shift_15_pcTM     = pred_panel_15_pcTM(mM,:);
	pred_panel_shift_15_pcIMdiff = pred_panel_15_pcIMdiff(mM,:);
	pred_panel_shift_15_pcTMdiff = pred_panel_15_pcTMdiff(mM,:);
	pred_panel_shift_16_pcIM     = pred_panel_16_pcIM(mM,:);
	pred_panel_shift_16_pcTM     = pred_panel_16_pcTM(mM,:);
	pred_panel_shift_16_pcIMdiff = pred_panel_16_pcIMdiff(mM,:);
	pred_panel_shift_16_pcTMdiff = pred_panel_16_pcTMdiff(mM,:);
	pred_panel_shift_17_pcIM     = pred_panel_17_pcIM(mM,:);
	pred_panel_shift_17_pcTM     = pred_panel_17_pcTM(mM,:);
	pred_panel_shift_17_pcIMdiff = pred_panel_17_pcIMdiff(mM,:);
	pred_panel_shift_17_pcTMdiff = pred_panel_17_pcTMdiff(mM,:);	

	% damped persistence
	pred_panel_shift_1_pcIMDdiff = pred_panel_1_pcIMDdiff(mM,:);
	pred_panel_shift_1_pcTMDdiff = pred_panel_1_pcTMDdiff(mM,:);
	pred_panel_shift_2_pcIMDdiff = pred_panel_2_pcIMDdiff(mM,:);
	pred_panel_shift_2_pcTMDdiff = pred_panel_2_pcTMDdiff(mM,:);
	pred_panel_shift_3_pcIMDdiff = pred_panel_3_pcIMDdiff(mM,:);
	pred_panel_shift_3_pcTMDdiff = pred_panel_3_pcTMDdiff(mM,:);
	pred_panel_shift_4_pcIMDdiff = pred_panel_4_pcIMDdiff(mM,:);
	pred_panel_shift_4_pcTMDdiff = pred_panel_4_pcTMDdiff(mM,:);
	pred_panel_shift_5_pcIMDdiff = pred_panel_5_pcIMDdiff(mM,:);
	pred_panel_shift_5_pcTMDdiff = pred_panel_5_pcTMDdiff(mM,:);
	pred_panel_shift_6_pcIMDdiff = pred_panel_6_pcIMDdiff(mM,:);
	pred_panel_shift_6_pcTMDdiff = pred_panel_6_pcTMDdiff(mM,:);
	pred_panel_shift_7_pcIMDdiff = pred_panel_7_pcIMDdiff(mM,:);
	pred_panel_shift_7_pcTMDdiff = pred_panel_7_pcTMDdiff(mM,:);
	pred_panel_shift_8_pcIMDdiff = pred_panel_8_pcIMDdiff(mM,:);
	pred_panel_shift_8_pcTMDdiff = pred_panel_8_pcTMDdiff(mM,:);
	pred_panel_shift_9_pcIMDdiff = pred_panel_9_pcIMDdiff(mM,:);
	pred_panel_shift_9_pcTMDdiff = pred_panel_9_pcTMDdiff(mM,:);
	pred_panel_shift_10_pcIMDdiff = pred_panel_10_pcIMDdiff(mM,:);
	pred_panel_shift_10_pcTMDdiff = pred_panel_10_pcTMDdiff(mM,:);
	pred_panel_shift_11_pcIMDdiff = pred_panel_11_pcIMDdiff(mM,:);
	pred_panel_shift_11_pcTMDdiff = pred_panel_11_pcTMDdiff(mM,:);
	pred_panel_shift_12_pcIMDdiff = pred_panel_12_pcIMDdiff(mM,:);
	pred_panel_shift_12_pcTMDdiff = pred_panel_12_pcTMDdiff(mM,:);
	pred_panel_shift_13_pcIMDdiff = pred_panel_13_pcIMDdiff(mM,:);
	pred_panel_shift_13_pcTMDdiff = pred_panel_13_pcTMDdiff(mM,:);
	pred_panel_shift_14_pcIMDdiff = pred_panel_14_pcIMDdiff(mM,:);
	pred_panel_shift_14_pcTMDdiff = pred_panel_14_pcTMDdiff(mM,:);
	pred_panel_shift_15_pcIMDdiff = pred_panel_15_pcIMDdiff(mM,:);
	pred_panel_shift_15_pcTMDdiff = pred_panel_15_pcTMDdiff(mM,:);
	pred_panel_shift_16_pcIMDdiff = pred_panel_16_pcIMDdiff(mM,:);
	pred_panel_shift_16_pcTMDdiff = pred_panel_16_pcTMDdiff(mM,:);
	pred_panel_shift_17_pcIMDdiff = pred_panel_17_pcIMDdiff(mM,:);
	pred_panel_shift_17_pcTMDdiff = pred_panel_17_pcTMDdiff(mM,:);	

	pred_panel_shift_1_pcIMDP = pred_panel_1_pcIMDP(mM,:);
	pred_panel_shift_1_pcTMDP = pred_panel_1_pcTMDP(mM,:);
	pred_panel_shift_2_pcIMDP = pred_panel_2_pcIMDP(mM,:);
	pred_panel_shift_2_pcTMDP = pred_panel_2_pcTMDP(mM,:);
	pred_panel_shift_3_pcIMDP = pred_panel_3_pcIMDP(mM,:);
	pred_panel_shift_3_pcTMDP = pred_panel_3_pcTMDP(mM,:);
	pred_panel_shift_4_pcIMDP = pred_panel_4_pcIMDP(mM,:);
	pred_panel_shift_4_pcTMDP = pred_panel_4_pcTMDP(mM,:);
	pred_panel_shift_5_pcIMDP = pred_panel_5_pcIMDP(mM,:);
	pred_panel_shift_5_pcTMDP = pred_panel_5_pcTMDP(mM,:);
	pred_panel_shift_6_pcIMDP = pred_panel_6_pcIMDP(mM,:);
	pred_panel_shift_6_pcTMDP = pred_panel_6_pcTMDP(mM,:);
	pred_panel_shift_7_pcIMDP = pred_panel_7_pcIMDP(mM,:);
	pred_panel_shift_7_pcTMDP = pred_panel_7_pcTMDP(mM,:);
	pred_panel_shift_8_pcIMDP = pred_panel_8_pcIMDP(mM,:);
	pred_panel_shift_8_pcTMDP = pred_panel_8_pcTMDP(mM,:);
	pred_panel_shift_9_pcIMDP = pred_panel_9_pcIMDP(mM,:);
	pred_panel_shift_9_pcTMDP = pred_panel_9_pcTMDP(mM,:);
	pred_panel_shift_10_pcIMDP = pred_panel_10_pcIMDP(mM,:);
	pred_panel_shift_10_pcTMDP = pred_panel_10_pcTMDP(mM,:);
	pred_panel_shift_11_pcIMDP = pred_panel_11_pcIMDP(mM,:);
	pred_panel_shift_11_pcTMDP = pred_panel_11_pcTMDP(mM,:);
	pred_panel_shift_12_pcIMDP = pred_panel_12_pcIMDP(mM,:);
	pred_panel_shift_12_pcTMDP = pred_panel_12_pcTMDP(mM,:);
	pred_panel_shift_13_pcIMDP = pred_panel_13_pcIMDP(mM,:);
	pred_panel_shift_13_pcTMDP = pred_panel_13_pcTMDP(mM,:);
	pred_panel_shift_14_pcIMDP = pred_panel_14_pcIMDP(mM,:);
	pred_panel_shift_14_pcTMDP = pred_panel_14_pcTMDP(mM,:);
	pred_panel_shift_15_pcIMDP = pred_panel_15_pcIMDP(mM,:);
	pred_panel_shift_15_pcTMDP = pred_panel_15_pcTMDP(mM,:);
	pred_panel_shift_16_pcIMDP = pred_panel_16_pcIMDP(mM,:);
	pred_panel_shift_16_pcTMDP = pred_panel_16_pcTMDP(mM,:);
	pred_panel_shift_17_pcIMDP = pred_panel_17_pcIMDP(mM,:);
	pred_panel_shift_17_pcTMDP = pred_panel_17_pcTMDP(mM,:);

	pred_panel_shift_1_stdIM = pred_panel_1_stdIM(mM,:);
	pred_panel_shift_1_stdTM = pred_panel_1_stdTM(mM,:);
	pred_panel_shift_2_stdIM = pred_panel_2_stdIM(mM,:);
	pred_panel_shift_2_stdTM = pred_panel_2_stdTM(mM,:);
	pred_panel_shift_3_stdIM = pred_panel_3_stdIM(mM,:);
	pred_panel_shift_3_stdTM = pred_panel_3_stdTM(mM,:);
	pred_panel_shift_4_stdIM = pred_panel_4_stdIM(mM,:);
	pred_panel_shift_4_stdTM = pred_panel_4_stdTM(mM,:);
	pred_panel_shift_5_stdIM = pred_panel_5_stdIM(mM,:);
	pred_panel_shift_5_stdTM = pred_panel_5_stdTM(mM,:);
	pred_panel_shift_6_stdIM = pred_panel_6_stdIM(mM,:);
	pred_panel_shift_6_stdTM = pred_panel_6_stdTM(mM,:);
	pred_panel_shift_7_stdIM = pred_panel_7_stdIM(mM,:);
	pred_panel_shift_7_stdTM = pred_panel_7_stdTM(mM,:);
	pred_panel_shift_8_stdIM = pred_panel_8_stdIM(mM,:);
	pred_panel_shift_8_stdTM = pred_panel_8_stdTM(mM,:);
	pred_panel_shift_9_stdIM = pred_panel_9_stdIM(mM,:);
	pred_panel_shift_9_stdTM = pred_panel_9_stdTM(mM,:);
	pred_panel_shift_10_stdIM = pred_panel_10_stdIM(mM,:);
	pred_panel_shift_10_stdTM = pred_panel_10_stdTM(mM,:);
	pred_panel_shift_11_stdIM = pred_panel_11_stdIM(mM,:);
	pred_panel_shift_11_stdTM = pred_panel_11_stdTM(mM,:);
	pred_panel_shift_12_stdIM = pred_panel_12_stdIM(mM,:);
	pred_panel_shift_12_stdTM = pred_panel_12_stdTM(mM,:);
	pred_panel_shift_13_stdIM = pred_panel_13_stdIM(mM,:);
	pred_panel_shift_13_stdTM = pred_panel_13_stdTM(mM,:);
	pred_panel_shift_14_stdIM = pred_panel_14_stdIM(mM,:);
	pred_panel_shift_14_stdTM = pred_panel_14_stdTM(mM,:);
	pred_panel_shift_15_stdIM = pred_panel_15_stdIM(mM,:);
	pred_panel_shift_15_stdTM = pred_panel_15_stdTM(mM,:);
	pred_panel_shift_16_stdIM = pred_panel_16_stdIM(mM,:);
	pred_panel_shift_16_stdTM = pred_panel_16_stdTM(mM,:);
	pred_panel_shift_17_stdIM = pred_panel_17_stdIM(mM,:);
	pred_panel_shift_17_stdTM = pred_panel_17_stdTM(mM,:);
	pred_panel_shift_1_NstdIM = pred_panel_1_NstdIM(mM,:);
	pred_panel_shift_1_NstdTM = pred_panel_1_NstdTM(mM,:);
	pred_panel_shift_2_NstdIM = pred_panel_2_NstdIM(mM,:);
	pred_panel_shift_2_NstdTM = pred_panel_2_NstdTM(mM,:);
	pred_panel_shift_3_NstdIM = pred_panel_3_NstdIM(mM,:);
	pred_panel_shift_3_NstdTM = pred_panel_3_NstdTM(mM,:);
	pred_panel_shift_4_NstdIM = pred_panel_4_NstdIM(mM,:);
	pred_panel_shift_4_NstdTM = pred_panel_4_NstdTM(mM,:);
	pred_panel_shift_5_NstdIM = pred_panel_5_NstdIM(mM,:);
	pred_panel_shift_5_NstdTM = pred_panel_5_NstdTM(mM,:);
	pred_panel_shift_6_NstdIM = pred_panel_6_NstdIM(mM,:);
	pred_panel_shift_6_NstdTM = pred_panel_6_NstdTM(mM,:);
	pred_panel_shift_7_NstdIM = pred_panel_7_NstdIM(mM,:);
	pred_panel_shift_7_NstdTM = pred_panel_7_NstdTM(mM,:);
	pred_panel_shift_8_NstdIM = pred_panel_8_NstdIM(mM,:);
	pred_panel_shift_8_NstdTM = pred_panel_8_NstdTM(mM,:);
	pred_panel_shift_9_NstdIM = pred_panel_9_NstdIM(mM,:);
	pred_panel_shift_9_NstdTM = pred_panel_9_NstdTM(mM,:);
	pred_panel_shift_10_NstdIM = pred_panel_10_NstdIM(mM,:);
	pred_panel_shift_10_NstdTM = pred_panel_10_NstdTM(mM,:);
	pred_panel_shift_11_NstdIM = pred_panel_11_NstdIM(mM,:);
	pred_panel_shift_11_NstdTM = pred_panel_11_NstdTM(mM,:);
	pred_panel_shift_12_NstdIM = pred_panel_12_NstdIM(mM,:);
	pred_panel_shift_12_NstdTM = pred_panel_12_NstdTM(mM,:);
	pred_panel_shift_13_NstdIM = pred_panel_13_NstdIM(mM,:);
	pred_panel_shift_13_NstdTM = pred_panel_13_NstdTM(mM,:);
	pred_panel_shift_14_NstdIM = pred_panel_14_NstdIM(mM,:);
	pred_panel_shift_14_NstdTM = pred_panel_14_NstdTM(mM,:);
	pred_panel_shift_15_NstdIM = pred_panel_15_NstdIM(mM,:);
	pred_panel_shift_15_NstdTM = pred_panel_15_NstdTM(mM,:);
	pred_panel_shift_16_NstdIM = pred_panel_16_NstdIM(mM,:);
	pred_panel_shift_16_NstdTM = pred_panel_16_NstdTM(mM,:);
	pred_panel_shift_17_NstdIM = pred_panel_17_NstdIM(mM,:);
	pred_panel_shift_17_NstdTM = pred_panel_17_NstdTM(mM,:);		

	S = fullfile(strcat(compDataDir,'comp_data',num2str(fullDataOn),'.mat'));
	save(S);
