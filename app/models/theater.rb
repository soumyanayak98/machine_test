class Theater < ApplicationRecord
    has_many :show_times
    validates :name, :city_name, presence: true
end
