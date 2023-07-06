defmodule LINE.MessagingAPI.ReplyMessageRequest do
  @moduledoc """
  Provides struct and type for ReplyMessageRequest
  """

  @type t :: %__MODULE__{
          messages: [LINE.MessagingAPI.Message.t()],
          notificationDisabled: boolean | nil,
          replyToken: String.t()
        }

  defstruct [:messages, :notificationDisabled, :replyToken]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      messages: {:array, {LINE.MessagingAPI.Message, :t}},
      notificationDisabled: :boolean,
      replyToken: :string
    ]
  end
end
