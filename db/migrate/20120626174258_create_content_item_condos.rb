class CreateContentItemCondos < ActiveRecord::Migration
  def change
    create_table :content_item_condos do |t|
      t.string :title
      t.string :description
      t.text :context

      t.timestamps
    end
  end
end
