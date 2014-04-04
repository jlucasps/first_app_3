module UsersHelper

  def gender_name(user)
    if user.gender == User::MALE
      "(Masculino)"
    elsif user.gender == User::FEMALE
      "(Feminino)"
    else
      "(Não definido)"
    end
  end

end