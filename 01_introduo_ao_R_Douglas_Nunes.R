## 1. José e Paulo adoram jogar basquete nas suas horas livres. 
#Eles mantém uma competição entre si e por isso decidiram registrar 
#todos os pontos que eles marcam durante as partidas.

# Até agora foram 8 partidas:
  
# -   José fez 8, 10, 12, 9, 15, 16, 11, 7 cestas.

# -   Paulo fez 5, 11, 13, 14, 23, 14, 9, 10 cestas.

# a)  **Crie dois objetos que contenham o número de cestas que cada um fez:**

num_cestas_jose <- c(8, 10, 12, 9, 15, 16, 11, 7)
num_cestas_paulo <- c(5, 11, 13, 14, 23, 14, 9, 10)
  
# b)  **Verifique a classe de cada um dos objetos:**
class(num_cestas_jose) # [1] "numeric"

class(num_cestas_paulo) # [1] "numeric"
  
# c)  **Com a utilização da ajuda do R, procure por uma função que possibilite o cálculo de médias. 
# Com ela, calcule as médias de cestas dos dois jogadores e atribua estes valores a objetos diferentes:**
  
mean_num_cestas_jose <- mean(num_cestas_jose)
print(mean_num_cestas_jose)

mean_num_cestas_paulo <- mean(num_cestas_paulo)
print(mean_num_cestas_paulo)

# d)  **Compare os valores das médias calculadas usando os operadores lógicos "\>" e "\<". Quem teve um desempenho médio melhor?**
if (mean_num_cestas_jose > mean_num_cestas_paulo) {
  print(paste("José fez mais cestas, com uma média de", mean_num_cestas_jose))
} else {
  print(paste("Paulo fez mais cestas, com uma média de", mean_num_cestas_paulo))
}


#-------------------------------------------------------------------------------#


## 2. Vetor e coerção implícita

# a) Criando o vetor
vetor <- c(1, 4, 5, "a", 10L, TRUE)

# b) Verificando a classe do vetor
print(class(vetor))  # Resultado: "character" (coerção implícita para texto)

#-------------------------------------------------------------------------------

## 3. Operações vetorizadas

# a) Soma de vetores de mesmo tamanho
resultado_a <- c(1, 3, 5) + c(2, 4, 6)
print(resultado_a)  # Resultado: 3 7 11

# b) Soma de vetores de tamanhos diferentes (com reciclagem)
resultado_b <- c(1, 3, 5) + c(2, 4, 6, 8)
print(resultado_b)  # Resultado: 3 7 11 9 (com aviso)

#-------------------------------------------------------------------------------

## 4. Operações com o vetor x
x <- c(-1, 45, -6, 88, 30, 4)

# a) Elementos da posição 2 e última
sub_vetor_a <- x[c(2, length(x))]
print(sub_vetor_a)  # Resultado: 45 4

# b) Todos os elementos, exceto o 3º
sub_vetor_b <- x[-3]
print(sub_vetor_b)  # Resultado: -1 45 88 30 4

# c) Nomeando os elementos do vetor
names(x) <- c("A", "B", "C", "D", "E", "F")
print(x)  # Resultado: A  -1, B  45, C  -6, D  88, E  30, F  4

# d) Posição do valor máximo
pos_max <- which.max(x)
print(pos_max)  # Resultado: 4 (posição do 88)

# e) Apenas os valores positivos
valores_positivos <- x[x > 0]
print(valores_positivos)  # Resultado: 45 88 30 4
