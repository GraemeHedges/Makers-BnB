feature 'Viewing Homepage' do
  scenario 'A user can see the homepage' do
    visit '/'
    expect(page).to have_content 'Test'
  end
end