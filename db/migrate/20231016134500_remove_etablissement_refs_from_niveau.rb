class RemoveEtablissementRefsFromNiveau < ActiveRecord::Migration[7.0]
  def change
    remove_reference :niveaus, :etablissement
  end
end
