class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :chave
      t.string :modelo
      t.string :marca
      t.string :ano
      t.string :ano_modelo

      t.timestamps
    end
  end
end
