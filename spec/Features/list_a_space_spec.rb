feature "The user can list a space" do
  scenario "A signed-in user lists the details of their space in a form" do
    sign_in_user
    click_link 'List a space'

    expect(page).to have_content('Name')
    fill_in 'name', with: 'A Boat on the Sea'
    expect(page).to have_content('Available from')
    fill_in 'from', with: '03032021'
    expect(page).to have_content('Available to')
    fill_in 'to', with: '04032021'
    expect(page).to have_content('Upload image')
    attach_file('upload', './public/img/test_image.jpg') 
    expect(page).to have_content('Description')
    fill_in 'description', with: 'cosy boat with lots of baileys and shoes'
    expect(page).to have_content('Price')
    fill_in 'price', with: '70.00'
    click_button 'List space'
    expect(page).to have_content("Makers Air B'n'G")
  end
end
