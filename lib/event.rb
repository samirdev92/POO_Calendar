require 'time'
require 'pry'

class Event

    attr_accessor :start_date, :length, :title, :attendees

    def initialize(start_date,length, title, *attendees)
        @start_date = Time.parse(start_date)
        @length = length.to_i * 60
        @title = title
        @attendees = attendees
    end

    def postpone_24h(start_date)
        @start_date = start_date + 60*60*24
        return @start_date
    end

    def end_date(start_date, length)
    @end_date = start_date + length
    return @end_date
    end

    def is_past?()
        if start_date < Time.now
            return true
        else return false
        end
    end

    def is_future?()
        !self.is_past?
    end

    def is_soon?()
        if start_date < Time.now + 30*60
            return true
        else return false
        end
    end

    def to_s
        puts "Titre : #{@title}"
        puts "Date de début : #{@start_date}"
        puts "Durée : #{@length/60} min"
        print "Invités : #{@attendees.join(" ")}"
    end
end
