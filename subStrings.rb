dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts "Ingrese una cadena de palabras"
cadena = gets.chomp


def substrings(string, diccionario)
    myHash = Hash.new
    lastIndex = string.length - 1
    i = 0
    array = string.split

    array.each do |item|
        i = 0
        lastIndex = item.length - 1
        j = lastIndex-1

        while i < item.length do
            palabra = item[i..lastIndex]
            if diccionario.include?(palabra)
                myHash[palabra] = +1
            end
            i += 1
        end
        while j >= 0 do
            palabra = item[0..j]
            if diccionario.include?(palabra)
                myHash[palabra] =  +1
            end
            j -= 1
        end
    end
    return myHash
end

my_hash = substrings(cadena, dictionary)
p my_hash