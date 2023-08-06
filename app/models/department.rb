class Department < ApplicationRecord
  has_many :employees, dependent: :nullify
  validates :name, presence: true, uniqueness: true
  validates :description, length: {in: 30..500}, allow_blank: true 
end
