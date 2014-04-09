# check if there are any JS errors on page before and after every feature test where :js => true
RSpec.configure do |config|

  config.before(:each) do
    expect(page).not_to have_errors if example.metadata[:js]
  end
  
  config.after(:each) do
    expect(page).not_to have_errors if example.metadata[:js]
  end
  
end