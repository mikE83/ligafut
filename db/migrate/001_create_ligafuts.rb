class CreateLigafuts < ActiveRecord::Migration
  def self.up
    create_table :ligafuts do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :ligafuts
  end
end
