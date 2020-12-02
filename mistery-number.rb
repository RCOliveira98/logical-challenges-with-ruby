# Origem: CodeSaga
# Neste desafio você deve implementar o código do método que recebe uma string 
# com um cálculo matemático e retorna o valor que ? deve ter para que o resultado 
# da conta fique correto.
# Para este desafio você pode utilizar o método eval, que avalia uma string e retorna 
# o resultado do processamento do código descrito nela.
# example: 10 + ? = 18 retorno 8

class MisteryNumber

    def calculate(operation)
  
      index = operation.index('=')
      number = 0
      result = operation[index + 2, operation.size].to_i
      
      while true
          expression = operation[0, index - 1].gsub('?', number.to_s)
  
          return number if ((eval expression) == result)
  
          number = number + 1
      end
  
    end
  
end

puts MisteryNumber.new.calculate "10 + ? = 18"