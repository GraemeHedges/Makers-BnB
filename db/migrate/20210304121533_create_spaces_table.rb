class CreateSpacesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :spaces do |t|
      t.string :name, :required => true, :uniqueness => true
      t.string :price, :required => true
      t.text :description, :required => true
      t.string :available, :required => true
      t.string :space_owner, :required => true
    end
  end
end
