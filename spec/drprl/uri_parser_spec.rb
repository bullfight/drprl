require 'spec_helper'

describe Drprl::URIParser do
  let(:uri) { "https://gist.githubusercontent.com/bullfight/a9e6db57147ea18b0e70/raw/1cd086dc49d954a3298fbdd1890af9883503e710/drupal.xml" }
  subject { described_class.new(uri) }

  it 'loads xml document' do
    expect(subject).to be_an Drprl::URIParser
  end

  it 'returns a document' do
    expect(subject.call).to be_an Drprl::Document
  end
end
