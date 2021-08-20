class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string   :subject,         null: false
      t.text  :message,            null: false
      t.references :user_id
      t.references :notice_id
      t.references :qa_id
      t.timestamps
    end
  end
end
