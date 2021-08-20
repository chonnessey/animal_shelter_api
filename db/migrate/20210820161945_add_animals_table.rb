class AddAnimalsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :animals do |t|
      t.column :type, :string
      t.column :breed, :string
      t.column :age, :string
      t.column :sex, :string
      t.column :color, :string
      t.column :weight, :integer
      t.column :date, :string
      t.column :adoption_fee, :float
    end
  end
end
