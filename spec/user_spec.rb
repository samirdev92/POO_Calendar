require_relative '../lib/user'

describe User do

  before(:each) do
  	# ligne trouvée ici : https://geminstallthat.wordpress.com/2008/08/11/reloading-classes-in-rspec/
  	# qui permet de remettre à zéro la classe. Pratique pour la méthode count, mais pas obligatoire.
    Object.send(:remove_const, 'User')
    load 'user.rb'
  end

	describe 'initializer' do

		it 'creates an user' do
      user = User.new("email@email.com")
      expect(user.class).to eq(User)
		end

		it 'saves @email as instance variable' do
			mail = "email@email.com"
			user = User.new(mail)
			expect(user.mail).to eq(mail)
		end

		it 'adds the new mail into the @@user_list global variable' do
            mail_1 = "email@email.com"
            mail_2 = "email_2@email.com"
            user = User.new(mail_1)
            user_2 = User.new(mail_2)
			expect(User.all).to eq([mail_1, mail_2])
		end
	end



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