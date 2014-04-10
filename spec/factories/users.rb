
FactoryGirl.define do

  factory :user_bart, :class => User do
    name "Bart Simpson"
    email "bart@simpson.com"
    age 12
    password "dirty_boy"
    password_confirmation "dirty_boy"
    encrypted_password BCrypt::Password.create("dirty_boy", :cost => 10)
  end

end