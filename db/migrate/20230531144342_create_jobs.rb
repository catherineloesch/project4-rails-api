class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :description
      t.string :job_type
      t.string :pay
      t.date :start_date
      t.time :start_time
      t.date :end_date
      t.time :end_time
      t.string :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
