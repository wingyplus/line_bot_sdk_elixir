defmodule LINE.MessagingAPI.QuickReplyItem do
  @moduledoc """
  Provides struct and type for QuickReplyItem
  """

  @type t :: %__MODULE__{
          action: LINE.MessagingAPI.Action.t() | nil,
          imageUrl: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [:action, :imageUrl, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [action: {LINE.MessagingAPI.Action, :t}, imageUrl: :string, type: :string]
  end
end
