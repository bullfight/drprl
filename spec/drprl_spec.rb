require 'spec_helper'

describe Drprl do
  let(:filename) { fixture('drupal.xml') }
  subject { described_class }

  it 'has a version number' do
    expect(Drprl::VERSION).not_to be nil
  end

  it 'parses a file' do
    expect(subject.parse(filename)).to be_an Drprl::Document
  end

  it 'returns posts' do
    document = subject.parse(filename)
    expect(document.posts.first).to be_a Drprl::Post
  end
end
