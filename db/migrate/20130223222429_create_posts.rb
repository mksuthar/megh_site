class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :category
      t.text :content
      t.text :cite
      t.text :tags
      t.string :author
      t.datetime :createdat
      t.datetime :updatedat
      t.datetime :lastcommentat

      t.timestamps
    end
  end
end
