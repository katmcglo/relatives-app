class RemoveTagsFromFamilyMember < ActiveRecord::Migration[6.0]
  def change
    remove_column :family_members, :tags, :string
  end
end
