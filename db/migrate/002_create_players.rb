class CreatePlayers < ActiveRecord::Migration
  def self.up
    create_table :players do |t|
      t.integer :team_id
      t.string :surname
      t.string :firstname
      t.integer :poste
      t.integer :shirt_number
      t.integer :country_id
      t.datetime :in_club_since
      t.datetime :date_of_birth
      t.boolean :on_loan
      t.text :notes
      t.string :previous_club
      t.string :address1
      t.string :address2
      t.string :city
      t.string :post_code
      t.string :phone1
      t.string :phone2
      t.string :mobile_phone
      t.string :email
      t.string :custom_text
      t.string :custom_text2
      t.integer :custom_number1
      t.integer :custom_number2
      t.boolean :supplent
      t.boolean :enabled

      t.timestamps
    end
  end

  def self.down
    drop_table :players
  end
end
