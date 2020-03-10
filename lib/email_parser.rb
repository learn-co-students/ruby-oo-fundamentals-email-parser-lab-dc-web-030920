class EmailAddressParser

    def initialize(email)
        @email = email 
    end 

   #attr_accessor :email 

    def parse
        arr = []
        arr = @email.split(" ")
        updated = arr.map{|new| new.delete(",")}
        updated.uniq
        
    end 

    attr_accessor :email 
    
    
end 



# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
