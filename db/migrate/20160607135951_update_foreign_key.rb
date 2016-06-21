class UpdateForeignKey < ActiveRecord::Migration
  def change
    # remove the old foreign_key
    remove_foreign_key :orders, :users

    # add the new foreign_key
    add_foreign_key :orders, :users, on_delete: :cascade
  end
end
