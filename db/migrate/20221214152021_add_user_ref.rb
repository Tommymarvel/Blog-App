class AddUserRef < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :author, null: false, foreign_key: {to_table: :users}
    add_reference :posts, :author, null: false, foreign_key: {to_table: :users}
    add_reference :likes, :author, null: false, foreign_key: {to_table: :users}
    add_reference :likes, :post, null: false, foreign_key: {to_table: :posts}
    add_reference :comments, :post, null: false, foreign_key: {to_table: :posts}
  end
end
