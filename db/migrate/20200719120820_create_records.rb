class CreateRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :records do |t|
      t.text :content1
      t.text :content2
      t.text :content3
      t.timestamps
    end
  end
end
