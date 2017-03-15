FactoryGirl.define do
  factory :donation do
    full_name "MyString"
    email "MyString"
    message "MyText"
    notification_params "MyText"
    status "MyString"
    transaction_id "MyString"
    purchased_at "2017-03-15 22:02:32"
    amount 1
  end
end
