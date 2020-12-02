# Origem CodeSaga
# Nesse desafio, vamos utilizar métodos para converter números e criar arrays 
# multidimensionais: arrays compostos de arrays.

class Arrays
    def self.converte_impares_por(lista, numero)
      result = [[], []]
  
      lista.each do |number|
        result[0].push(number) && result[1].push(number * numero) if number.odd?
      end
  
      result
    end
  
    def self.converte_pares_por(lista, numero)
      result = [[], []]
      
      lista.each do |number|
        result[0].push(number) && result[1].push(number * numero) if number.even?
      end
  
      result
    end
end

p Arrays.converte_impares_por([1, 2, 4, 5, 6, 7, 8], 3)
puts "-" * 50
p Arrays.converte_pares_por([11, 12, 13, 14, 15, 16, 17, 18, 19, 20], 4)