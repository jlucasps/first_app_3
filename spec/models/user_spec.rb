require 'spec_helper'

describe User do
  
  it 'creates a valid user' do
    user = User.new name: "Joao Lucas", email: "jlucasps@gmail.com", age: 25
    user.save.should be_true
  end

  it 'fails to create an user with blank name' do
    user = User.new email: "jlucasps@gmail.com", age: 25
    user.save.should be_false
  end

  it 'fails to create an user with blank email' do
    user = User.new name: "Joao Lucas", age: 25
    user.save.should be_false
  end

  it 'creates a user with FEMALE gender' do
    user = User.new name: "Candice",
                    email: "candice@gmail.com",
                    gender: User::FEMALE

    user.save.should be_true
  end

end