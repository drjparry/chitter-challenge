# As a Maker
# So that I can post messages on Chitter as me
# I want to sign up for Chitter

feature "Users can sign up for Chitter" do
  scenario "Users and fill out a form and sign up" do
    visit '/home'
    click_button('Sign up')
    fill_in('name', with: 'David')
    fill_in('email', with: 'drjparry@gmail.com')
    fill_in('password', with: 'password')
    fill_in('password_confirmation', with: 'password')
    expect{click_button('Submit')}.to change(User, :count).by 1
    expect(page).to have_content "Welcome to Chitter David"
    expect(User.first.email).to eq 'drjparry@gmail.com'
  end
end