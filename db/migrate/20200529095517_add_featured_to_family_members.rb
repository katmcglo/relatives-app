class AddFeaturedToFamilyMembers < ActiveRecord::Migration[6.0]
  def change
    add_column :family_members, :featured, :boolean, default: false, null: false
  end
end
