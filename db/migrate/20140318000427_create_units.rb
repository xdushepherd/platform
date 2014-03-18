class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :name
      t.string :remark
      t.string :address
      t.string :link_man
      t.string :link_tel

      t.timestamps
    end
  end
end
