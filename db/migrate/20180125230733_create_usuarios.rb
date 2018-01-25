class CreateUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :usuarios do |t|
      t.string :nombres
      t.string :apellidos
      t.string :email
      t.integer :telefono

      t.timestamps
    end
  end
end
