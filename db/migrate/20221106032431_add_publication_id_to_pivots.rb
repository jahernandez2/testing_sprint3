class AddPublicationIdToPivots < ActiveRecord::Migration[6.1]
  def change
    add_column :pivots, :publication_id, :int
  end
end
