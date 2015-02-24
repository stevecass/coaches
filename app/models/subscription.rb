class Subscription < ActiveRecord::Base
  belongs_to :subscriber, class_name: 'User', foreign_key: :user_id
  #These names are just labels that add methods
  belongs_to :jimmylala, class_name: 'User', foreign_key: :user_id
  belongs_to :publication

  scope :paid, -> {where(payment_status: 'paid')}

  def self.paid2
    where(payment_status: 'paid')
  end

end



#vogue.subscriptions << Subscription.create({subscriber:steven,  start_date: '2014-11-01', end_date:'2015-10-31', payment_status:'paid'}) 
