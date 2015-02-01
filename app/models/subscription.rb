class Subscription < ActiveRecord::Base
  belongs_to :user
  belongs_to :publication
  scope :paid, -> {where(payment_status: 'paid')}
end