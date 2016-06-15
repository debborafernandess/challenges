class CreateStartedChallenges < ActiveRecord::Migration
  def change
    create_table :started_challenges do |t|
      t.references :challenge, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
    end
  end
end
