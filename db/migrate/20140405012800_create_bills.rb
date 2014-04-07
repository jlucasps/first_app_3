class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :name
      t.string :description
      t.references :user, foreign_key: true
      t.datetime :date
      t.decimal :value
      t.timestamps
    end


  end
end
