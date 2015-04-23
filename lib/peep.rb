class Peep

  include DataMapper::Resource

  property :id, Serial
  property :username, String
  property :title, String
  property :message, Text
  property :date, DateTime

end
