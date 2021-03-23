class CreateSpeakCosts < ActiveRecord::Migration[6.1]
  def change
      create_table :speak_costs do |t|
        t.integer :speak_locality_id
        t.integer :speak_destiny_id
        t.float :cost

        t.timestamps
      end

      add_index(:speak_costs, [:speak_locality_id, :speak_destiny_id], :unique => true)
      add_index(:speak_costs, [:speak_destiny_id, :speak_locality_id], :unique => true)
   end
end
