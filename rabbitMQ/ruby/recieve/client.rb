require 'bunny'

connection = Bunny.new(host:"172.17.0.2")
connection.start

channel = connection.create_channel
puts "!!!client is running but i have no idea whats the problem!!!"
queue = channel.queue('hallo')

begin
    puts " [*] Please wait for the message to pop up. 
    if you want to exit (wich we are sure you dont) press CTRL+C"
    queue.subscribe(block:true) do |_delivery_info, _properties, body|
        puts "[x] The message is: #{body}"
    end
rescue Interrupt => _
    connection.close

    exit(0)
end
