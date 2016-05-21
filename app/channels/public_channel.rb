# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class PublicChannel < ApplicationCable::Channel
  def subscribed
    stream_from "public_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def message(data)
    ActionCable.server.broadcast 'public_channel', data['message']
  end
end
