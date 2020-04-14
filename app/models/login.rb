class Login < ApplicationRecord
    validates :username, presence: true,
        length: { minimum: 3 },
        uniqueness: {case_sensitive: false}
end
