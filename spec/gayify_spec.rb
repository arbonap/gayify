require "spec_helper"
require "gayify"

describe Gayify::Gay do
  it "has a version number" do
    expect(Gayify::VERSION).not_to be nil
  end

  it ".rainbow responds with 🌈 rainbow emoji" do
    expect(Gayify::Gay.rainbow).to eql("🌈")
  end

  it "pluralizes a word" do
    expect(Gayify::Gay.pluralize("Gay")).to eql("Gays")
  end
end
