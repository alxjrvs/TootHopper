
class Tweet
  include DataMapper::Resource

  property :id,       Serial
  property :message,  Text

end
DataMapper.finalize
