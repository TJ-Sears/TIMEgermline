#! /bin/bash
#SBATCH --mem=10G
#SBATCH -o ./out/%A.%x.%a.out # STDOUT
#SBATCH -e ./err/%A.%x.%a.err # STDERR
#SBATCH --array=1-736%50
#SBATCH --partition=carter-compute

phenos=(PPIH RAB10 PHF19 CAPZA2 TPSB2 PSMB9 CD28 JAK1 SH2D1A ITGB3 CTSS RAB5B IFRD2 TPI1 IFI44 CREBBP DDX60 IFI44L IL1B MMP11 PSMC3 ADGRE5 CLTC MCM7 CENPO KIF22 THBS1 MAGOHB CMSS1 PDIA3 CD274 MICB EXOSC8 CTSL COL3A1 MSN IGFBP3 HAVCR2 CD163 CDK2 HMHA1 HCLS1 ZFYVE9 ICOS PSME4 CD6 OAS2 TBXAS1 CD1D SEC31A Proliferation ATG5 COL1A2 CD68 AP1B1 ZWILCH SNRPE PFN1 BSG LHFPL2 SNRPA1 DYNLL2 SKA1 KIF23 KIF5A RASSF2 SAR1A TAB1 MAP2K1 CENPW MS4A2 IL10 NUP35 DYNC1LI2 RFTN1 TNF ISG15 CXCR4 CTSC MYCBP DYNLT1 MR1 PNN MTA1 LILRB2 NPL CENPN LRRC17 FCGR3B DCTN6 PAK1 COL6A3 SEC24C CHUK SPIB CD3D AIMP2 PSMB6 VEGFA DOCK2 HLA.DMA CENPJ SELL RND3 PSMD6 CASP1 TLR4 GZMA SELP KIF11 ICOSLG AP1M2 CD36 IFIT1 ALKBH7 SLC7A7 PA2G4 ADCY7 IDO1 CD74 CYBA MS4A1 GSTCD RNF138 LST1 ID2 LCP1 VSIG4 PSMD13 PXN COPS6 TGFB2 PAK2 CD19 SEC24B PRF1 LYAR FAM216A APOO CCL2 UMPS HLA.E RNF41 OAS1 BTLA ARG1 TIGIT SMC2 TREM2 FGD1 SLC25A40 FBXO41 PSME2 SPRYD7 ITGB2 AP1G1 APOE SMAD7 HAS2 MCTS1 HLA.DRB3 LGMN LRP1 PFKP SEC23A CEP78 PSMA3 SLC25A5 PSMB2 CYBB C19orf48 FCER1G TPSAB1 LYN EFNA5 CANX TAP2 PLEK RAB35 MRPL37 FLI1 HLA.DQB1 GZMH CTSH RHOB LY86 HLA.DMB MMP2 IL2RA GNG11 ARRB2 DUT NLN EP300 ICAM1 TREX1 COQ2 CCRL2 EMP2 CD59 SAMSN1 IPO4 RAB4A HLA.B CCL21 LYZ CHEK1 CXCL9 BRCA2 PSMA5 KIFAP3 PSMD10 WSB2 DCTN2 IFN.gamma.Response NID1 CD3G NUP93 KLRD1 IGFBP5 CMC2 PSMD2 RTP4 WDR54 IL21R THBS2 OAS3 CD53 DVL3 NCKAP1L TNFRSF1A PSMD11 PLK4 CKLF OSBPL1A PSMC5 ARHGAP1 CD84 LAIR1 DYNC1LI1 IFI30 RACGAP1 AP2M1 KIF3A RMND5B FARSA TAGLN SEC24A IGHG3 FAM89B MERTK PSMB4 BTN3A1 CCL5 CEACAM3 IFI6 SMAD2 EBNA1BP2 BTN3A2 ITGA4 MAPRE1 TAPBP DYNC1I1 IGLC1 AP2A1 SYK SLC16A1 MARVELD2 COTL1 NUDT15 SMURF2 LRRC40 PSMA4 PSMD14 ITGAV SP140 IFI16 FPR3 SAR1B KLC1 IMP4 HLA.A PDCD1 DDX58 JUNB MMP17 LILRB4 STK17A MRPS16 TPM2 CD8B FPR1 TNC FCGR2B Lymphocyte.Infiltration.Signature.Score KRR1 CTLA4 CPEB4 PSMD9 CD44 CD70 MRTO4 GNLY MTHFD1 ACTR10 PLAT EDNRB CD40LG PSMD3 C11orf24 PSMD1 CD14 SNRPA PAICS BCAP31 PSMA1 SNX17 TPM1 CD247 CD3E TMEM130 CORO1A EVI2B MYBL1 EIF4EBP1 HLA.DRB5 T.cells.follicular.helper BLK VTCN1 TRAF6 PSMA7 SH3GL2 PNO1 TNFRSF1B MARCH1 CD48 GIMAP4 PDLIM7 CTSD NUP107 TGFBR1 RHOA AP1S3 CENPE MMP1 IGFBP4 HMGB1 FN1 KLRK1 WAS JUP MRPS28 HSPB11 PSMC1 LSM4 ZYX Macrophages.M2 HLA.F JCHAIN CCR7 SELPLG BRIP1 RILP ERAP1 RFC3 PSMB7 IL18 VDAC1 ADORA2A CENPU MT1F FGL2 PSMA6 CXCL10 POLE2 KIF3B DCK SERPINE1 TGFB3 NCLN NUTF2 CCBL2 GNPTAB CD276 WDHD1 NUDT1 LOXL2 RUNX3 DNM2 RAB3C PLOD2 FAM167A LAG3 JAK2 TGF.beta.Response PSME1 RBM14 CPA3 SPARC BCCIP PSMB10 HDC HACD2 SKIL PSMD8 MICA GLRX3 DYNC1I2 NCEH1 TCF7L2 SKA2 PTPRC HSD11B1 IFIH1 F3 CDH1 MS4A4A TCEB1 MARCKSL1 MAP3K7 RAC1 ERAP2 IL7R FCRL2 GZMB CD244 LCP2 IFI27 GPLD1 CCL19 ITGA5 KIF4A IL12A H2AFZ ID3 ENO1 Macrophage.Regulation APOC1 CCT5 AP3D1 GPNMB CD1E SAMHD1 STAT1 NOD2 MNAT1 IKBKG C1orf54 TNFRSF12A RAB8B NRIP3 SMS CAPZA1 TNFRSF17 AP1M1 B2M DCBLD2 NOD1 RAB33A KIF15 KIF2C HSPG2 TEX30 DLEU1 AP1S2 AMPD3 PSMC2 AP2S1 HNRNPA2B1 MNDA MMP14 CD33 PDIA4 OASL SLC11A1 KIF3C TNFRSF14 FMNL1 KLC2 SMAD3 Wound.Healing EZR RAB7A YTHDF1 RAB6A HLA.DQA1 PSMD4 PNOC HFE VTA1 ARHGAP15 NUP85 HLA.C AP3B1 AP2B1 IFNGR2 AZGP1 NCF1 LAPTM5 ADAMTS1 DSP HN1L PITPNC1 NEO1 CD80 RNASE6 HCK UQCR10 SLC1A3 CECR1 ACTL6A TGFBR2 VAMP3 MCM3 ACTR1B APITD1 HERC5 PSMB5 SRM FOXP3 EIF2AK1 WIPF1 FCGRT DCTN1 COL6A1 HLA.DPA1 DYNLL1 OSBPL3 DCTN4 LNPEP MPP1 TUBA4A LAMB1 LAMA4 FNBP1 TBX21 MYO1F DYNC1H1 EOMES NME1 CD86 RHOC ERLIN1 EPHB3 HERC6 ITGA6 HMGN2 KIF18A SEC13 HLA.DQA2 PSMD7 RSAD2 PLCG2 KLRB1 NPC2 DCTN5 PSMB1 CDCA4 TCL1A WDR77 EPHB2 TNFRSF4 ARF1 FCGR3A SEC22B PSMA2 COL8A1 STRA13 CPVL VAMP8 PSME3 CTSF IFIT2 LTB IFIT3 CD79B MAPK3 TUBG1 ITGA3 CELF2 RHOG IDE RAB3B CD1C SLAMF7 UAP1 GGH SMAD4 FCGR1A CSF1R SAMD9 PSMC6 RASSF4 HNRNPR RUVBL1 RAB34 IGF2R SNRPB CORO1C CD207 CSF3R SH2B3 TNFSF13B CTNNB1 BTK ITGB8 PGM2 CLEC4M HLA.DRB1 MX1 IL1A NKG7 IKZF1 IFNGR1 TAPBPL TNFAIP3 SH3BP5L CBX1 MKKS CDH6 C3AR1 UBE2J1 ENTPD1 SDC1 MYL6 PSMD12 RHOQ IGFBP2 SEC24D KIF26A SPTBN2 CD27 SEMA3F DAPK1 CTSW WNT2B CCL13 XCL2 MAP3K8 VEGFB FYB POLR3K EPHA2 HYLS1 TGFB1 EVI2A SMO ACTR1A AP1S1 SNAP23 TPRKB CTNNA1 PSMD5 CLEC4A CD8A CD52 TRA2B SNRPC MRPL12 EPHB4 ITGB5 PLG HAUS1 MFSD11 FCGR1B COX17 TNFSF4 NOP16 IKBKB TNFSF9 TIMP1 EIF4G1 LMNB2 SIGLEC5 NCF2 PTGER4 COL16A1 DCLRE1B APC USPL1 RPP40 LSM3 DHFR KIF2A RELB PDAP1 FCGR2A CALR IL10RA PSMF1 TPM3 T.cells.CD8 CD209 C10orf54 FARSB PSMB8 CD37 RPN1 PLAUR NOTCH2 CD40 CYTIP VCAN XCL1 ARHGDIA CTSV DCTN3 RAB32 TNFRSF18 PDCD1LG2 TOMM40 TNFRSF9 TLR2 TAP1 CLTA PIK3CG SNRPD1 ACE PSMC4 CX3CL1 PYCARD FGR MYBL2 MMP19 CAPZB ALOX5AP DBNDD1 CD79A SPAG17 DVL1 LCK MET TRAT1 RAB27A LRMP FLNC)
pheno=${phenos[$SLURM_ARRAY_TASK_ID-1]}
echo $SLURM_ARRAY_TASK_ID
echo $HOSTNAME
echo $pheno

