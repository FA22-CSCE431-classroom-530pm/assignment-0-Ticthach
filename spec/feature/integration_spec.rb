# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'rowl'
    fill_in 'Price', with: 5
    fill_in 'Date', with: '2022-9-01'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('rowl')
    expect(page).to have_content(5)
    expect(page).to have_content('2022-9-01')
  end
end