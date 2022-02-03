# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: 9.99
    fill_in 'Date published', with: '2001-11-11'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('J.K. Rowling')
    expect(page).to have_content(9.99)
    expect(page).to have_content('2001-11-11')
  end

  scenario 'invalid inputs' do
    visit new_book_path
    fill_in 'Title', with: nil
    fill_in 'Author', with: nil
    fill_in 'Price', with: nil
    fill_in 'Date published', with: nil
    click_on 'Create Book'
    visit books_path
    expect(page).not_to have_content('harry potter')
    expect(page).not_to have_content('J.K. Rowling')
    expect(page).not_to have_content(9.99)
    expect(page).not_to have_content('2001-11-11')
  end
end