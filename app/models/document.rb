class Document < ApplicationRecord
  belongs_to :employee
  
  validates :name, presence: true
  validates :doc_type, presence: true
  validates :employee_id, presence: true, numericality: { only_integer: true }
end
