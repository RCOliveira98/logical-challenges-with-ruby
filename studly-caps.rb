# Origem: CodeSaga
# Neste desafio você deve implementar o código do método que recebe uma string e 
# retorna a mesma string com seus caracteres alternando entre maiúsculas e minúsculas. 
# A primeira letra deve ser sempre uma minúscula, 
# por exemplo: a palavra "Ruby" deve retornar "rUbY".

class StringUtils
    def wavefy(string)
      string = string.downcase
      index = 0
  
      while index < string.size
  
        string[index] = string[index].upcase if index.odd?
  
        index = index + 1
      end
  
      string
    end
  
end

puts StringUtils.new.wavefy("ruby")