class Subscription < ActiveRecord::Base
  belongs_to :user

  # These names are just labels that add methods
  # belongs_to :jimmylala, class_name: 'User', foreign_key: :user_id

  belongs_to :publication
  scope :paid, -> {where(payment_status: 'paid')}
end