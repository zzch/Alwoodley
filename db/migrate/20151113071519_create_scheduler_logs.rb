class CreateSchedulerLogs < ActiveRecord::Migration
  def change
    create_table :scheduler_logs do |t|
      t.string :result, limit: 500, null: false
      t.timestamps null: false
    end
  end
end
