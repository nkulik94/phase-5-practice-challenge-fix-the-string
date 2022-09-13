def fix_the_string string
    #return string if string == ''
    chars_stack = []
    string.chars.map do |char|
        if chars_stack.empty?
            chars_stack.push(char)
        elsif char == chars_stack.last || char.upcase != chars_stack.last.upcase
            chars_stack.push(char)
        else
            chars_stack.pop
        end
    end
    chars_stack.join('')
end