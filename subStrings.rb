dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts "Ingrese una cadena de palabras"
cadena = gets.chomp


def substrings(string, diccionario)
    lastIndex = string.length - 1
    i = 0
    array = string.split
    puts array
    array.each do |item|
        i = 0
        lastIndex = item.length - 1
        while i < item.length do
            palabra = item[i..lastIndex]
            if diccionario.include?(palabra)
                puts "#{palabra} encontrada"
            end
            i += 1
        end
    end

end

substrings(cadena, dictionary)
#p myHash