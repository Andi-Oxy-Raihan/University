#Generate Random Data
N = 100
x1 = rnorm(N, mean = 5, sd =2)
x2 = factor(sample(c("A","B","C"), N, replace = TRUE))
prob = 1/(1+exp(-(-1+0.5*x1+0.3*as.numeric(x2=="B"))))
y = rbinom(N,1,prob)

data = data.frame(y,x1,x2)

#Losgitic Regression
#Model Making
model_log = glm(y~x1+x2, family=binomial, data=data)
summary(model_log)

#Uji Kelayakan
#Uji Hosmer-Lemeshow
library(ResourceSelection)
hoslem.test(data$y, fitted(model_log)) #p-value > 0,05 = layak

#Uji Simultan (Serentak)
library(pscl)
pR2(model_log)
qchisq(0.95,2)

#Uji Parsial (Salah satu)
library(rcompanion)
nagelkerke(model_log)

#Multinomial Losgitic Regression
set.seed(123)
N = 100
usia = rnorm(N,mean=30,sd=10)
jenis_kelamin = factor(sample(c("Laki-laki", "Perempuan"),N,replace=TRUE))
pendapatan = rnorm(N,mean=50000,sd=10000)
preferensi = factor(sample(c("A","B","C"),N,replace=TRUE))

data2 = data.frame(preferensi,usia,jenis_kelamin,pendapatan)

#Model Making
library(nnet)
model = multinom(preferensi~usia+jenis_kelamin+pendapatan, data=data)

#Uji Simultan (Serentak)
model.full = multinom(preferensi~usia+jenis_kelamin+pendapatan, data=data)
model.null = multinom(preferensi~1, data=data)
anova(model.null,model.full,test="Chisq")

#Uji Parsial (Salah satu)
z = summary(model)$coefficient/summary(model)$standard.errors
p = (1-pnorm(abs(z),0,1))*2
p
