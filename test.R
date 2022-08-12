colors()

df<-airquality
summary(df)

# 오존열에는 37개, 솔라 7개

df<-na.omit(airquality)

# 상관분석
str(df) # 모두 수치형데이터(연속형)
class(df) # 데프
summary(df) # NA값 사라진지 확인

library(psych)
corr.test(df)

plot(df$Wind,df$Ozone,main='Wind와 Ozone 상관계수',
     xlab='Wind',ylab='Ozone',col='peru',pch=19)
# 강한 음의 상관이 보임

plot(df$Temp,df$Ozone,main='Temp와 Ozone 상관계수',
     xlab='Temp',ylab='Ozone',col='yellow1',pch=19)
# 강한 양의 상관이 보임

