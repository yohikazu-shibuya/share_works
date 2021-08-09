class CreateManuals < ActiveRecord::Migration[6.0]
  def change
    create_table :manuals do |t|
      t.text  :notice,          null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
