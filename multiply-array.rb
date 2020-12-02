# Origem: CodeSaga
# Você deve implementar o método para substituir cada posição do array pela multiplicação 
# do elemento anterior com o seguinte. Exemplos:
# [1, 2, 3, 4] deve retornar [2, 3, 8, 12]
# [2, 6, 7, 1, 3] deve retornar [12, 14, 6, 21, 3]
# [3, 1, 2, 8, 9, 5] deve retornar [3, 6, 8, 18, 40, 45]

class Arrays
    def self.multiplica_antecessor_predecessor(array)
      result = []
      for i in 0...array.size
        result.push((i != 0 ? array[i - 1] : array[i]) * (array[i + 1] || array[i]))
      end
      result
    end
  
end

p Arrays.multiplica_antecessor_predecessor([2, 6, 7, 1, 3])