# Origem: CodeSaga
# Nesse desafio continuamos manipulando arrays. Dessa vez, você vai fazer combinações, 
# comparações, somar e encontrar divisíveis.
class ArrayUtils

    def self.compara(list1, list2)
      list1.size == list2.size && (list1 - list2).empty?
    end
  
    def self.divisiveis(number1, number2)
      numbers = Array.new(50) { |number| number + 1 }
      
      [
        numbers.select { |number| number % number1 == 0 && number % number2 == 0},
        numbers.select { |number| number % number1 == 0 && number % number2 != 0},
        numbers.select { |number| number % number2 == 0 && number % number1 != 0}
      ]
    end
  
    def self.soma(list)
      list.sum
    end
  
    def self.combinar(list1, list2)
      list1.product list2
    end
  
end

puts "Método combinar"
numeros = [1, 2, 3, 4, 5]
letras = ["a", "b", "c", "d", "e"]
p ArrayUtils.combinar(numeros, letras)

puts "Método soma"
list = [4, 8, 16, 20, 28, 32, 40, 44]
p ArrayUtils.soma list

puts "Método divisiveis"
p ArrayUtils.divisiveis(3,5)

puts "Método compara"
p ArrayUtils.compara([1,3,1],[3,1,1])