class CreateLike < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.bigint :AuthorId
      t.bigint :PostId
      
      t.timestamps
    end
  end
end
