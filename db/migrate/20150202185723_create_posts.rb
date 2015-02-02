class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id, index: true
      t.string :title
      t.text :body
      t.string :publication_status
      t.date :published_on
    end

    create_table :photos do |t|
      t.integer :post_id, index: true
      t.string :caption
    end

    create_table :comments do |t|
      t.references :commentable, polymorphic: true, index: true
      t.integer :user_id, index: true
      t.string :body
    end
  end
end
