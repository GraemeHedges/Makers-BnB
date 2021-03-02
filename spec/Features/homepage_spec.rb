feature 'Viewing Homepage' do
  scenario 'A user can see the homepage' do
    visit '/'
    expect(page).to have_content 'Makers Air B\'n\'G' 
  end

  scenario 'A user can see a link for a log in page' do
    visit '/'
    expect(page).to have_link 'Login page', href: "./login_page.erb" 
  end

  scenario 'A user can see a link for a Sign up page' do
    visit '/'
    expect(page).to have_link 'Sign up', href: "./signup_page.erb"
  end

  scenario 'A user can see a link to sign out' do
    visit '/'
    expect(page).to have_link 'Sign out', href: "./signout.erb" 
  end
end