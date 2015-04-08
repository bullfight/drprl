require 'spec_helper'

describe Drprl::Document do
  describe "valid document" do
    let(:filename) { fixture('drupal.xml') }
    let(:document) { Nokogiri::XML(filename.read) }
    subject { described_class.call(document) }

    it 'returns posts' do
      expect(subject.posts.first).to be_a Drprl::Post
    end
  end
end
