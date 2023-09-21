class CreateTopics < ActiveRecord::Migration[7.1]
  def change
    create_table :topics do |t|
      t.string :title
      t.string :video
      t.references :section, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
