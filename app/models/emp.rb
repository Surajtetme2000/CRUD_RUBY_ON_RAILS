class Emp < ApplicationRecord
    has_many :documents

    validates :first_name, :last_name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :phone, presence: true
end
