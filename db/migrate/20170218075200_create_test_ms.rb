class CreateTestMs < ActiveRecord::Migration[5.0]
  def change
    create_table :test_ms do |t|
      t.string :title
      t.string :comment

      t.timestamps
    end
  end
end
