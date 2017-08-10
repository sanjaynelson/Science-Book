proposal_params = {title: "Test_title", hypothesis: "Test_hypothesis", summary: "Test_summary", user_id: 1}

# RSpec.describe Proposal.new(proposal_params) do
#   it {is_expected.to have_attributes(title: "Test_title")}
#   it {is_expected.to have_attributes(hypothesis: "Test_hypothesis")}
#   it {is_expected.to have_attributes(summary: "Test_summary")}
#   it {is_expected.to have_attributes(user_id: 1)}
#   it "raises error" do
#     record = Proposal.new
#   end
# end


describe Proposal do
  describe "title" do
    it 'should validate presence' do
      record = Proposal.new
      record.title = ''
      record.valid?
      record.errors[:title].should include("can't be blank")

      record.title = "Test"
      record.valid?
      record.errors[:title].should_not include("can't be blank")
    end
  end

  describe "summary" do
    it 'should validate presence' do
      record = Proposal.new
      record.summary = ''
      record.valid?
      record.errors[:summary].should include("can't be blank")

      record.summary = "Test"
      record.valid?
      record.errors[:summary].should_not include("can't be blank")
    end
  end

  describe "hypothesis" do
    it 'should validate presence' do
      record = Proposal.new
      record.hypothesis = ''
      record.valid?
      record.errors[:hypothesis].should include("can't be blank")

      record.hypothesis = "Test"
      record.valid?
      record.errors[:hypothesis].should_not include("can't be blank")
    end
  end

  describe "user_id" do
    it 'should validate presence' do
      record = Proposal.new
      record.user_id = ''
      record.valid?
      record.errors[:user_id].should include("can't be blank")

      record.user_id = 1
      record.valid?
      record.errors[:user_id].should_not include("can't be blank")
    end
  end
end
