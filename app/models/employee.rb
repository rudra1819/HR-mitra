class Employee < ApplicationRecord
  has_many:documents

  validates :first_name, :last_name, presence:true
  validates :personal_email,presence:true ,uniqueness:true
  validates :city,:state,:country,:address_line_1,:address_line_2,presence:true
end

