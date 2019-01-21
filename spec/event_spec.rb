require_relative '../lib/event'

describe Event do

	describe 'initializer' do

		it 'creates an event' do
        event = Event.new("17-11-22 10:10", 22, "Title", "mail@mail.com")
        expect(event.class).to eq(Event)
		end

		it 'saves @start_date as instance variable' do
			start_date = "17-11-22 10:10"
			event = Event.new("17-11-22 10:10", 22, "Title", "mail@mail.com")
			expect(event.start_date).to eq(Time.parse(start_date))
		end

        it 'saves @length as instance variable' do
			length = 25 *60
			event = Event.new("17-11-22 10:10", 25, "Title", "mail@mail.com")
			expect(event.length).to eq(length)
        end

        it 'saves @title as instance variable' do
			title = "Event1"
			event = Event.new("17-11-22 10:10", 22, "Event1", "mail@mail.com")
            expect(event.title).to eq(title)
        end
            
        it 'saves @attendees as instance variable' do
			attendees = ["sam@sam.fr", "sam@ir.com"]
			event = Event.new("17-11-22 10:10", 22, "Title", "sam@sam.fr", "sam@ir.com")
			expect(event.attendees).to eq(attendees)
        end
        
	end
end
=begin

describe 'instance variables' do

		describe '@mail' do

			it 'can be read' do 
				mail = "email@email.com"
				user = User.new(mail)
				expect(user.mail).to eq(mail)
			end

			it 'can be written' do 
				mail_1 = "email@email.com"
				user = User.new(mail_1)
				mail_2 = "email_2@email.com"
				user.mail = mail_2
				expect(user.mail).not_to eq(mail_1)
				expect(user.mail).to eq(mail_2)
			end

		end

	end

	describe 'class methods' do

		describe 'self.all' do
            it 'shows the number of mail' do 
                mail_1 = "email1@email.com"
                user_1 = User.new(mail_1)
                mail_2 = "email2@email.com"
                user_2 = User.new(mail_2)
                mail_3 = "email3@email.com"
				user_3 = User.new(mail_3)
				expect(User.all).to eq([mail_1, mail_2, mail_3])
			end
		end

	end

end
=end