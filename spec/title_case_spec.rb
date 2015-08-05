require('rspec')
require('title_case')

describe('String#title_case') do
  it ("capitalizes the first letter of a word") do
    expect(("ulysses").title_case()).to(eq("Ulysses"))
  end
  it("capitalizes first letter of all words") do
    expect(("into thin air").title_case()).to(eq("Into Thin Air"))
  end
  it("does not capitalize articles") do
    expect(("into the wild").title_case()).to(eq("Into the Wild"))
  end
  it("always capitalizes the first letter of first word") do
    expect(("the grapes of wrath").title_case()).to(eq("The Grapes of Wrath"))
  end
  it("does not affect non-letter characters") do
    expect(("50 shades of grey").title_case()).to(eq("50 Shades of Grey"))
  end
  it("downcases all letters except for first one") do
    expect(("THe cuRiouS cASe OF benJamIN BuTtoN").title_case()).to(eq("The Curious Case of Benjamin Button"))
  end
end
