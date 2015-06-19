require 'faker'

    20.times do
      Todo.create   :todojob    => Faker::Lorem.sentence,
                    :completed  => ['Y','N'].sample
    end