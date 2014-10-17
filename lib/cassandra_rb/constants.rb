
class CassandraRB
  # A helper module you can include in your own class. Makes it easier 
  # to work with Cassandra subclasses.
  module Constants
    include CassandraRB::Consistency
        
    Long = CassandraRB::Long
    OrderedHash = CassandraRB::OrderedHash
  end
end
