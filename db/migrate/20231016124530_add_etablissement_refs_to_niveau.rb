class AddEtablissementRefsToNiveau < ActiveRecord::Migration[7.0]
  def change
    add_reference :niveaus, :etablissement, null: false, foreign_key: true
  end
end
