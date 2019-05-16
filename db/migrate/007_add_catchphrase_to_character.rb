class AddCatchphraseToCharacter < ActiveRecord::Migrations[4.2]

  def change
    add_column :characters, :catchphrase, :string
  end 
end 
