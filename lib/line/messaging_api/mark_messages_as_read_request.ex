defmodule LINE.MessagingAPI.MarkMessagesAsReadRequest do
  @moduledoc """
  Provides struct and type for MarkMessagesAsReadRequest
  """

  @type t :: %__MODULE__{chat: LINE.MessagingAPI.ChatReference.t()}

  defstruct [:chat]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [chat: {LINE.MessagingAPI.ChatReference, :t}]
  end
end
