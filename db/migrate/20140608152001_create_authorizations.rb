class CreateAuthorizations < ActiveRecord::Migration
  def change
    create_table :authorizations do |t|

      t.timestamps
    end
  end
end
