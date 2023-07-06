defmodule LINE.MessagingAPI.Message do
  @moduledoc """
  Provides struct and type for Message
  """

  @type t :: %__MODULE__{
          quickReply: LINE.MessagingAPI.QuickReply.t() | nil,
          sender: LINE.MessagingAPI.Sender.t() | nil,
          type: String.t()
        }

  defstruct [:quickReply, :sender, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      quickReply: {LINE.MessagingAPI.QuickReply, :t},
      sender: {LINE.MessagingAPI.Sender, :t},
      type: :string
    ]
  end
end
