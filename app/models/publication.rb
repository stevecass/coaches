class Publication < ActiveRecord::Base
  has_many :subscriptions
  has_many :users, through: :subscriptions
  has_many :subscribers, :through => :subscriptions, :source => :user
end