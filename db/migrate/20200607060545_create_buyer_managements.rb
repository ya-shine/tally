class CreateBuyerManagements < ActiveRecord::Migration[6.0]
  def change
    create_table :buyer_managements do |t|
      t.references :buyer, foreign_key: true
      t.references :product, foreign_key: true
      t.timestamps
    end
  end
end
