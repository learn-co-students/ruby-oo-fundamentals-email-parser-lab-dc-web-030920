# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    def initialize(given_email)
        @email = given_email
    end

    def parse
        arr = []
        arr = @email.split(" ")
        updated = arr.map{|new| new.delete(",")}
        updated.uniq
    end

end