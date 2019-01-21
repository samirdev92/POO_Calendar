require 'time'

class Event

    attr_accessor :start_date, :length, :title, :attendees

    def initialize(start_date,length, title, *attendees)
        @start_date = Time.parse(start_date)
        @length = length.to_i * 60
        @title = title
        @attendees = attendees.inspect
    end

    def postpone_24h(start_date)
        @start_date = start_date + 60*60*24
        return @start_date
    end

    def end_date(start_date, length)
    @end_date = start_date + length
    return @end_date
    end
end

event = Event.new("18-10-31 09:00", 30, "Projet", "samir@asfor.com, tintin@milou.com")
puts event.start_date, event.length, event.title, event.attendees
puts event.postpone_24h(event.start_date)
puts event.end_date(event.start_date, event.length)