defmodule LINE.MessagingAPI.BroadcastRequest do
  @moduledoc """
  Provides struct and type for BroadcastRequest
  """

  @type t :: %__MODULE__{
          messages: [LINE.MessagingAPI.Message.t()],
          notificationDisabled: boolean | nil
        }

  defstruct [:messages, :notificationDisabled]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [messages: {:array, {LINE.MessagingAPI.Message, :t}}, notificationDisabled: :boolean]
  end
end
