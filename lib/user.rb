class User

    attr_accessor :nom, :mail 
    @@user_list = []


    def initialize(mail)
        @mail = mail
        @@user_list << mail
    end

    def self.all
        return @@user_list.inspect
    end

end

