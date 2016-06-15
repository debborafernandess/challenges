require 'rails_helper'

feature 'User starts challenge' do
  scenario 'successfully' do
    user      = create(:user)
    challenge = create(:challenge)

    login_as(user)
    visit challenge_path(challenge)

    click_on 'Iniciar'

    expect(page).not_to have_link('Iniciar')
    expect(page).to have_content('Iniciado')
    expect(page).to have_link('Finalizar')
  end
end
