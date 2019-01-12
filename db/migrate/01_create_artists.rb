class CreateArtists < ActiveRecord::Migration
  def up
  end
 
  def down
  end
  
  def change
    create_table :artists do |t|
  end
  

sql = <<-SQL
  CREATE TABLE IF NOT EXISTS artists (
  id INTEGER PRIMARY KEY,
  name TEXT,
  genre TEXT,
  age INTEGER,
  hometown TEXT
  )
SQL
 
ActiveRecord::Base.connection.execute(sql)


end