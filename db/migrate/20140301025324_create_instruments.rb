class CreateInstruments < ActiveRecord::Migration
  def change
    create_table :instruments do |t|
      t.string    :name
      t.string    :brand
      t.string    :useage
      t.string    :address
      t.string    :unit_id
      t.integer   :price_once
      t.text      :description
      t.string    :specification
      t.datetime  :date_producted
      t.datetime  :date_purchased
      t.integer   :purchased_price
      t.string    :producted_factory
      t.integer   :status,default: 0

      t.timestamps
    end
  end
end
