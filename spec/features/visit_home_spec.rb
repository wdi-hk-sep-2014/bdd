require 'rails_helper'

feature 'Visit the home page' do
  scenario 'Hello World!' do
    visit '/'
    expect(page).to have_content 'Hello World!'
  end

  scenario 'Privacy' do
    visit root_path
    click_link 'Privacy'
    expect(page).to have_content 'Privacy'
  end

  scenario 'Terms' do
    visit root_path
    click_link 'Terms'
    # expect(page).to have_selector('h1')
    # expect(page).to have_content 'Terms'
    expect(page).to have_xpath('//h1[text() = "Terms"]')
  end
end