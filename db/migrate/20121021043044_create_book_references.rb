class CreateBookReferences < ActiveRecord::Migration
  def change
    create_table :book_references do |t|
      t.references :user
      t.string :autor
      t.string :titulo
      t.integer :anno
      t.string :ciudad
      t.string :editorial
      t.integer :paginas

      t.timestamps
    end
    add_index :book_references, :user_id
  end
end
