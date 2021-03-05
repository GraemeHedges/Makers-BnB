feature "The user can list a space" do
  scenario "A signed-in user lists the details of their space in a form" do
    sign_up_user
    sign_in_user
    click_link 'List a space'

    fill_in 'name', with: 'A Boat on the Sea'
    fill_in 'from', with: '20210501'
    fill_in 'to', with: '20210601'
    fill_in 'description', with: 'cosy boat with lots of baileys and shoes'
    fill_in 'price', with: '70.00'
    click_button 'List space'
    expect(Spaces.search("2021-05-02")[0].name).to eq('A Boat on the Sea')
    visit('/spaces')
  end
end
