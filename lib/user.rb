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

    def self.find_by_email(mail)
        @@user_list.each {|user| return user if user.include?(mail)}
    end

end

