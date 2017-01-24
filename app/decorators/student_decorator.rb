class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)
    notes = subject_item_notes.for_subject_item(subject_item).map {|s| s.value}

    if notes.empty?
      "0.00"
    else
      '%.2f' % (notes.inject(:+).to_f / notes.length).round(2)
    end
  end
end
