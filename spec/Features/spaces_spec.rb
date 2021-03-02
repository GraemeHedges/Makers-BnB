feature "View Properties listed on our spaces page" do
  scenario "A user can select dates" do
    visit ('/spaces')
    expect(page).to have_content 'Available from:'
    expect(page).to have_content 'Available to:'
  end
end

