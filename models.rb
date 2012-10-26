
class Tweet
  include DataMapper::Resource

  property :id,     Serial
  property :message,  String

end
DataMapper.finalize
