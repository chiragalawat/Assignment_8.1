a. Predict the no of comments in next H hrs
b. Use regression technique
c. Report the training accuracy and test accuracy
#library(readr)
#
dataset <- read_delim("Dataset.zip", ";", escape_double = FALSE, trim_ws =TRUE)
library(readr)
Features_Variant_1 <- read.csv("C:\\Users\\CHIRAG\\Downloads\\ACADgILd\\Features_Variant_1.csv")
dim(Features_Variant_1)
## [1] 40948 54
Features<-Features_Variant_1
names(Features)

Features_Train<-Features_norm[1:28003,]
Features_Test<-Features_norm[28004:40948,]
library(neuralnet)
set.seed(123)
Features_model<-neuralnet(X0.19~X634995+X0+X463+X1+X0.0+X806.0+X11.2910447761
                          19403+X1.0+X70.49513846124168+X0.0.1+X806.0.1+X7.574626865671642+X0.0.2+X69.4
                          35826365571+X0.0.3+X76.0+X2.6044776119402986+X0.0.4+X8.50550186882253+X0.0.5+
                            X806.0.2+X10.649253731343284+X1.0.1+X70.25478763764251+X.69.0+X806.0.3+X4.970
                          149253731344,data = Features_Train)
plot(Features_model)
model_results<-compute(Features_model,Features_Test[1:27])
predicted_X0.19<-model_results$net.result
nrow(predicted_X0.19)

round(cor( predicted_X0.19,Features_Test$X0.19),2)


Features_model<-neuralnet(X0.19~X634995+X0+X463+X1+X0.0+X806.0+X11.2910447761
                          19403+X1.0+X70.49513846124168+X0.0.1+X806.0.1+X7.574626865671642,data = Featu
                          res_Train)
plot(Features_model)
model_results<-compute(Features_model,Features_Test[1:12])
predicted_X0.19<-model_results$net.result
nrow(predicted_X0.19)
## [1] 12945
head(predicted_X0.19)


round(cor( predicted_X0.19,Features_Test$X0.19),2)


set.seed(123)
Features_model2<-neuralnet(X0.19~X634995+X0+X463+X1+X0.0+X806.0+X11.291044776
                           119403+X1.0+X70.49513846124168+X0.0.1+X806.0.1+X7.574626865671642,data = Feat
                           ures_Train, hidden = 5)
plot(Features_model2)
model_results2<-compute(Features_model2,Features_Test[1:12])
predicted_X0.192<-model_results2$net.result
nrow(predicted_X0.192)
## [1] 12945
head(predicted_X0.192)


set.seed(123)
Features_model<-neuralnet(X0.19~X634995+X0+X463+X1+X0.0+X806.0+X11.291044776119403+X1.0+X7
            0.49513846124168+X0.0.1+X806.0.1+X7.574626865671642+X0.0.2+X69.435826365571
            +X0.0.3+X76.0+X2.6044776119402986+X0.0.4+X8.50550186882253+X0.0.5+X806.0.2+X1
            0.649253731343284+X1.0.1+X70.25478763764251+X.69.0+X806.0.3+X4.970149253731
            344,data = Features_Train)
plot(Features_model)



set.seed(123)
Features_model<-neuralnet(X0_19~
                            X634995+X0+X463+X1+X0.0+X806.0+X11.291044776119403+X1.0+X70.4951384612416
                          8+X0.0_1+X806.0_1+X7.574626865671642+X0.0_2+X69.435826365571+X0.0_3+X76.0+X
                          2.6044776119402986+X0.0_4+X8.50550186882253+X0.0_5+X806.0_2+X10.64925373134
                          3284+X1.0_1+X70.25478763764251+X.69.0+X806.0_3+X4.970149253731344+X0.0_6+X6
                          9.85058043098057+X0_1+X0_2+X0_3+X0_4+X0_5+X65+X166+X2,data = Features_Train)
plot(Features_model)
model_results<-compute(Features_model,Features_Test[1:37])
predicted_X0_19<-model_results$net.result
nrow(predicted_X0_19)
head(predicted_X0_19)
round(cor( predicted_X0_19,Features_Test$X0_19),2)



