# Origem CodeSaga
# Nesse desafio você precisa implementar o código de dois métodos: um para retornar 
# os múltiplos de um determinado número e outro para mostrar a tabuada de determinados valores.
class ArrayUtils
    def self.multiplos(qtd, multiplo)
  
      list = []
      number = 0
  
      until list.size == qtd
        number = number + 1
        list.push(number) if number % multiplo == 0
      end
   
      list
    end
  
    def self.tabuada(last_number)
      Array.new(last_number) { |number| multiplos(10, number + 1) }
    end
end

p ArrayUtils.multiplos(10, 4)

p ArrayUtils.tabuada(5)