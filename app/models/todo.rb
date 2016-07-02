class Todo
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Enum

  field :text, type: String
  field :complete, type: Mongoid::Boolean

  validates_presence_of :text
end
