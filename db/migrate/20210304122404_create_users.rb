class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, :required => true
      t.string :email, :required => true, :uniqueness => true
      t.string :password, :required => true
    end
  end
end
