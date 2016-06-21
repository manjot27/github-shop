class AddDesignerToProducts < ActiveRecord::Migration
  def change
  	designer = Designer.create! designer_name: "No Designer"

    add_reference :products, :designer, index: true, foreign_key: true, default: designer.id

  end
end


