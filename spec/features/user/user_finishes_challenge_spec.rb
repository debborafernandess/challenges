require 'rails_helper'

feature 'User finishes challenge' do
  scenario 'successfully' do
    user      = create(:user)
    challenge = create(:challenge)
    started_challenge = create(:started_challenge, user: user, challenge: challenge)

    login_as(user)
    visit challenge_path(challenge)

    click_on 'Finalizar'

    expect(page).to have_content('Desafio finalizado!')
  end
end
