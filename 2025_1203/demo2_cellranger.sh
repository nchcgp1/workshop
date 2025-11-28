#!/usr/bin/sh
#SBATCH -A ACD114107
#SBATCH -J cellranger_test-ngscourse92G

## ngscourse92G
#SBATCH -p ngscourse92G
#SBATCH -c 14
#SBATCH --mem=92g

#SBATCH -o cellranger_test-ngscourse92G_out.log          # Path to the standard output file
#SBATCH -e cellranger_test-ngscourse92G_err.log          # Path to the standard error ouput file

####################################
####################################
##SBATCH --mail-user=xxx@yyy.zzz         # email
####################################
####################################

#SBATCH --mail-type=BEGIN,END              # 指定送出email時機 可為NONE, BEGIN, END, FAIL, REQUEUE, ALL

#### your scripts

ml load biology
ml load CellRanger/9.0.1

cd 
cellranger aggr --id=cat_aggr-test --output-dir=./cat_aggr-test --csv=/opt/ohpc/Taiwania3/pkg/biology/zzz_sctest/cat_libraries.csv
