dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts "Ingrese una cadena de palabras"
cadena = gets.chomp


def substrings(string, diccionario)
    my_hash = Hash.new
    array = string.split()
    count = 0
    array.each do |string|
        
        diccionario.each do |dict|
            if string === dict
                count = count + 1
                my_hash[string] = count
            end 
        end
    end
    puts count
    return my_hash
end

myHash = substrings(cadena, dictionary)
p myHash