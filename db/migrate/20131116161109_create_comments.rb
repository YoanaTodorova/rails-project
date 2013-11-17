class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.string :author
      t.references :player
      t.date :date

      t.timestamps
    end

    add_index :comments, :player_id
  end
end
