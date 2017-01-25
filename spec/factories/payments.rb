FactoryGirl.define do
  factory :payment do
    value Random.rand(10..900)
    date Faker::Date.between(5.months.ago, Date.today)
    student nil
  end

end
