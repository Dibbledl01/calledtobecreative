class AddConferencesAttendeesJoinTable < ActiveRecord::Migration
  def self.up
    create_table :attendees_conferences do |t|
      t.string :attendee_id
      t.string :conference_id
    end
  end

  def self.down
    drop_table :attendees_conferences
  end
end
