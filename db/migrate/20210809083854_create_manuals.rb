class CreateManuals < ActiveRecord::Migration[6.0]
  def change
    create_table :manuals do |t|

      t.timestamps
    end
  end
end
