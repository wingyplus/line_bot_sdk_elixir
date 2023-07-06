defmodule LINE.MessagingAPI.QuickReply do
  @moduledoc """
  Provides struct and type for QuickReply
  """

  @type t :: %__MODULE__{items: [LINE.MessagingAPI.QuickReplyItem.t()] | nil}

  defstruct [:items]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [items: {:array, {LINE.MessagingAPI.QuickReplyItem, :t}}]
  end
end
