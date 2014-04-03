
require 'spec_helper'

describe '.about', type: :feature do
  
  it 'access about page and show the address' do
    visit about_path

    page.should have_content("Rua Maranhão, 1283")
  end

end