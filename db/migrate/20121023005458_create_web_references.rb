class CreateWebReferences < ActiveRecord::Migration
  def change
    create_table :web_references do |t|
      t.references :user
      t.string :autor
      t.string :sitio
      t.integer :anno
      t.integer :mes
      t.integer :dia
      t.integer :annoconsulta
      t.integer :mesconsulta
      t.integer :diaconsulta
      t.string :url

      t.timestamps
    end
    add_index :web_references, :user_id
  end
end
