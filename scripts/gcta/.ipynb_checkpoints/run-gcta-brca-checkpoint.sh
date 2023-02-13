#! /bin/bash
#SBATCH --mem=10G
#SBATCH -o ../out/%A.%x.%a.out # STDOUT
#SBATCH -e ../err/%A.%x.%a.err # STDERR
#SBATCH --array=1-733%50
#SBATCH --partition=carter-compute

phenos=(CD1D CLEC4A GPNMB DUT MYBL1 TAGLN POLE2 C11orf24 IPO4 MNAT1 IGFBP4 EIF4EBP1 SPRYD7 OAS1 CPVL CAPZA2 HLA.DQA1 HLA.DRB1 MERTK SLC25A40 ICOS CD52 DDX60 HYLS1 PSMA4 TNFRSF1B SMURF2 EOMES HAVCR2 LAG3 KIF23 MYL6 MCM7 AP1G1 ACTL6A SEC31A RNASE6 CTSF IFI6 LOXL2 AP2M1 SERPINE1 VSIG4 WAS TPRKB NCKAP1L PSMC5 EPHB2 MAP3K7 CD207 PSMD14 IL1B TNFRSF9 CD6 MYCBP MRPL37 NLN RILP HLA.DMA LRRC17 LRMP IFI27 MTA1 ICAM1 RND3 CPA3 PDCD1LG2 IL12A ZWILCH COL6A1 HMGN2 HAS2 RPN1 CENPU CTSW UMPS EVI2B DYNC1LI1 PSMC4 SNRPA EPHA2 OSBPL1A IDE HERC5 IFIH1 GNLY ARHGAP1 MYO1F DVL3 CCL5 DAPK1 PSMD1 BRCA2 HLA.DQB1 FARSA IKBKG CD3D KIF4A CANX MRPS28 CDK2 CD27 HLA.G SH3BP5L PSMD12 SELP TUBA4A TGFBR2 TIGIT CTNNA1 SPTBN2 SLC25A5 KLC2 ARHGAP15 PSME2 CD86 CASP1 MR1 IL1A APOC1 PRF1 C1orf54 COL8A1 HLA.DPB1 PAK1 DCTN3 PSMD6 ERLIN1 MKKS CX3CL1 PFN1 NUDT1 NUP107 ERAP1 ENO1 ITGA4 CREBBP KIF3A CTSC FPR1 IKZF1 SNRPA1 RHOC NCF1 HN1L CD59 HLA.DRA STRA13 SKA2 CD209 ALOX5AP THBS2 ACTR10 TAB1 HMHA1 TPSB2 DYNLT1 DVL1 KIF18A COL16A1 CCRL2 FNBP1 ITGB3 TGFB2 KIF2C CD3E KLRK1 TPM1 COPS6 LAPTM5 RAB8B AP1S3 PSMB6 ITGB8 SNX17 TNFRSF4 VEGFB PSMC2 EPHB4 MRPS16 ENTPD1 TGFB3 YTHDF1 IFIT1 RFTN1 LAIR1 CTSL IDO1 NOTCH2 IL21R UBE2J1 HSD11B1 DCTN6 OAS3 COL1A2 FAM216A GZMB PITPNC1 ID3 FGR DCTN2 RHOA BCAP31 CD79B IGFBP2 AP3D1 CD274 AP3B1 IFRD2 TAPBP IFI44 CEP78 MS4A4A LRRC40 CD1E SLC16A1 FMNL1 CDCA4 HLA.H PDCD1 TLR4 CORO1A SKA1 BLK CCL13 MMP2 LYAR PSME1 NCF2 CD79A CD276 NUP93 EXOSC8 APOE AP1M1 ARF1 DDX58 CD80 PDLIM7 CSF1R STAT1 LSM3 PSMB2 CD84 FLNC CTSS APOO AP1B1 SAMSN1 NOD2 IL10 KIF4B RAB4A PNN PHF19 MCTS1 HLA.DOA CHEK1 AP2B1 DBNDD1 PSMD3 JUNB PPIH DYNLL1 SELPLG DCTN4 CYBA CAPZB PSMD13 PSMB8 RHOQ PSMD2 WDR54 CYBB HNRNPA2B1 RBM14 PSMB4 EFNA5 KLC1 MMP19 SMS IFIT3 MARCKSL1 FPR3 PLCG2 ITGB5 PYCARD KLRD1 TNFSF4 VAMP3 RPP40 RAB5B CBX1 SMO MARCH1 TNFRSF14 MMP11 COL6A3 JAK1 DYNC1LI2 CTSD KIF26A PLK4 ADORA2A MRPL12 HLA.F HDC NEO1 SLC1A3 MAP2K1 ADCY7 AZGP1 PGM2 SNRPC SEC24A TNC CCR7 F3 HFE AMPD3 ARRB2 LAMA4 CMC2 UAP1 GLRX3 LCP2 C3AR1 SEC24B PSMD10 MMP1 NUP35 RAB33A IFIT2 PSME3 IL18 APC CCL21 RAC1 PDIA3 CD70 COL3A1 RAB10 SPAG17 ACTR1A MAP3K8 PSMB9 ITGA5 PSMA2 GSTCD TREX1 RASSF4 FBXO41 NME1 TIMP1 DYNC1I2 NCF4 DCBLD2 CD8B FOXP3 HLA.DRB5 TOMM40 IMP4 BSG CCL19 LCK SPARC FAM167A CENPE ITGA6 EVI2A HLA.DQB2 PSMD11 FCGR1A CD37 MPP1 TNFSF13B CCT5 LILRB4 FLI1 HLA.DMB PSMB7 EPHB3 COX17 NCLN ICOSLG MMP14 RSAD2 DCTN1 HACD2 CD44 PFKP MYBL2 KIF11 EP300 CLTA MET TRAF6 TNFSF9 MICA KIFAP3 IKBKB RAB7A MAPRE1 IFNGR2 JUP SEC24D CD247 LSM4 PLEK HLA.C SDC1 CDH1 DCLRE1B NCEH1 SEC13 HLA.DPA1 SMAD4 DOCK2 KIF22 TAP1 RASSF2 SNAP23 TPI1 NPC2 DCK MNDA PSMA1 EMP2 MTHFD1 BTLA ITGB2 CENPJ MMP17 CYTIP ID2 ARHGDIA CD36 NOP16 LHFPL2 DLEU1 SH2B3 GGH CD33 NID1 BRIP1 TRAT1 IGFBP3 HCLS1 FCGR3A HAUS1 MFSD11 RFC3 ATG5 EZR SNRPD1 EIF4G1 LTB IFNGR1 PSMD8 IFI16 MSN SH3GL2 NUP85 ADGRE5 VDAC1 TPSAB1 KRR1 CLTC PSMD4 CTLA4 SH2D1A CELF2 ADAMTS1 CSF3R CENPN TAPBPL SAMHD1 CD14 LMNB2 CENPO IGFBP5 COTL1 KIF15 SLC7A7 LYN NRIP3 NUDT15 SEC24C RHOG TPM3 ERAP2 CD163 PSMB5 CAPZA1 IGF2R KLRB1 CORO1C DHFR RAB3B RAB27A PLAT GIMAP4 POLR3K CXCL10 BTK AP2S1 DYNLL2 LRP1 FCGR3B PNOC FGL2 FN1 MCM3 ACE PLAUR BTN3A2 SYK SAR1A SEC22B CPEB4 EBNA1BP2 TBX21 HLA.DQA2 ZYX FGD1 CECR1 CDH6 PIK3CG RAB34 RUNX3 FCGR1B FAM89B SKIL CCL2 LNPEP WDHD1 RACGAP1 PSMB10 PSMC3 TNFAIP3 VTCN1 RAB6A IL7R RTP4 IL10RA MICB CXCL9 PSMD7 TCEB1 SAMD9 CTSV TPM2 GPLD1 CD74 SAR1B HLA.A KIF3B RELB RHOB PSMC6 KIF2A TREM2 ITGAV MX1 DSP RAB32 MRTO4 SEMA3F LGMN APITD1 NOD1 TEX30 PAK2 DCTN5 AP2A2 PSMA3 IFI44L CHUK CD8A NPL NKG7 PSMD5 PSMD9 PXN ISG15 PLOD2 RMND5B PSME4 MAPK3 CKLF SLC11A1 FARSB VCAN SNRPE SP140 VAMP8 TNFRSF18 AIMP2 PSMF1 THBS1 PAICS HSPB11 B2M LY86 GNG11 FCGR2A RNF41 USPL1 PSMA5 RNF138 TMEM130 STK17A SRM TLR2 ITGA3 MAGOHB PNO1 KIF3C SPIB PSMB1 C19orf48 PDAP1 CD53 ALKBH7 PSMA6 HLA.E SEC23A NUTF2 GNPTAB SIGLEC5 EIF2AK1 DYNC1H1 SMC2 MS4A1 IL2RA TNF HERC6 HLA.DOB TCF7L2 CCBL2 BTN3A1 HMGB1 DNM2 UQCR10 SNRPB AP1S2 LST1 EDNRB TNFRSF12A WDR77 CD3G OASL H2AFZ FCGR2B HNRNPR PA2G4 PTGER4 AP2A1 FCER1G CD48 ACTR1B CD244 PSMB3 PTPRC LYZ CMSS1 C10orf54 IFI30 TGFBR1 RAB35 CTSH MT1F CD1C XCL2 HCK LILRB2 TAP2 HLA.B GZMA JCHAIN JAK2 SMAD7 CENPW OAS2 VEGFA SMAD3 TUBG1 WIPF1 WSB2 AP1M2 COQ2 FCGRT CTNNB1 OSBPL3 BCCIP SMAD2 ZFYVE9 PDIA4 WNT2B CD40LG PSMC1 HSPG2 GZMH PSMA7 MARVELD2 SELL AP1S1 LCP1 CD28 LAMB1 TBXAS1 RUVBL1 FYB CXCR4 CALR CD40 TNFRSF1A TGFB1 TRA2B SLAMF7 DYNC1I1 VTA1 CD68 XCL1 Proliferation Wound.Healing Macrophage.Regulation Lymphocyte.Infiltration.Signature.Score IFN.gamma.Response TGF.beta.Response T.cells.CD8 T.cells.follicular.helper Macrophages.M2)
pheno=${phenos[$SLURM_ARRAY_TASK_ID-1]}
echo $SLURM_ARRAY_TASK_ID
echo $HOSTNAME
echo $pheno

