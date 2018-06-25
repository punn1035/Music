
require 'rails_helper'

describe 'check song' , js: true do
  it 'have 3 songs in html' do
    visit '/song/html'
    expect(page).to have_xpath("/html/body/table/tbody/tr", count: 3)
  end

  it 'have 3 songs in json' do
    visit 'song/json'
    expect(page).to have_text('"name":', count: 3)
  end
  
  it 'have 3 columns in html' do
    visit 'song/html'
    within('table') do
      expect(page).to have_xpath("thead/tr/th[1]", text: "Name")
      expect(page).to have_xpath("thead/tr/th[2]", text: "Band")
      expect(page).to have_xpath("thead/tr/th[3]", text: "Album")
    end
  end
end
