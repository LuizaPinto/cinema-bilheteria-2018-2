


require(tidyverse)
base1 = BD_Bilheteria2_20_202018 %>% 
  group_by(Country,Weekly) %>% 
  summarise(TotalGross = sum(`Total Gross`/1000000))
BaseBrazil = base1 %>% 
  filter(Country == "Brazil")
BaseBrazil

#####soma meses 
##janeiro
base2 = BD_Bilheteria2_20_202018 %>% 
  group_by(`Total Gross`,Weekly) %>% 
  summarise(TotalGross = sum(`Total Gross`/1000000))
January = base2 %>% 
  filter(Weekly == "January")
January <- sum(January[1])
January
### February
February = base2 %>% 
  filter(Weekly == "February")
February <- sum(February[1])

##MARCH
March = base2 %>% 
  filter(Weekly == "March")
March <- sum(March[1])
March

###April
April = base2 %>% 
  filter(Weekly == "April")
April <- sum(April[1])
April

###May
May = base2 %>% 
  filter(Weekly == "May")
May <- sum(May[1])

May
###June
June = base2 %>% 
  filter(Weekly == "June")
June <- sum(June[1])

June
###July
July = base2 %>% 
  filter(Weekly == "July")
July <- sum(July[1])

July
##August
August = base2 %>% 
  filter(Weekly == "August")
August <- sum(August[1])

August
####September
September = base2 %>% 
  filter(Weekly == "September")
September <- sum(September[1])

September
###October
October = base2 %>% 
  filter(Weekly == "October")
October <- sum(October[1])

October
###November
Novemberu = base2 %>% 
  filter(Weekly == "November")
November <- sum(November[1])

November
#####December
December = base2 %>% 
  filter(Weekly == "December")
December <- sum(December[1])
December

####
mes<-1:12
bilh<-c(January, February, March, April, May,June,July,August,September,October,November,December)
dados <- data.frame(mes, bilh, grupo=factor(c(rep(1, 12))) )
p=ggplot(dados, aes(x = mes, y = bilh, group = grupo))
p + geom_line(color = 2) #podemos especificar a cor da linha

