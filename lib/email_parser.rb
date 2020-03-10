# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pp"
class EmailAddressParser

    attr_accessor :addresses

    def initialize(emails)
        @emails = emails
    end

    def parse
        addresses = @emails.split(" ")
        addresses.each do |email|
            if email.include? ","
                email.delete!(",")
            end
        end
        addresses.uniq
    end
end
