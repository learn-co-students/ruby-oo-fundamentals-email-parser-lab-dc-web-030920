class EmailAddressParser
    attr_reader :emails

    def initialize (emails)
        @emails = emails
    end

    def parse 
       emails.tr(",", " ").split(" ").uniq
    end

end
