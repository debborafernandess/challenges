class AddFieldsToStartedChallenge < ActiveRecord::Migration
  def change
    add_column :started_challenges, :created_at, :datetime
    add_column :started_challenges, :finished_at, :datetime
  end
end
