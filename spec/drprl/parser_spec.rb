require 'spec_helper'

describe Drprl::Parser do
  let(:filename) { fixture('drupal.xml') }
  subject { described_class.new(filename) }

  it 'loads xml document' do
    expect(subject).to be_an Drprl::Parser
  end

  it 'returns a document' do
    expect(subject.call).to be_an Drprl::Document
  end
end
