class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :post_id1
      t.integer :post_id2

      t.timestamps
    end
  end
end
