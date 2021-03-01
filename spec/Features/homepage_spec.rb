feature 'Viewing Homepage' do
  scenario 'A user can see the homepage' do
    visit '/'
    expect(page).to have_content 'Makers Air B\'n\'G' 
  end
end