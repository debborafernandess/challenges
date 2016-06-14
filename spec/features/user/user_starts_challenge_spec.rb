require 'rails_helper'

feature 'User starts challenge' do
 scenario 'successfully' do
   user      = create(:user)
   challenge = create(:challenge)

   visit challenge_path
   login_as(user)

   click_on 'Iniciar'

   expect{click_on('Iniciar')}.to change{ChallengesUser.count}.by(1)
 end
end
