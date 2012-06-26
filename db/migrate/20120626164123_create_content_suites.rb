class CreateContentSuites < ActiveRecord::Migration
  def change
    create_table :content_suites do |t|
      t.string :title
      t.text :context
      t.string :description

      t.timestamps
    end
  end
end
