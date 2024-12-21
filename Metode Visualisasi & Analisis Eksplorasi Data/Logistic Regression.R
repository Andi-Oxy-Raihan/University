#Logistic Regression - Andi Oxy Raihan (231061006)

library(Hmisc)
summary(data)
describe(data)
table(data$y)

library(tidyverse)
data%>%
  select(y)%>%
  table()

model_log = glm(y~x1+x2,family=binomial,data=data)
summary(model_log)
fitted(model_log)

#1. Uji Kelayakan model
#install.packages("ResourceSelection")
library(ResourceSelection)

# Lakukan Uji Hosmer-Lemeshow
hoslem.test(data$y, fitted(model_log))
#jika p-value > 0.05 maka model dianggap layak

#2. Uji Simultan model
library(pscl)
pR2(model_log)
#df = 2, jumlah variabel bebas
qchisq(0.95,2)
#jika G2 > Chi Squared tabel maka terdapat pengaruh serentak yang signifikan

#3. Uji Parsial (Perhatikan variabel yang memiliki tanda bintang)
summary(model_log)

#4. Koefisien R Squared
library(rcompanion)
nagelkerke(model_log)
#niali Nagelkerke (Cragg and Uhler) = 0.598 (59.8%) (Yang Berpengaruh)
#100-59,8 = 40,2% (Yang Tidak Berpengaruh)

#5. Mengecek nilai odds ratio (Menunjukkan Seberapa Besar Pengaruhnya)
beta = coef(model_log)
OR_beta = exp(beta)
cbind(beta, OR_beta)
