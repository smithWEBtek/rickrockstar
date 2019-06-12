
FactoryBot.define do
  factory :band, :class => Refinery::Bands::Band do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

