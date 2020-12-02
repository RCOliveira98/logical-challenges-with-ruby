# Origem: CodeSaga
# Dado um array de strings, você deve implementar um código que seleciona e retorna 
# somente os elementos que não possuem outro elemento correspondente com a ordem inversa de letras.
# Por exemplo, dado o array [morango, bola, casa, caderno, ognarom, asac], deve ser retornado o array [bola, caderno].

class Arrays
    def inverse_strings(array)
      array.select { |item| !have_an_inverted_copy?(array, item) }
    end
  
    private
    def have_an_inverted_copy?(array, string)
      array.each { |item| return true if item.reverse == string }
      false
    end
end

puts Arrays.new.inverse_strings(['morango', 'bola', 'casa', 'caderno', 'ognarom', 'asac'])