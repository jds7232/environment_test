# location: spec/feature/pdate_integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Published Date', with: Date.new(1995,6,9)
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content(Date.new(1995,6,9))
  end
end