date

path_gcta=/cellar/users/mpagadal/Programs/gcta_1.93.2beta/gcta64
path_plink2=/cellar/users/mpagadal/Programs/plink2
path_geno=/cellar/users/mpagadal/data/tcga/germline/imputation/michigan-imputation/HRC/european.final.noimmunecancers.clean
path_pheno=/cellar/users/mpagadal/projects/germline-immune/data/gcta/phenotypes2
path_grm=/cellar/users/mpagadal/gcta/grms/tcga/european/full
keep=/cellar/users/mpagadal/data/tcga/phenotypes/cancer-ids/BRCA
path_results=/cellar/users/mpagadal/projects/germline-immune/data/gcta/greml/brca/full

covar=/cellar/users/mpagadal/gcta/covs/tcga.eur.brca.sex.receptor.covar #categorical covariates
qcovar=/cellar/users/mpagadal/gcta/covs/tcga.eur.age.qcovar #quantitative covariates


################################
# RUN GCTA ON WHOLE GENOME GRM #
################################

mkdir -p $path_results

# $path_gcta --grm $path_grm/tcga.eur --keep $keep --reml --pheno $path_pheno/$pheno.phen --covar $covar --qcovar $qcovar --out $path_results/$pheno


########################################
# RUN GCTA ON ONLY HLA-KIR REGIONS GRM #
########################################

path_geno=/cellar/controlled/dbgap-genetic/phs000178_TCGA/imputation/michigan-imputation/HRC/hla-kir
path_grm=/cellar/users/mpagadal/gcta/grms/tcga/european/hla-kir
path_results=/cellar/users/mpagadal/projects/germline-immune/data/gcta/greml/brca/hla-kir

mkdir -p $path_results

# $path_gcta --grm $path_grm/eur.hla.kir --keep $keep --reml --pheno $path_pheno/$pheno.phen --covar $covar --qcovar $qcovar --out $path_results/$pheno


############################################
# RUN GCTA ON ONLY non-HLA-KIR REGIONS GRM #
# ############################################

path_geno=/cellar/controlled/dbgap-genetic/phs000178_TCGA/imputation/michigan-imputation/HRC/hla-kir
path_grm=/cellar/users/mpagadal/gcta/grms/tcga/european/hla-kir
path_results=/cellar/users/mpagadal/projects/germline-immune/data/gcta/greml/brca/no-hla-kir

mkdir $path_results

$path_gcta --grm $path_grm/eur.no.hla.kir --keep $keep --reml --pheno $path_pheno/$pheno.phen --covar $covar --qcovar $qcovar --out $path_results/$pheno



date