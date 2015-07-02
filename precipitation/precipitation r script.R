#(1)
data=read.csv("C:\\Users\\lgpc\\Desktop\\UNdata_precipitation.csv", header=T)
attach(data)
Value
tapply(Value, Year, mean)
y1999=data[Year==1999,]
y2005=data[Year==2005,]
hist(log10(y1999$Value))
hist(log10(y2005$Value))
t.test(log10(y1999$Value),log10(y2005$Value))

 
# (2) Precipitation for all countries over time.
data=read.csv("C:\\Users\\lgpc\\Desktop\\UNdata_precipitation.csv", header=T)
means <- tapply(data$Value,data$Year,mean)
plot(x=levels(factor(data$Year)), y=means)
abline(lm(Value ~ Year, data=data))