class CreateSpecificatons < ActiveRecord::Migration
  def self.up
    create_table :specificatons do |t|
      t.text :specification
      t.text :rate

      t.timestamps
    end
  end

  def self.down
    drop_table :specificatons
  end
end
