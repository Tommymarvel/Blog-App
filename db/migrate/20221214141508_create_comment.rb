class CreateComment < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.bigint :AuthorId
      t.bigint :PostId
      t.string :Text

      t.timestamps
    end
  end
end
