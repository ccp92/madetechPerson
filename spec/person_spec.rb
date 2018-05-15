require "person"

describe Person do
  person = Person.new
  describe "#full_name" do
    it "concatenates first name, middle name, and last name with spaces" do
      expect(person.full_name("Christopher", "Callum", "Parsons")).to eq("Christopher Callum Parsons")
    end

    it "concatenates a different first name, middle name, and last name with spaces" do
      expect(person.full_name("Billy", "The", "Kid")).to eq("Billy The Kid")
    end

    it "does not add extra spaces if middle name is missing" do
      expect(person.full_name("Christopher", nil, "Parsons")).to eq("Christopher Parsons")
    end

    it "does not add extra spaces if middle name is missing for a different name" do
      expect(person.full_name("Black", nil, "Panther")).to eq("Black Panther")
    end
  end

  describe "#full_name_with_middle_initial" do
    it "concatenates first name, middle initial, and last name with spaces" do
      expect(person.full_name_with_middle_initial("Christopher", "Callum", "Parsons")).to eq("Christopher C Parsons")
    end

    it "concatenates a different first name, middle initial, and last name with spaces" do
      expect(person.full_name_with_middle_initial("Billy", "The", "Kid")).to eq("Billy T Kid")
    end

    it "does not add extra spaces if middle name is missing" do
      expect(person.full_name_with_middle_initial("Christopher", nil, "Parsons")).to eq("Christopher Parsons")
    end

    it "does not add extra spaces if middle name is missing for a different name" do
      expect(person.full_name_with_middle_initial("Black", nil, "Panther")).to eql("Black Panther")
    end
  end

  describe "#initials" do
    it "concatenates first initial, middle initial, and last initial" do
      expect(person.initials("Christopher", "Callum", "Parsons")).to eq("CCP")
    end

    it "concatenates a different first initial, middle initial, and last initial" do
      expect(person.initials("Billy", "The", "Kid")).to eq("BTK")
    end

    it "does not add extra spaces if middle name is missing" do
      expect(person.initials("Christopher", nil, "Parsons")).to eq("CP")
    end

    it "does not add extra spaces if middle name is missing for a different name" do
      expect(person.initials("Black", nil, "Panther")).to eq("BP")
    end
  end
end
