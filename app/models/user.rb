class User < ApplicationRecord
  has_many :created_events, :foreign_key => "creator_id", :class_name => "Event"
  has_many :attendances
  has_many :event_as_attendee, through: :attendances, source: 'Event'
end
