puts "caesarciphercaesarciphercaesarciphercaesarciphercaesarciphercaesarciphercaesarcipher"
puts "input: "
input = gets.chomp().to_s()
puts "security level (use values between 3 and 9):"
shift = gets.chomp().to_i()
output = ""
  def cipher (shift,input)
    output = ""
    alph = "abcdefghijklmnñopqrstuvwxyz1234567890"


    if shift >= 3 and shift <= 9

        input.split("").each { |char|                           #separa el input por letras = "h", "o", "l", "a"  para poder ver su posicion en el alph

          if char != " " and char != "," and char !="."    #si no es un espacio,coma o punto, la codifica. si lo es, agrega un espacio y sigue codificando
            char_index = alph.index(char)                     #busca el indice de las letras ingresadas en el alph
            new_position = char_index + shift                   #new position es el indicen el el alph sumandole el offset
            output = output + alph[new_position]                  #output devuelve las letras con el indice original + shift.
          elsif char == " "
            output = output + " "
          elsif char == ","
            output = output + ","
          elsif char == "."
            output = output + "."
          else
            output = "error"
          end
        }

    else
      puts "invalid security level."
    end

return output

end

puts cipher(shift,input)
