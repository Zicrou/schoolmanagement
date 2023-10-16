class CreateEtablissements < ActiveRecord::Migration[7.0]
  def change
    create_table :etablissements do |t|
      t.string :name

      t.timestamps
    end
  end
end
