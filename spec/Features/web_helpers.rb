def sign_in_user
  visit('/')
  click_link 'Sign in'
  fill_in 'username', with: 'Old Greg'
  fill_in 'password', with: 'greggypass'
  click_on 'Submit'
end

def sign_up_user
  visit('/sign-up')
  fill_in('name', with: 'Old Greg')
  fill_in('email', with: 'oldgregg@greggs.co.ugreggs')
  fill_in('password', with: 'greggypass')
  fill_in('confirm_password', with: 'greggypass')
  click_button "Submit"
end

def sign_up_user_wrong_password
  visit('/sign-up')
  fill_in('name', with: 'Vince')
  fill_in('email', with: 'vince@vince.co.uvince')
  fill_in('password', with: 'vincypass')
  fill_in('confirm_password', with: 'notevenremotelyvincypass')
  click_button "Submit"
end