date

path_gcta=/cellar/users/mpagadal/Programs/gcta_1.93.2beta/gcta64
path_plink2=/cellar/users/mpagadal/Programs/plink2
path_geno=/cellar/users/mpagadal/data/tcga/germline/imputation/michigan-imputation/HRC/european.final.noimmunecancers.clean
path_pheno=/cellar/users/mpagadal/projects/germline-immune3/data/gcta/phenotypes_intersect/sailfish
path_grm=/cellar/users/mpagadal/gcta/grms/tcga/european/full
path_results=/cellar/users/mpagadal/projects/germline-immune3/data/gcta/greml/intersect/sailfish/full

covar=/cellar/users/mpagadal/gcta/covs/tcga.eur.sex.covar #categorical covariates
qcovar=/cellar/users/mpagadal/gcta/covs/tcga.eur.age.qcovar #quantitative covariates


################################
# RUN GCTA ON WHOLE GENOME GRM #
################################

mkdir $path_results

$path_gcta --grm $path_grm/tcga.eur --reml --pheno $path_pheno/$pheno.phen --covar $covar --qcovar $qcovar --out $path_results/$pheno


########################################
# RUN GCTA ON ONLY HLA-KIR REGIONS GRM #
########################################

path_geno=/cellar/controlled/dbgap-genetic/phs000178_TCGA/imputation/michigan-imputation/HRC/hla-kir
path_grm=/cellar/users/mpagadal/gcta/grms/tcga/european/hla-kir
path_results=/cellar/users/mpagadal/projects/germline-immune3/data/gcta/greml/intersect/sailfish/hla-kir

mkdir $path_results

$path_gcta --grm $path_grm/eur.hla.kir --reml --pheno $path_pheno/$pheno.phen --covar $covar --qcovar $qcovar --out $path_results/$pheno


############################################
# RUN GCTA ON ONLY non-HLA-KIR REGIONS GRM #
# ############################################

path_geno=/cellar/controlled/dbgap-genetic/phs000178_TCGA/imputation/michigan-imputation/HRC/hla-kir
path_grm=/cellar/users/mpagadal/gcta/grms/tcga/european/hla-kir
path_results=/cellar/users/mpagadal/projects/germline-immune3/data/gcta/greml/intersect/sailfish/no-hla-kir

mkdir $path_results

$path_gcta --grm $path_grm/eur.no.hla.kir --reml --pheno $path_pheno/$pheno.phen --covar $covar --qcovar $qcovar --out $path_results/$pheno



date
