class Person
  def initalize(first_name:, middle_name: nil, last_name:)
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end

  def full_name (*names)
    names.compact.join(" ")
    # .compact removes any nil values from an array.
    # This resolves the extra spaces issue without ifs.
  end

  def full_name_with_middle_initial(first_name, middle_name, last_name)
    if middle_name == nil
      first_name + " " + last_name
    else
      first_name + " " + middle_name[0] + " " + last_name
    end
  end

  def initials(first_name, middle_name, last_name)
    if middle_name == nil
      first_name[0] + last_name[0]
    else
      first_name[0] + middle_name[0] + last_name[0]
    end
  end
end
