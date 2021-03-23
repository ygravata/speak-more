class CreateSpeakLocalities < ActiveRecord::Migration[6.1]
  def change
    create_table :speak_localities do |t|
      t.integer :code

      t.timestamps
    end
  end
end
