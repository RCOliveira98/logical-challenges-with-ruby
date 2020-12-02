# Origem: CodeSaga
# Para resolver este desafio, você deve implementar o método para substituir cada 
# posição do array pela multiplicação do elemento com seu índice.
# Um array em Ruby sempre começa do índice zero, então, se temos um Array [3, 7, 8], 
# vamos multiplicar o primeiro número por 0, o segundo por 1 e o terceiro por
# Retornando um novo array com o resultado desta operação.

class Arrays
    def self.multiplica_indices(array)
      array.collect.with_index { |element, index| element * index }
    end
end

puts Arrays.multiplica_indices([2, 4, 6, 8, 10, 12])