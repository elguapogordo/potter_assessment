require 'rails_helper'

RSpec.describe 'as a user', type: :feature do
  context 'when i visit "/" and i select "Gryffindor" and i click "Search for Members"' do
    it 'i should be on "/search"' do
      visit "/"

      within('.select-field') do
        select('Gryffindor')
      end

      click_button('Search For Members')

      expect(current_path).to eq(search_path)
    end

    it 'and i should see the total number that belong to Gryffindor (21)' do
    end

    it 'and i should see a list with detailed information for the 21 members' do
    end

    it 'and for each member i should see name, role, house, and patronus' do
    end
  end
end

# As a user,
# When I visit "/"
# And I Select “Gryffindor” from the select field
# (Note: Use the existing select field)
# And I click "Search For Members“
# Then I should be on page “/search”
# Then I should see the total number of the order of the phoenix members that belong to Gryffindor. (i.e. 21)
# And I should see a list with the detailed information for the 21 members of the Order of the Phoenix for house Gryffindor.
# ​
# And for each of the members I should see:
# - The name of the member
# - The members role (if it exists)
# - The house the member belongs to
# - The Patronus of the member (if it exists)
