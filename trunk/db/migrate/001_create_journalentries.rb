class CreateJournalentries < ActiveRecord::Migration
  def self.up
    create_table :journalentries do |t|
      t.string :author
      t.datetime :entrydate
      t.text :contents

      t.timestamps
    end
  end

  def self.down
    drop_table :journalentries
  end
end
