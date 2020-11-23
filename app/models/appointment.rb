class Appointment < ApplicationRecord

  with_options presence: true do
    validates :title
    validates :company
    validates :customer
    validates :date
    validates :place
    validates :purpose
    validates :relation_id
  end

  belongs_to :user

end
