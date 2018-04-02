require 'rails_helper'

RSpec.describe Race do
  describe "initialization" do
    let(:race) {Race.new}
    it "considers a race that has passed to be done" do
      race.due_date = Date.tomorrow
      expect(race.done?).to be_truthy
    end
    it "considers a race that has not passed to not be done" do
      race.due_date = Date.today
      expect(race.done?).to be_falsy
    end
  end
end
