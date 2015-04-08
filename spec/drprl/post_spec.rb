require 'spec_helper'

describe Drprl::Post do
  let(:filename) { fixture('drupal.xml') }
  let(:document) { Nokogiri::XML(filename.read).xpath('//nodes').at_xpath('node')}
  subject { described_class.call(document) }

  it 'has a title' do
    expect(subject.title).to eq(
      "Avenged Sevenfold to Headline Mayhem Festival")
  end

  it 'has a body' do
    expect(subject.body).to match /<p>We're happy to announce/
  end

  it 'has a post date' do
    expect(subject.post_date).to eq Time.parse("2014-03-31 10:43")
  end

  it 'has a name' do
    expect(subject.name).to match /A7X Team/
  end

  it 'has a published' do
    expect(subject.published).to eq "Yes"
  end
end
