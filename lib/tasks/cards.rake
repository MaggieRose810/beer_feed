desc "receive messages from brewery_map app"
task receive_messages: [:environment] do
  $kafka.each_message(topic: "breweries") do |message|
    puts message.offset, message.key, message.value
    brewery = JSON.parse(message.value)
    Card.create(
      author: brewery["name"],
      content: brewery['description']
      )
  end
end