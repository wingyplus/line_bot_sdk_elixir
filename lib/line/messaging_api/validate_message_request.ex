defmodule LINE.MessagingAPI.ValidateMessageRequest do
  @moduledoc """
  Provides struct and type for ValidateMessageRequest
  """

  @type t :: %__MODULE__{messages: [LINE.MessagingAPI.Message.t()]}

  defstruct [:messages]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [messages: {:array, {LINE.MessagingAPI.Message, :t}}]
  end
end
