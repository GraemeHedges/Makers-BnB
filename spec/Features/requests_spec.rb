feature 'Requests page' do
  scenario 'Start at the homepage, login and see the link to the requests page' do
    sign_up_user
    sign_in_user
    expect(page).to have_link 'Requests', href: "/requests"
  end

  scenario 'Goes to request page and sees requests I have made' do
    sign_up_user
    sign_in_user
    click_on 'Requests' 
    expect(page).to have_content 'Requests I have made:'
    expect(page).to have_content 'Requests I have received:'
    expect(page).to have_link 'Home', href: '/'
  end
end