require 'rubygems'
gem 'thrift_client', '~> 0.7'
require 'thrift_client'
gem 'simple_uuid' , '~> 0.3'
require 'simple_uuid'

require 'json' unless defined?(JSON)

here = File.expand_path(File.dirname(__FILE__))

class CassandraRB; end
unless CassandraRB.respond_to?(:VERSION)
  require "#{here}/cassandra_rb/0.8"
end

$LOAD_PATH << "#{here}/../vendor/#{CassandraRB.VERSION}/gen-rb"
require "#{here}/../vendor/#{CassandraRB.VERSION}/gen-rb/cassandra"

$LOAD_PATH << "#{here}"

require 'cassandra_rb/helpers'
require 'cassandra_rb/array'
require 'cassandra_rb/time'
require 'cassandra_rb/comparable'
require 'cassandra_rb/long'
require 'cassandra_rb/composite'
require 'cassandra_rb/dynamic_composite'
require 'cassandra_rb/ordered_hash'
require 'cassandra_rb/columns'
require 'cassandra_rb/protocol'
require 'cassandra_rb/batch'
require "cassandra_rb/#{CassandraRB.VERSION}/columns"
require "cassandra_rb/#{CassandraRB.VERSION}/protocol"
require "cassandra_rb/cassandra_rb"
require "cassandra_rb/#{CassandraRB.VERSION}/cassandra_rb"
unless CassandraRB.VERSION.eql?("0.6")
  require "cassandra_rb/column_family"
  require "cassandra_rb/keyspace"
end
require 'cassandra_rb/constants'
require 'cassandra_rb/debug' if ENV['DEBUG']

begin
  require "cassandra_rb_native"
rescue LoadError
  puts "Unable to load cassandra_rb_native extension. Defaulting to pure Ruby libraries."
end
