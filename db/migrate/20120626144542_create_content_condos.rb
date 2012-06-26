class CreateContentCondos < ActiveRecord::Migration
  def change
    create_table :content_condos do |t|
      t.string :title
      t.text :context
      t.string :description

      t.timestamps
    end
  end
end
