class CreateUsers < ActiveRecord::Migration[4.2]
  def change
    create_table :users do |t|
      t.integer :uid
    end
  end
end