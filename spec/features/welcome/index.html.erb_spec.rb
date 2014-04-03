
require 'spec_helper'

describe '.index', type: :feature do
  
  it 'access home page' do
    visit root_path

    page.should have_content("João Lucas")
  end

  it 'access public pages' do
    
    visit root_path
    page.should have_content("João Lucas")

    click_link "Sobre"
    page.should have_content("Rua Maranhão, 1283")

  end

end