feature 'Showing links' do

  scenario 'shows saved links' do

      Link.create(url: 'https://bbc.com', title: 'BBC')
      Link.create(url: 'https://bbc.test', title: 'Test')
      visit '/links'
      expect(page.status_code).to eq 200

      within 'ol#links' do
        expect(page).to have_content('BBC')
      end
  end
end
