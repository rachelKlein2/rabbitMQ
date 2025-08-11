require 'bunny'

connection = Bunny.new(host:"172.17.0.2")
connection.start

channel = connection.create_channel

queue = channel.queue('hallo')

channel.default_exchange.publish('This is my first rabbit project!', routing_key: queue.name)
puts " [x] Sent 'This is my first rabbit project!'"
connection.close