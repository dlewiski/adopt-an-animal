class CreateShirts < ActiveRecord::Migration[5.2]
  def change
    create_table :shirts do |t|
      t.column :name, :string
      t.column :sold, :boolean
    end
  end
end
