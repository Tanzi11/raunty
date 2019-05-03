class CreateAdvices < ActiveRecord::Migration[5.2]
  def change
    create_table :advices do |t|
      t.references :aunty, foreign_key: true
      t.references :rant, foreign_key: true
      t.string :feedback
      t.boolean :helpful
      t.timestamps
    end
  end
end
