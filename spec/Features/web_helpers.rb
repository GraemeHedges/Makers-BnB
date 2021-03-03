def sign_in_user
  visit '/'
  click_link 'Sign in'

  fill_in 'username', with: 'Old Greg'
  fill_in 'password', with: 'Password1!'
  click_on 'Submit'
end