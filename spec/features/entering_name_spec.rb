feature "Enter name" do
  scenario "allows the user to enter their name" do
    visit ('/')
    fill_in :name, with: "Asia"
    click_button 'submit'
    expect(page).to have_content "Happy Birthday Asia"
  end
end