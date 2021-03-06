setwd("~/Dropbox/CoDyn/Import")

datpath = "~/Dropbox/CoDyn/R files/10_08_2015_v6/CoDyn_heterogeneity" # For writing out


library(gtools)
library(reshape2)

AND_postlog<-read.csv("AND_postlog.csv")
AND_postlog$plot<-as.factor(AND_postlog$plot)
AND_cascade<-read.csv("andrews_cascade_wide.csv")
AND_cascade$plot<-as.factor(AND_cascade$plot)
BNZ_Tree<-read.csv("BNZ_Tree3.csv")
BNZ_Tree$plot<-as.factor(BNZ_Tree$plot)
str(BNZ_Tree)
BNZ_Tree[8:ncol(BNZ_Tree)]<-apply(BNZ_Tree[8:ncol(BNZ_Tree)], 2, as.numeric)

BNZ_Understory<-read.csv("BNZ_Understory2.csv")
BNZ_Understory$plot<-as.factor(BNZ_Understory$plot)
BNZ_Understory[8:ncol(BNZ_Understory)]<-apply(BNZ_Understory[8:ncol(BNZ_Understory)], 2, as.numeric)
EBRP<-read.csv("lh_ebrp.csv")
EBRP$plot<-as.factor(EBRP$plot)
Hays<-read.csv("lh_hay.csv")
Hays$plot<-as.factor(Hays$plot)

JRG<-read.csv("lh_jrg.csv")
JRG$plot<-as.factor(JRG$plot)
JRN<-read.csv("lh_jrn.csv")
JRN$plot<-as.factor(JRN$plot)
KNZ<-read.csv("lh_knz.csv")
KNZ$plot<-as.factor(KNZ$plot)
SGS<-read.csv("lh_sgs.csv")
SGS$plot<-as.factor(SGS$plot)
LUQ_past<-read.csv("luq_past.csv")
LUQ_past$plot<-as.factor(LUQ_past$plot)
LUQ_reveg<-read.csv("LUQ_reveg2.csv")
LUQ_reveg$plot<-as.factor(LUQ_reveg$plot)
SAG<-read.csv("SAG_bay_aquatic_data_plot_means_subset_for_time.csv")
SAG$plot<-as.factor(SAG$plot)
SEV_core<-read.csv("sev5.csv")
SEV_core$plot<-as.factor(SEV_core$plot)

MtStHelens1<-read.csv("mtsthel_abraham_grid_sp.csv")
MtStHelens1$plot<-as.factor(MtStHelens1$plot)
MtStHelens2<-read.csv("mtsthel_butte_sp.csv")
MtStHelens2$plot<-as.factor(MtStHelens2$plot)
MtStHelens3<-read.csv("mtsthel_pine_protected_sp.csv")
MtStHelens3$plot<-as.factor(MtStHelens3$plot)
MtStHelens4<-read.csv("mtsthel_pine_sp.csv")
MtStHelens4$plot<-as.factor(MtStHelens4$plot)
MtStHelens4[8:ncol(MtStHelens4)]<-apply(MtStHelens4[8:ncol(MtStHelens4)], 2, as.numeric)
MtStHelens5<-read.csv("mtsthel_pumice_sp.csv")
MtStHelens5$plot<-as.factor(MtStHelens5$plot)
MtStHelens6<-read.csv("mtsthel_toutle_sp.csv")
MtStHelens6$plot<-as.factor(MtStHelens6$plot)

NTLFish<-read.csv("NTL_FISH.csv")
NTLFish$plot<-as.factor(NTLFish$plot)
NTLZooAnnual<-read.csv("NTL_zoo_annual.csv")
NTLZooAnnual$plot<-as.factor(NTLZooAnnual$plot)
NTLZooFall<-read.csv("NTL_zoo_seasonal_wide_fall.csv")
NTLZooFall$plot<-as.factor(NTLZooFall$plot)
NTLSpring<-read.csv("NTL_zoo_seasonal_wide_spring.csv")
NTLSpring$plot<-as.factor(NTLSpring$plot)
NTLSummer<-read.csv("NTL_zoo_seasonal_wide_summer.csv")
NTLSummer$plot<-as.factor(NTLSummer$plot)
NTLWinter<-read.csv("NTL_zoo_seasonal_wide_winter.csv")
NTLWinter$plot<-as.factor(NTLWinter$plot)
WiRiverFish<-read.csv("wi_river_fish.csv")
WiRiverFish$plot<-as.factor(WiRiverFish$plot)
Phytos<-read.csv("LTER_PHYTOS_CORE.csv")
Phytos$plot<-as.factor(Phytos$plot)
Phytos_July<-read.csv("LTER_PHYTOS_JULY_CORE.csv")
Phytos_July$plot<-as.factor(Phytos_July$plot)

