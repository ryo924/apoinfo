class CreateCheckeds < ActiveRecord::Migration[6.0]
  def change
    create_table :checkeds do |t|
      t.text :sender
      t.text :receiver
      t.text :content
      t.boolean :checked
      t.timestamps
    end
  end
end
