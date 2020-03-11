# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_accessor :string

    def initialize(string)
      @string = string
    end
    def parse
      my_array = []
      split_string = @string.split()
      index = 0
      while index < split_string.length do
      result = split_string[index].tr(',','')
      my_array << result
      index += 1
      end
      my_array.uniq
    end
end