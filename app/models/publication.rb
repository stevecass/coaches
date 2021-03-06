class Publication < ActiveRecord::Base
  has_many :subscriptions
  has_many :users, through: :subscriptions
  has_many :subscribers, :through => :subscriptions, :source => :user

  def paid_subscriptions
    Subscription.paid.where(publication: self)
  end

  def paid_subscribers
    User.joins(:subscriptions).merge(Subscription.paid).where('subscriptions.publication_id = ?',  1)
  end
end
