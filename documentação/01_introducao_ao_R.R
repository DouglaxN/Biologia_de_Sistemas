
######################################
##        Operacoes simples         ##
######################################

# Aritmetica basica
2+5         #adicao                     
5-2         #subtracao
2*5         #multiplicacao
8/2         #divisao
2^5         #exponenciacao

# Avaliacao logica
3==5	      #igual
3!=5	      #diferente
3>5	        #maior que
3<5	        #menor que
3>=5	      #maior ou igual
3<=5	      #menor ou igual


# Operacoes concatenadas
((2+5-3)*10)^4/7^4


######################################
##            Variaveis             ##
######################################

x<-1        # A seta "<-" representa o simbolo de atribuicao
x           # Ao escrever o nome do objeto, seu valor sera impresso

y<-"gol do gremio!"
y

#Os resultados da operacao podem ser salvos em objetos
x<-2+5                                  
y=5-2
2*5->w
z<-8/2

(((x-y)*w)^z)/(x^z)


######################################
##             Funcoes              ##
######################################

# Chamadas pelo nome
sum(1,3,5)

# Podem receber argumentos
a<-rep("Aluno",times=3)
a


######################################
##              Ajuda               ##
######################################

help(sum)         #acessa a documentacao do R
?sd               
??plot


####################################################################################################

######################################
##             Vectors              ##
######################################

#funcao c() : concatenate
number<-c(1, 2, 3, 4, 5)
letter<-c("x", "y", "z", "w", "j")
logical<- c(TRUE, FALSE, FALSE, TRUE, FALSE)
seq<-1:10

#hierarquia de classes
x<-c(1, 2, 3)                 #numeric
y<-c("1", "2", "3")           #character


x<-c(TRUE, FALSE, FALSE)      #logical
y<-c("TRUE", "FALSE", "FALSE")#character

sum(logical)           #Podemos somar vetores logicos

#OBS. vetores comportam somente uma classe de elementos


#coercao de objetos usando funcoes do tipo as.algumacoisa()
x<-0:10
x
class(x)

a<-as.numeric(x)
a
class(a)

b<-as.character(x)
b
class(b)

c<-as.logical(x)
c
class(c)

#vetores de NA
x<-c(1, 2, 3, NA)
y<-c("a", "b", "c", NA)

is.na(x)

a <- c(1, 3, NA, 7, 9)
sum(a)
sum(a, na.rm=TRUE)


#objetos possuem atributos: classe, tamanho, dimensoes, nomes, etc
x<-1:5
x
length(x)
dim(x)
attributes(x)
names(x)<-c("a", "b", "c", "d", "e")
x
attributes(x)


######################################
##              factor              ##
######################################

#fatores sao vetores categoricos, possuem o atributo level

x<-factor(c("s", "n", "n", "s", "s"))
z<-factor(c("alto", "baixo", "medio"))



######################################
##             matrix               ##
######################################

#matrizes sao vetores com o atributo dimensao
x<-1:20
x
attributes(x)

m<-matrix(x, 4, 5)
m
attributes(m)          

dim(x)<-c(4,5)
x
identical(x, m)

#OBS.: como sao vetores, matrizes comportam somente uma classe de elementos
a<-1:5
b<--1:-5
c<-c(3, 6, 4, 9, 1)

m<-cbind(a, b, c)       #funcao cbind() concatena colunas
m1<-rbind(a, b, c)      #funcao rbind() concatena linhas


######################################
##              array               ##
######################################

ar<-array(1:200, c(5, 10, 4))    #vetores multidimensionais
ar
ar[,,1]                          #[linha, coluna, matrix]

#####################################
##              list                ##
######################################
# listas sao tipos especiais de vetores, que comportam elementos de deferentes classes
a <- c(1, 3, NA, 7, 9)
b<-matrix(1:200, 20,10)
c<-"Gol do Gremio"
z<-factor(c("alto", "baixo", "medio"))

ls<-list(a, b, c, z)
ls                      #cada elemento da lista aparece com [[]]

ls1<-vector("list", 5)   #funcao vector pode criar listas vazias
ls1


######################################
##            data.frame            ##
######################################

#foramdo por vetores de mesmo tamanho, organizados como colunas

number<-c(1, 2, 3, 4, 5)
letter<-c("x", "y", "z", "w", "j")
logical<- c(TRUE, FALSE, FALSE, TRUE, FALSE)
seq<-1:10

dt<-data.frame(number, letter, logical)
class(dt)
dt$letter                     #usamos $ para acessar as colunas de um data.frame
class(dt$letter)              #vetores de caracter sao interpretados como fatores

dt<-data.frame(number, letter, logical, stringsAsFactors = F) #stringsAsFactors = F
dt$letter
class(dt$letter)

attributes(dt)                #data.frames possuem colnames e rownames
colnames(dt)
row.names(dt)

dt[5,2]                       #acessamos data.frames da mesma forma que matrizes


