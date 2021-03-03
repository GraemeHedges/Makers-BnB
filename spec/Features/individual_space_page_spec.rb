feature 'Viewing page' do
  scenario 'A customer can view indivdual spaces' do
    visit('/individual-space')
    expect(page).to have_content('Property viewer')
    expect(page.find('#image')['src']).to have_content('img/test_image.jpg')
    expect(page).to have_content('Price:')
    expect(page).to have_content('Description:')
    expect(page).to have_link('Home', href: '/')
    expect(page).to have_button('Book now')
  end
end