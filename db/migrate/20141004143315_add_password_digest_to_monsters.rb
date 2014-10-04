class AddPasswordDigestToMonsters < ActiveRecord::Migration
  def change
    add_column :monsters, :password_digest, :string
  end
end
