# PMDASNF
Inferring disease-related microRNAs via PMDASNF

## How to use the tool?

Just run 'PredSNFMDA_tool.m' to produce the result.

## Data set：
disease_semantic_s1.mat :  disease semantic similarity 1(383×383)

disease_semantic_s2.mat :  disease semantic similarity 2(383×383)

miRNA_function_s.mat ：microRNA functional similarity(495×495)

interaction.mat：microRNA-disease associations  matrix(383×495)

disease number.xlsx : ID of all diseases

miRNA number.xlsx : ID of all microRNAs

## Program：

PredSNFMDA_tool.m：main interface for running the program

gaussiansimilarity.m：calculate Gaussian interaction profile kernel similarity for microRNA and disease

SNF.m：fusion of multiple biological information networks

NCPMDA.m：calculate microRNA and disease space projection socres

Rank.m：sorting disease-related microRNAs scores

Write_file.m：write results to excel

## Operating environment：

software：matlab 2016a or later

processor：Intel(R) Xeon(R) CPU E5-1630 v4 @3.70GHz

recommended memory：8G






