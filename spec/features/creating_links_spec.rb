feature 'Creating new links' do

  scenario 'creates a new link' do

    visit '/links/new'
    fill_in :title, with: 'Pearls Before Swine'
    fill_in :url, with: 'http://www.gocomics.com/pearlsbeforeswine'
    click_button 'Save new link'
    expect(current_path).to eq '/links'

    within 'ol#links' do
      expect(page).to have_content 'Pearls Before Swine'
    end


  end


end
