class CreateTeams < ActiveRecord::Migration
  def self.up
    create_table :teams do |t|
      t.string :fullname
      t.string :shortname
      t.string :symbol
      t.string :manager
      t.string :president
      t.string :address
      t.string :post_code
      t.string :city
      t.string :fax
      t.string :phone
      t.string :stadium_name
      t.string :stadium_directions
      t.string :contact_person_name
      t.string :contact_person_phone
      t.string :contact_person_email
      t.integer :points_to_add
      t.integer :points_to_remove
      t.integer :ranking
      t.string :custom_text1
      t.integer :yearly_budget
      t.integer :total_games_win
      t.integer :total_games_lose
      t.integer :total_games_draw
      t.boolean :supplent
      t.byte :team_logo_file
      t.boolean :enabled
      t.integer :tgroup

      t.timestamps
    end
  end

  def self.down
    drop_table :teams
  end
end
