# Origem: CodeSaga
# Neste desafio você deve implementar o código do método que recebe uma string com 
# palavras e números, analisa esses dados comparando os valores e a quantidade de 
# caracteres das palavras, e retorna a palavra mais longa ou número de maior valor, 
# junto com a palavra mais curta ou número de menor valor. Por exemplo:
# 'bola desafio 1 5 3' Retorna: 'Mínimo: 1; Máximo: desafio'

class MinMax
    def find(values)
      min = (2**(0.size * 8 -2) -1).to_s
      max = (-(2**(0.size * 8 -2))).to_s
    
      values.split(" ").each do |value|
  
        if (is_digit?(value))
  
          if (is_digit?(max))
            max = value if value.to_i > max.to_i
            min = value if value.to_i < min.to_i
          else
            max = value if value.to_i > max.length;
            min = value if value.to_i < min.length;
          end
  
        else
  
          if (is_digit?(max))
            max = value if value.length > max.to_i
            min = value if value.length < min.to_i
          else
            max = value if value.length > max.length
            min = value if value.length < min.length
          end
  
        end
  
      end
      
      "Mínimo: #{min}; Máximo: #{max}"
  
    end
  
    private 
    def is_digit?(char)
      char.match?(/[[:digit:]]/)
    end
  
end

puts MinMax.new.find('bola desafio 1 5 3')