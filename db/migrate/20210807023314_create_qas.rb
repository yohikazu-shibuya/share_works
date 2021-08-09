class CreateQas < ActiveRecord::Migration[6.0]
  def change
    create_table :qas do |t|
      t.text  :type_qa,            null: false
      t.text  :question,        null: false
      t.text  :answer,          null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
