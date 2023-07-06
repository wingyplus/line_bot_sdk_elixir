defmodule LINE.MessagingAPI.NarrowcastRequest do
  @moduledoc """
  Provides struct and type for NarrowcastRequest
  """

  @type t :: %__MODULE__{
          filter: LINE.MessagingAPI.Filter.t() | nil,
          limit: LINE.MessagingAPI.Limit.t() | nil,
          messages: [LINE.MessagingAPI.Message.t()],
          notificationDisabled: boolean | nil,
          recipient: LINE.MessagingAPI.Recipient.t() | nil
        }

  defstruct [:filter, :limit, :messages, :notificationDisabled, :recipient]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      filter: {LINE.MessagingAPI.Filter, :t},
      limit: {LINE.MessagingAPI.Limit, :t},
      messages: {:array, {LINE.MessagingAPI.Message, :t}},
      notificationDisabled: :boolean,
      recipient: {LINE.MessagingAPI.Recipient, :t}
    ]
  end
end
