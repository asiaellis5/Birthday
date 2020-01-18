feature "Testing Infrastructure" do
  scenario "it says Hello" do
    visit('/')
    expect(page).to have_content 'Hello there!'
  end
end