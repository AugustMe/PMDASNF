clc;
clear;
tic;
%% 
load interaction.mat 
[nd,nm]=size(interaction);
[kd,km] = gaussiansimilarity(interaction,nd,nm);
load dataset/disease_semantic_s1.mat;
load dataset/disease_semantic_s2.mat;
load dataset/miRNA_function_s.mat;

DS = SNF({disease_semantic_s1,disease_semantic_s2,kd},15,10,0.1);
MS = SNF({miRNA_function_s,km},15,10,0.1);

% calculate the score F
[F] = NCPMDA(MS,DS,interaction');

[~,miRNA_list,~] = xlsread('1.miRNA-disease association data\miRNA number.xlsx');
[~,disease_list,~] = xlsread('.\1.miRNA-disease association data\disease number.xlsx');

% rank 
[F,LP_rank_known] =Rank( F', interaction' ,miRNA_list,disease_list);
Write_file( F );

toc;