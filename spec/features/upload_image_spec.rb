require 'rails_helper'

feature 'Visit the image uploader page' do
  scenario 'Upload Image' do
    visit '/'
    expect(page).to have_content 'Image'
  end
end