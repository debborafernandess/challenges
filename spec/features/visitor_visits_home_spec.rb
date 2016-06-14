require 'rails_helper'

feature 'Visitor visits Home' do
  scenario 'successfully' do
    visit root_path

    expect(page).to have_css('h1', text: 'Challenges')
  end
end
