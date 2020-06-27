puts "caesarciphercaesarciphercaesarciphercaesarciphercaesarciphercaesarciphercaesarcipher"
puts "input: "
input = gets.chomp()
puts "security level (use values between 3 and 9):"
shift = gets.chomp().to_i()
output = ""
puts "code: "

  def cipher (shift,input)
    output = ""
    alph = "abcdefghijklmnñopqrstuvwxyz1234567890"


    if shift >= 3 and shift <= 9

        input.split("").each { |char|                           #separa el input por letras = "h", "o", "l", "a"  para poder ver su posicion en el alph
          if char != " " and char != "," and char !="."      #si no es un espacio,coma o punto, la codifica. si lo es, agrega un espacio y sigue codificando
            char_index = alph.index(char)                     #busca el indice de las letras ingresadas en el alph
            new_position = char_index + shift
            new_index = new_position % 36                 #new position es el indice en el alph sumandole el offset
            output = output + alph[new_index]                  #output devuelve las letras con el indice original + shift.
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

puts "decipherdecipherdecipherdecipherdecipherdecipherdecipherdecipherdecipherdecipherdecipherdecipherdecipher"
puts "decrypt? y/n "
output2 = cipher(shift,input).to_s
answ = gets.chomp()
output_decipher = ""
if answ == "y"
  puts "decrypted code: "

  def decipher (shift,output2)
    output_decipher = ""
    alph = "abcdefghijklmnñopqrstuvwxyz1234567890"


    output2.split("").each { |char|            #separa el input por letras = "h", "o", "l", "a"  para poder ver su posicion en el alph
      if char != " " and char != "," and char !="." and char != "0"    #si no es un espacio,coma o punto, la codifica. si lo es, agrega un espacio y sigue codificando
        char_index = alph.index(char)            #busca el indice de las letras ingresadas en el alph
        new_position_dec = char_index - shift
        new_index_dec = new_position_dec % 36
        output_decipher = output_decipher + alph[new_index_dec]                  #output devuelve las letras con el indice original + shift.
      elsif char == " "
        output_decipher = output_decipher + " "
      elsif char == ","
        output_decipher = output_decipher + ","
      elsif char == "."
        output_decipher = output_decipher + "."
      elsif char == "0"
        output_decipher = output_decipher - 1

      else
        output_decipher = "error"
      end
    }
      return output_decipher
      end
    elsif answ == "n"
      puts "end"
      puts "decipherdecipherdecipherdecipherdecipherdecipherdecipherdecipherdecipherdecipherdecipherdecipherdecipher"
      return
    else
      return "error"

    end
    p decipher(shift,output2)

    puts "decipherdecipherdecipherdecipherdecipherdecipherdecipherdecipherdecipherdecipherdecipherdecipherdecipher"
