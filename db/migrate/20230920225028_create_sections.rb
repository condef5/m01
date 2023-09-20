class CreateSections < ActiveRecord::Migration[7.1]
  def change
    create_table :sections do |t|
      t.string :title
      t.references :parent, foreign_key: {
        to_table: :sections, on_delete: :nullify, index: true
      }

      t.timestamps
    end
  end
end
