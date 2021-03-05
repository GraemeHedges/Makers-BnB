def sign_in_user
  visit '/'
  click_link 'Sign in'

  fill_in 'username', with: 'Old Greg'
  fill_in 'password', with: 'Password1!'
  click_on 'Submit'
end

def sign_up_user
  visit('/sign-up')
  fill_in('name', with: 'Old Greg')
  fill_in('email', with: 'oldgregg@greggs.co.ugreggs')
  fill_in('password', with: 'greggypass')
  fill_in('confirm-password', with: 'greggypass')
  click_button "Submit"
end