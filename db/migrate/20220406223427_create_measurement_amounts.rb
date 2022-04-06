class CreateMeasurementAmounts < ActiveRecord::Migration[7.0]
  def change
    create_table :measurement_amounts do |t|
      t.string :amount

      t.timestamps
    end
  end
end
