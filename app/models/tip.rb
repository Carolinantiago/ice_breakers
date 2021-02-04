class Tip < ApplicationRecord
    belongs_to :admin_user
    validates :admin_user, presence: true
    validates :tip_description, presence: true
end
