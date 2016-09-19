class CreateCodebits < ActiveRecord::Migration[5.0]
  def change
    create_table :codebits do |t|
      t.string :name, null: false
      t.text :code, null: false
      t.string :language, null: false

      t.timestamps
    end
  end
end
