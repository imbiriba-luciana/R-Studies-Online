# Parte 1
sessionInfo()
library(dplyr)

# Impotando o Dataset do projeto
dados <- read.csv("~/Documentos/GitHub/R-Studies-Online/estatistica-r-parte-1-arquivos-projeto-inicial/dados.csv")
View(dados)

# Organizando Dataset
head(dados, 5)
select(dados, Anos.de.Estudo)
unique(select(dados, Anos.de.Estudo))
arrange(unique(select(dados, Anos.de.Estudo)), Anos.de.Estudo)

#Transformando colunas em vetores
c(arrange(unique(select(dados, Anos.de.Estudo)), Anos.de.Estudo))
c(arrange(unique(select(dados, UF)), UF))
c(arrange(unique(select(dados, Sexo)), Sexo))
c(arrange(unique(select(dados, Cor)), Cor))

# Criando uma string variável
sprintf("De %s até %s anos", min(dados$Idade), max(dados$Idade))

library(glue) #outra forma de criar uma string variável
glue("De {min(dados$Idade)} até {max(dados$Idade)} anos") #variável discreta
glue("De {min(dados$Altura)} até {max(dados$Altura)} metros") #variável ordinal

# Parte 2