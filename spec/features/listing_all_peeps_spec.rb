feature 'User browses the list of links' do
  before(:each) do
    Peep.create(username: 'Maciek',
                title: 'My story',
                message: 'Once upon a time')
  end

  scenario 'when opening the home page' do
    visit '/'
    expect(page).to have_content('Maciek')
    expect(page).to have_content('My story')
    expect(page).to have_content('Once upon a time')
  end
end
