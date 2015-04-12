class AddScaleAndPrecisionToPriceColumnInProductsTable < ActiveRecord::Migration
  def up
	  change_column(:products, :price, :decimal, :precision => 8, :scale => 2)
  end

	def down
	  change_column(:products, :price, :float)
	end
end
