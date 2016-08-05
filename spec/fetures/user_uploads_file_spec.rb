require 'rails_helper'

feature 'User uploads file' do
  scenario 'successfully' do
    visit root_path
    attach_file("File", Rails.root + "spec/fixtures/dados.txt")
    click_on 'Upload'
    expect(page).to have_content 'Tables'
  end
end
