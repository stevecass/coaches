class Subscription < ActiveRecord::Base
  belongs_to :user
  belongs_to :jimmylala, class_name: 'User', foreign_key: :user_id
  belongs_to :publication
  scope :paid, -> {where(payment_status: 'paid')}
end