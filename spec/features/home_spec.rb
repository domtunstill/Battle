# feature 'Home page says Testing infrastructure working!' do
#   scenario 'Can run app and check page content' do
#   visit('/')
#   expect(page).to have_content 'Testing infrastructure working!'
#   end
# end


feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
