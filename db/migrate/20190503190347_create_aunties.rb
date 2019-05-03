class CreateAunties < ActiveRecord::Migration[5.2]
  def change
    create_table :aunties do |t|
      t.string :personality
      t.timestamps
    end
  end
end
