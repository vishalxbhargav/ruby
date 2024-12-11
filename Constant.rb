class Message
  DEFAULT_MESSAGE = "Hello, world"
  def speak(message = nil)
    if message
      puts message
    else
      puts DEFAULT_MESSAGE
    end
  end
end

Message::DEFAULT_MESSAGE = "Hullo, world"
p Message::DEFAULT_MESSAGE