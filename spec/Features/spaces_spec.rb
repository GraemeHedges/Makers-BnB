feature "View Properties listed on our spaces page" do
  scenario "A user can select dates" do
    sign_in_user
    click_link 'List a space'

    fill_in 'name', with: 'A Boat on the Sea'
    fill_in 'from', with: '20210501'
    fill_in 'to', with: '20210601'
    fill_in 'description', with: 'cosy boat with lots of baileys and shoes'
    fill_in 'price', with: '70.00'
    click_button 'List space'
    visit ('/spaces')
    fill_in 'night', with: '20210503'
    click_button 'List Spaces'
    expect(page).to have_content('Name: A Boat on the Sea')
    expect(page).to have_content('Price: 70')
    expect(page).to have_content('Description: cosy boat with lots of baileys and shoes')
  end
end

