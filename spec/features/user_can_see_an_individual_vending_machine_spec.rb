require 'rails_helper'

feature 'When a user visits a vending machine show page' do
  scenario 'they see the location of that machine' do
    owner = Owner.create(name: "Sam's Snacks")
    dons  = owner.machines.create(location: "Don's Mixed Drinks")
    snack_1 = dons.snacks.create(name: 'Cheetos', price: 1)
    snack_2 = dons.snacks.create(name: 'Waffles', price: 2)
    snack_3 = dons.snacks.create(name: 'Candy', price: 3)

    visit machine_path(dons)

    expect(page).to have_content("Don's Mixed Drinks Vending Machine")
    expect(page).to have_content(snack_1.name)
    expect(page).to have_content(snack_1.price)
    expect(page).to have_content(snack_2.name)
    expect(page).to have_content(snack_2.price)
    expect(page).to have_content(snack_3.name)
    expect(page).to have_content(snack_3.price)
    expect(page).to have_content("Average price: 2")
  end
end
