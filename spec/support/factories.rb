FactoryGirl.define do
  sequence(:title) { |n| "#{n} Title" }
  sequence(:body) { |n| "The quick brown fox jumped over the lazy dog #{n} times." }

  factory :idea do
    title
    body
    quality 0
  end
end
