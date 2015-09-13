class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.references :message, index: true, foreign_key: true
    end
  end
end
