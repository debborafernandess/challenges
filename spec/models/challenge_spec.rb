require 'rails_helper'

describe Challenge do
  context '#started_by?' do
    it 'started' do
      user      = create(:user)
      challenge = create(:challenge, users: [user])

      expect(challenge.started_by?(user)).to be_truthy
    end
  end

  it '#finalized!' do
    user      = create(:user)
    challenge = create(:challenge)
    started_challenge = create(:started_challenge, user: user, challenge: challenge)
    
    started_challenge.finalize!
    expect(started_challenge.finished_at).not_to be_nil
  end
end
