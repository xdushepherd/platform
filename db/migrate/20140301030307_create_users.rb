class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string         :name
      t.string         :email
      t.integer        :unit_id
      t.integer        :if_expert,default: 0
      t.string         :certification
      t.string         :tel
      t.string         :remember_token
      t.string         :password_digest 

      t.timestamps
    end
  end
end
