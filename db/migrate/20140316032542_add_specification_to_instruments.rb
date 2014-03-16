class AddSpecificationToInstruments < ActiveRecord::Migration
  def change
    add_column :instruments, :specification, :string
  end
end
