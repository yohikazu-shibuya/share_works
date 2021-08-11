class CreateNotices < ActiveRecord::Migration[6.0]
  def change
    create_table   :notices do |t|
      t.integer    :type_qa_id,         null: false
      t.string     :subject,         null: false
      t.text       :notice,          null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end