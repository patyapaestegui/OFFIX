class Employee < ApplicationRecord
  belongs_to :department, counter_cache: true, optional: true
  validates :name, presence: true
  validates :role, presence: true
  # validates :birth_date, comparison:{ less_than: 18.years.ago, message: "you should  be older than 18" }
  validates :birth_date, comparison: { less_than: 18.years.ago }

end
