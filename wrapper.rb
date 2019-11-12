class Wrapper
    def self.wrap(word, column)
        #i === index of string in loop
        i = column
        while i < word.length do
            #check if char at column division is a space
            if word[i] == ' '
                word[i] = "\n"
            else
                #look backwards in string until a space is found
                preLoop = i
                while word[i] != ' ' && i > (preLoop - column)
                    i -= 1
                end 
                #if no elegible spot found in the column space 
                if i == preLoop - column
                    return nil
                end
                #otherwise set index to newline char
                word[i] = "\n"
            end
            #increment loop
            i += column + 1
        end
        return word
    end
end
