require 'spec_helper'

describe Drprl::PostCollection do
  describe "valid document" do
    let(:filename) { fixture('drupal.xml') }
    let(:document) { Nokogiri::XML(filename.read) }
    subject { described_class.call(document) }

    it 'returns posts' do
      expect(subject.entries.first).to be_a Drprl::Post
    end
  end
end
