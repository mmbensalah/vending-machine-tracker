require 'rails_helper'

feature 'When a user visits a snack show page' do
  scenario 'they see the information for that scnack' do
    owner = Owner.create(name: "Sam's Snacks")
    dons  = owner.machines.create(location: "Don's Mixed Drinks")
    snack_1 = dons.snacks.create(name: 'Cheetos', price: 1)

    visit snack_path(snack_1)

    expect(page).to have_content(snack_1.name)
    expect(page).to have_content(snack_1.price)
  end
end
