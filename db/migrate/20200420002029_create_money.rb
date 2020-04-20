class CreateMoney < ActiveRecord::Migration[5.1]
  def change
    create_table :money do |t|
      t.string :username
      t.string :category1
      t.decimal :total1
      t.decimal :spent1
      t.string :category2
      t.decimal :total2
      t.decimal :spent2
      t.string :category3
      t.decimal :total3
      t.decimal :spent3
      t.string :category4
      t.decimal :total4
      t.decimal :spent4
      t.string :category5
      t.decimal :total5
      t.decimal :spent5

      t.timestamps
    end
  end
end
