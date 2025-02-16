feature 'Create a new peep' do
  scenario 'User adds a peep and is showed peep on the next page' do
    visit '/'
    click_button 'Register'
    fill_in 'name', with: 'John'
    fill_in 'username', with: 'John1'
    fill_in 'email', with: 'john@test.com'
    fill_in 'password', with: 'password123'
    click_button 'Sign Up'

    click_button 'Create Peep'
    fill_in 'text', with: 'Test peep'
    click_button 'Post Peep!'
    expect(page).to have_content 'Test peep'
  end
end
