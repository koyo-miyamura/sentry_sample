defmodule ExtNotifier do
  def notify(message) do
    Sentry.capture_message(message)
  end
end
