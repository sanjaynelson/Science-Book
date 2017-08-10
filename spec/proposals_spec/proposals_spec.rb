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
end
