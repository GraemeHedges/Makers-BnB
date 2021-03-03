feature 'Viewing Homepage' do
  scenario 'A user can see the homepage' do
    visit '/'
    expect(page).to have_content 'Makers Air B\'n\'G' 
  end

  scenario 'A non signed in user can see a link for a log in page' do
    visit '/'
    expect(page).to have_link 'Sign in', href: "/sign-in" 
  end

  scenario 'A non signed in user can see a link for a Sign up page' do
    visit '/'
    expect(page).to have_link 'Sign up', href: "/sign-up"
  end

end