require 'rails_helper'

RSpec.describe Comment, :type => :model do
  context "association" do
  it { should belong_to(:article) }
  end

  context "attributes" do
    it {should have_attribute(:commenter)}
    it {should have_attribute(:body)}
  end
end
