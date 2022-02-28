class User < ApplicationRecord
    before_save :downcase_name
    validates :name, :password, presence: true
    validates :name, uniqueness: true

    def downcase_name
        self.name = name.downcase
    end
end
