class CreateTables < ActiveRecord::Migration
  def change

    create_table :publications do |t|
      t.string :title
      t.string :frequency
      t.string :imprint
    end

    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :name
      t.date :dob
    end

    create_table :subscriptions do |t|
      t.integer :user_id
      t.integer :publication_id
      t.date :start_date
      t.date :end_date
      t.string :payment_status
    end

  end
end
