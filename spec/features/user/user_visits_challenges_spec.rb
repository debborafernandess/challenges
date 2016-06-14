require 'rails_helper'

feature 'User creates challenges' do
  scenario 'successfully' do
    challenge = create(:challenge)

    visit challenge_path(challenge)

    expect(page).to have_css('h1', text: challenge.title)
    expect(page).to have_css('p',  text: challenge.description)
    expect(page).to have_link('Iniciar', href: start_challenge_path(challenge))
  end
end
