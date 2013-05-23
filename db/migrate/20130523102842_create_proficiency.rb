class CreateProficiency < ActiveRecord::Migration
  def change
    create_table :proficiencies do |t|
      t.references :user
      t.references :skill
      t.integer :years, :default => 0
      t.boolean :formal, :default => false
    end

  end
end
