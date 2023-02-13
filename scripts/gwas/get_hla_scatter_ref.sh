#! /bin/bash
#SBATCH --mem=5G
#SBATCH -o ./out/%A.%x.%a.out # STDOUT
#SBATCH -e ./err/%A.%x.%a.err # STDERR
#SBATCH --array=1-92%92
#SBATCH --partition=carter-compute


# Author: Meghana Pagadala
# Date: 08/31/2020
#
# Description:
# The following is a script using PLINK to run PLINK glm method on IP components identified 
#
#
#

phenos=(HLA.F.2 HLA.DRB1.3 BTN3A2.0 HLA.DQB2.2 HLA.H.1 MICA.0 HLA.DQB1.3 MICB.2 HLA.A.2 HLA.DRB5.7 MICB.3 HLA.H.0 MICB.4 HLA.A.3 HLA.C.3 HLA.DQA1.1 HLA.DQA2.0 HLA.A.1 MICB.1 BTN3A2.1 HLA.DQB2.1 HLA.DQB1.0 HLA.G.3 TAP2.3 HLA.DRB5.1 HLA.G.4 HLA.DQB2.4 HLA.DQA2.1 HLA.B.3 HLA.DRB5.6 HLA.DRB1.1 TAP2.2 HLA.DQB2.3 HLA.G.6 HLA.DQA2.5 HLA.C.2 PSMB9.1 HLA.F.0 HLA.F.1 HLA.DQB1.4 HLA.B.2 HLA.C.4 HLA.DRB1.0 HLA.DQA1.0 HLA.H.2 BTN3A2.2 HLA.DQA1.4 TAP2.0 HLA.DRB1.2 MICB.0 HLA.A.0 HLA.G.7 HLA.DRB5.2 HLA.G.8 HLA.B.1 HLA.DQA2.2 HLA.C.1 HLA.DQA1.3 HLA.DQB1.6 HLA.G.0 HLA.G.1 HLA.DQB2.5 HLA.DRB1.4 HLA.DRB5.5 MICA.5 HLA.DRB5.3 HLA.DQB1.1 HLA.DRB5.0 MICA.6 HLA.DQA2.3 HLA.H.4 MICA.3 HLA.DQB2.0 HLA.DQB1.5 MICA.2 TAP2.1 HLA.DRB5.4 HLA.C.0 MICA.1 MICA.4 HLA.DQA1.2 HLA.G.2 HLA.B.0 HLA.DQB1.2 BTN3A2.3 PSMB9.2 HLA.G.5 HLA.H.3 HLA.DRB5.8 PSMB9.0 HLA.DQA2.6 HLA.DQA2.4)
pheno=${phenos[$SLURM_ARRAY_TASK_ID-1]}

echo $SLURM_ARRAY_TASK_ID
echo $HOSTNAME
echo $pheno

date

cd /cellar/users/mpagadal/projects/germline-immune3/data/conditional-hla/ref

awk '$12 < .0001 {print $0}' $pheno.GWAS.ADD > $pheno.plot.assoc


date