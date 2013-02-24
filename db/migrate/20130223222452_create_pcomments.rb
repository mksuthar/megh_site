class CreatePcomments < ActiveRecord::Migration
  def change
    create_table :pcomments do |t|
      t.string :author
      t.string :authorid
      t.string :authorprovider
      t.text :content
      t.integer :post_id
      t.datetime :createdat

      t.timestamps
    end
  end
end
