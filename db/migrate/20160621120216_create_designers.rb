class CreateDesigners < ActiveRecord::Migration
  def change
    create_table :designers do |t|
      t.string :designer_name

      t.timestamps null: false
    end
  end
end
