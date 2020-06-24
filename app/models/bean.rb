class Bean < ApplicationRecord
    belongs_to :roaster
    has_one :bean_profile
    accepts_nested_attributes_for :bean_profile, allow_destroy: true
    enum status: [ :active, :inactive, :pending, :draft ]
end
