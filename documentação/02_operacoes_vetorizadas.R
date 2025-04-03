######################################
##    Trabalhando com vetores       ##
######################################
##  Operacoes vetorizadas
x<-1:5
y<-6:10
x+y               #ocorre a soma dos valores de ambos os vetores

x*2               #podemos multiplicar um vetor por um numero
x^2

z<-c(x,y)
z+x
w<-1:3
w+x

l<-c(T, T, F, T, F, F)
l/2

## para acessar vetores, usamos [ ]
letter<-c("x", "y", "z", "w", "j")
letter[2]               #acessa o segundo elemento do vetor
letter[2:4]             #podemos usar sequencia de valores
letter[c(1, 4)]         #usamos a funcao c() para valores nao contiguos
letter[-2]              #usamos numeros negativos para excluir um ou mais valores
letter[c(-2, -5)]

idx<-c(1, 4)            #podemos criar indices numericos
letter[idx]

x<-1:10                 
x[x>7]                  #podemos usar "<", "==", ">=", etc.

letter[letter>"k"]      #tambem eh possivel para caracteres
letter[letter<"k"]
letter=="z"

#funcoes para identificar valores extremos
set.seed(1)
s<-sample(-1000:1000, 200)

which.max(s)            #procura a posicao do maior valor
max(s)                  #imprime o maior valor 
range(s)

s>0                     #cria um vetor logico
which(s>0)              #cria um vetor com as posicoes que satisfazem o comando

#Ex.1: quantos valores de s sao maiores que 0?
#Ex.2: faca um vetor contendo os valores de S maiores do que 0.

#funcoes de ordenamento
x<-c(3, 8, 2, 1, 5, 9, 7, 7, 3)
x      
sort(x)                 #ordena um vetor
sort(x, decreasing = T)
order(x)                #pega a ordem de cada elemento para torna-lo crescente
sample(x)               #randomiza
unique(x)               #elimina as replicatas
duplicated(x)           #logico

#Ex.3: quantos duplicados existem em x?

######################################
##    Trabalhando com data.frames   ##
######################################


#para acessar data.frames e listas usamos [], [[]] ou $

dt<-data.frame(number=c(1, 2, 3, 4, 5), 
               letter = c("x", "y", "z", "w", "j"),
               logical = c(TRUE, FALSE, FALSE, TRUE, FALSE))

dt[[1]]              # [[ ]] acessa cada coluna por posicao
dt[,1]               # [ ] acessa as coordenadas [linha, coluna]
dt$number            # $ acessa cada coluna por nome

#data.frames possuem colnames e rownames
colnames(dt)
row.names(dt)

#podemos alterar colanmes e rownames
row.names(dt)<-c("a", "b", "c", "d", "e")
colnames(dt)[2]<-"letras"     #alteramos unicamente a posicao 2

#podemos alterar valores especificos de um data.frame
dt[3,1]<-"10"
dt$logical<-as.numeric(dt$logical)
dt$letras<-NA

#Podemos verificar as ocorrencias de um data.frame em outro

biometria<-data.frame(nomes=c("Carlos", "Roberto", "Olivio", "Joel"),
                      altura=c(180, 187, 155, 168),
                      peso=c(80, 90, 98, 64))
esportes<-data.frame(nomes=c("Carlos", "Roberto", "Olivio", "Jomar"),
                     esportes=c("futebol", "remo", "sumo", "maratona"))

biometria$nomes%in%esportes$nomes         #constroi um logico 
idx<-biometria$nomes%in%esportes$nomes    #pode ser usado como indice
x<-biometria[idx,]                        

#ordenando data.frames por uma coluna
biometria<-biometria[with(biometria, order(altura)), ]

#unindo data.frames com a funcao merge()

unido<-merge(biometria, esportes, by="nomes")   #OBS.:Independe da ordem dos data.frames!
#A busca eh feita pelo nome, nao pela ordem!
#O resultado sempre virah em ordem alfabetica!

unido<-merge(biometria, esportes, by="nomes", all.x=T)#com todos presentos no primeiro
unido<-merge(biometria, esportes, by="nomes", all.y=T)#com todos presentos no segundo
unido<-merge(biometria, esportes, by="nomes", all=T)#com todos presentos
#OBS.: nesse caso, as informacoes faltantes sao preenchidas por NA!

######################################
##        acessando listas          ##
######################################
ls<-list(a=c("x", "y", "z", "w", "j"), b=1:4, c=c("Joca", "Bia", "Licurgo"), d=dt)

ls[1]
ls[[1]]
ls$a

class(ls[1])
class(ls[[1]])

ls[[c(3,2)]]      #posicao na lista e posicao no elemento
