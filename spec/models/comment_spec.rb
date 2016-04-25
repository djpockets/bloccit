require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:topic) { Topic.create!(name: RandomData.random_sentence, description: RandomData.random_paragraph) }
  let(:user) { User.create!(name: "Bloccit User", email: "user@bloccit.com", password: "helloworld") }
  let(:post) { topic.posts.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph, user: user) }
  let(:post_comment) { Comment.create!(body: 'Comment Body', post: post, user: user) }
  let(:topic_comment) { Comment.create!(body: 'Comment Body', topic: topic, user: user) }

  it { is_expected.to belong_to(:post) }
  it { is_expected.to belong_to(:topic) }
  it { is_expected.to belong_to(:user) }
  it { is_expected.to validate_presence_of(:body) }
  it { is_expected.to validate_length_of(:body).is_at_least(5) }

  describe "attributes" do
    context "post comment" do
      it "responds to body" do
        expect(post_comment).to respond_to(:body)
      end
    end
    context "topic comment" do
      it "responds to body" do
        expect(topic_comment).to respond_to(:body)
      end
    end
  end
end
