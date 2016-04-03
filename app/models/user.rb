class NameValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A[a-zA-Z]+\z/i
      record.errors[attribute] << (options[:message] || 'must contain only characters')
    end
  end
end

class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || 'is not an email')
    end
  end
end

class User < ActiveRecord::Base
  has_secure_password
  validates :first_name, :last_name, name: true
  validates :email, email: true, uniqueness: true
end
