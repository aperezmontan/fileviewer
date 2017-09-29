FactoryGirl.define do
  factory :upload do
    sequence(:name) { |n| "Upload" + n.to_s }
  end
end