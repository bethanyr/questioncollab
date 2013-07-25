class CreateAuthorships < ActiveRecord::Migration
  def change
    create_table :authorships do |t|
      t.text :answer
      t.references :question
      t.references :user
      t.timestamps
    end
  end
end
