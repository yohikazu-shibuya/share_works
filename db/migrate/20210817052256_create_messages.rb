class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string   :subject,         null: false
      t.text  :message,            null: false
      t.references :user
      t.references :notice
      t.references :qa
      t.timestamps
    end
  end
end
