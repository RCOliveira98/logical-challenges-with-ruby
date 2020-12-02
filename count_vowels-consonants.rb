# Nesse desafio você deve implementar dois métodos que lêem uma string e 
# retornam, respectivamente, a quantidade de vogais e de consoantes presentes nela.
# Lembre-se que H NÃO é uma consoante

class Word
    def vowels_count(phrase)
      vowels = 'AEIOUÁÉÍÓÚÂÊÎÔÛÀÈÌÒÙÄËÏÖÜÃÕ'
      phrase.upcase.count(vowels)
    end
  
    def consonants_count(phrase)
      consonants = 'BCDFGJKLMNPQRSTVWXZ'
      phrase.upcase.count(consonants)
    end
end

puts Word.new.vowels_count('Iniciando no mundo ruby!')

puts Word.new.consonants_count('Ruby é a melhor amiga do programador.')