#!/usr/bin/sh
#SBATCH -A ACD114107
#SBATCH -J r_test-ngscourse

## ngscourse
#SBATCH -p ngscourse
#SBATCH -c 2
#SBATCH --mem=13g

#SBATCH -o r_test-ngscourse_out.log     # Path to the standard output file
#SBATCH -e r_test-ngscourse_err.log     # Path to the standard error ouput file

####################################
####################################
##SBATCH --mail-user=xxx@yyy.zz	        # email
####################################
####################################

#SBATCH --mail-type=BEGIN,END           # 指定送出email時機 可為NONE, BEGIN, END, FAIL, REQUEUE, ALL

#### your scripts

ml load biology
ml load R/4.4.1

Rscript r_test.R --vanilla
