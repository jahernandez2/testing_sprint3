class AddImageurlToPublications < ActiveRecord::Migration[6.1]
  def change
    add_column :publications, :imageurl, :string
  end
end
