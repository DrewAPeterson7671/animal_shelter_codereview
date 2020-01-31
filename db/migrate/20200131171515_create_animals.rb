class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.column :type, :string
      t.column :name, :string
      t.column :comments, :text

      t.timestamps()
    end
  end
end