FCE_fish<-read.csv("FCE_fish_activity_means_wetseason.csv")
FCE_fish$plot<-as.factor(FCE_fish$plot)
FCE_invert<-read.csv("FCE_invert_activity_means_wetseason.csv")
FCE_invert$plot<-as.factor(FCE_invert$plot)
KNZ_grasshoppers<-read.csv("KNZ_grasshoppers2.csv")
KNZ_grasshoppers$plot<-as.factor(KNZ_grasshoppers$plot)
kuparuk_insects<-read.csv("kuparuk_insects.csv")
kuparuk_insects$plot<-as.factor(kuparuk_insects$plot)
Miss_plant<-read.csv("miss_aquatic_plants_final.csv")
Miss_plant$plot<-as.factor(Miss_plant$plot)
Miss_fish<-read.csv("miss_fish2.csv")
Miss_fish$plot<-as.factor(Miss_fish$plot)
OND_BINVERTS<-read.csv("OND_BINVERTS.csv")
OND_BINVERTS$plot<-as.factor(OND_BINVERTS$plot)
ONEIDA_ZOOPS<-read.csv("ONEIDA_ZOOPS.csv")
ONEIDA_ZOOPS$plot<-as.factor(ONEIDA_ZOOPS$plot)
SEV_grasshoppers<-read.csv("SEV_grasshoppers2.csv")
SEV_grasshoppers$plot<-as.factor(SEV_grasshoppers$plot)
KBS_insect<-read.csv("kbs_T7_inverts.csv")
KBS_insect$plot<-as.factor(KBS_insect$plot)
NTL_zoo<-read.csv("NTL_zoo.csv")
NTL_zoo$plot<-as.factor(NTL_zoo$plot)
LUQ_snails<-read.csv("LUQ_snails.csv")
LUQ_snails$plot<-as.factor(LUQ_snails$plot)

OND_PHYTOS<-read.csv("OND_PHYTOS.csv")
OND_PHYTOS$plot<-as.factor(OND_PHYTOS$plot)

# DF: this file not in Import any longer
#cap_arthropods_wide<-read.csv("cap_arthropods_wide.csv")
#cap_arthropods_wide$plot<-as.factor(cap_arthropods_wide$plot)

#merge all datasets

combineTerA<-smartbind(AND_postlog, AND_cascade, fill=0)
combineTerB<-smartbind(BNZ_Tree, BNZ_Understory, fill=0)
combineTerC<-smartbind(EBRP, Hays, fill=0)
combineTerD<-smartbind(combineTerA, combineTerB, fill=0)
combineTer1<-smartbind(combineTerC, combineTerD, fill=0)

combineTerE<-smartbind(JRG, JRN, fill=0)
combineTerF<-smartbind(KNZ, SGS,  fill=0)
combineTerG<-smartbind(LUQ_past, LUQ_reveg, fill=0)
combineTerH<-smartbind(SEV_core, combineTerE, fill=0)
combineTerI<-smartbind(combineTerF, combineTerG, fill=0)
combineTer2<-smartbind(combineTerH, combineTerI , fill=0)

combineTer3<-smartbind(MtStHelens1, MtStHelens2, MtStHelens3, MtStHelens4, MtStHelens5, MtStHelens6, fill=0)

combineAqua<-smartbind(Phytos, WiRiverFish, SAG, NTLFish, NTLZooAnnual, NTLZooFall, NTLSpring, NTLSummer, NTLWinter, Phytos_July, fill=0)

combineTerJ<-smartbind(ONEIDA_ZOOPS, FCE_fish, fill=0)
combineTerK<-smartbind(FCE_invert, Miss_plant,  fill=0)
combineTerL<-smartbind(kuparuk_insects, KNZ_grasshoppers, fill=0)
combineTerM<-smartbind(OND_BINVERTS, Miss_fish,  fill=0)
combineTerN<-smartbind(SEV_grasshoppers, KBS_insect, fill=0)
combineTerO<-smartbind(NTL_zoo, LUQ_snails, fill=0)

combineTerP<-smartbind(combineTerJ, combineTerK , fill=0)
combineTerQ<-smartbind(combineTerM, combineTerL , fill=0)
combineTerR<-smartbind(combineTerO, combineTerN , fill=0)

combineTerS<-smartbind(combineTerP, combineTerQ , fill=0)

newdata<-smartbind(combineTerR, combineTerS , fill=0)

newdata2<-smartbind(OND_PHYTOS
                    #, cap_arthropods_wide # DF took out of code
                    , fill=0)

combine<-smartbind(combineAqua, combineTer1, combineTer2, combineTer3, newdata, newdata2, fill=0)
colnames(combine)

levels(as.factor(combine$community_type))
levels(as.factor(combineTer2$community_type))

write.csv(combine, file.path(datpath, "NewData_NCEAS.csv"), row.names = F)

