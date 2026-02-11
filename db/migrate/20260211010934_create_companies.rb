class CreateCompanies < ActiveRecord::Migration[8.1]
  def change
    create_table :companies do |t|
      t.timestamps
      t.string "agent"
    end
  end
end
