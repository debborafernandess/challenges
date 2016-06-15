class StartedChallenge < ActiveRecord::Base
  belongs_to :challenge
  belongs_to :user

  def finalize!
    update_attribute(:finished_at, Time.now)
    Solution.create(user: user, challenge: challenge)
  end
end
