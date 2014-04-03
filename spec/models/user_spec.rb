require 'spec_helper'

describe User do
  
  it 'creates a valid user' do
    user = User.new name: "Joao Lucas",
                    email: "jlucasps@gmail.com",
                    age: 25

    user.save.should be_true
  end

end