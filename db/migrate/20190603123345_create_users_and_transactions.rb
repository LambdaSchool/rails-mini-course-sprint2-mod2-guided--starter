class CreateUsersAndTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :name
      t.string :api_key, null: false
      t.integer :balance, default: 0, null: false
      t.timestamps
    end

    create_table :transactions do |t|
      t.belongs_to :user, index: true
      t.string :transfer_uid, index: true
      t.integer :amount, null: false
      t.string :category, null: false
      t.string :status, default: "pending", null: false
      t.timestamps
    end
  end
end
