feature "#countdown" do
  scenario "goes through to countdown page" do
    visit('/')
    fill_in :name, with: "Asia"
    fill_in :day, with: "1"
    select(:January, from: :month)
    click_button 'submit'
    expect(page).to have_content "Hi Asia, your birthday is in"
  end
end