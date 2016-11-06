class CreateRants < ActiveRecord::Migration[5.0]
  def change
    create_table :rants do |t|
      t.string :title
      t.string :uri

      t.timestamps
    end
  end
end
