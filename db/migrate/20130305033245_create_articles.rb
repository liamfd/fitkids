class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title , :null => false
      t.text :content
      t.reference :tag

      t.timestamps
    end
  end
end
