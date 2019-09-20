### 
###China Setor China
require(tidyverse)
genero_filme <- function(data, p="Brazil"){
  Base1 = data %>% 
    filter(Country == p) %>% 
    select(Genre)
  return(Base1)
}

SetorBrazil = genero_filme(BD_Bilheteria2_20_202018, p = "Brazil")
W = table(SetorBrazil)

freq <- round(sort(100*W/sum(W)),2)
freq
freq1 <- W
names(freq1) <-  c( names(freq[1:11]))
porc<-round(freq1*100/sum(freq1), 2)
rotulos<-paste(names(freq1),"(",porc,"%)", sep="")
pie(freq1, main="Genêros na Brazil 2018", labels=rotulos, cex=0.7, col=rainbow(8))










