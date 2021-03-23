class CreateSpeakConnectionCosts < ActiveRecord::Migration[6.1]
  def change
    create_table :speak_connection_costs do |t|
      t.string :source
      t.string :destiny
      t.float :price

      t.timestamps
    end
  end
end
