require 'rails_helper'

describe 'how admin creates question' do
  it 'creates question' do
    user = create(:user, :is_admin => true)
    visit "/"
    click_on "Log In"
    fill_in "Email", :with => "user@user.com"
    fill_in "Password", :with => "password"
    click_on "Log in"
    visit questions_path
    click_on "Add New Question"
    fill_in "Content", :with => "I like my neighbors"
    click_on "Submit Question"
    expect(page).to have_content("neighbors")
  end

end