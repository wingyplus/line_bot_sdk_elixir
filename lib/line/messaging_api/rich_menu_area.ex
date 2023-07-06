defmodule LINE.MessagingAPI.RichMenuArea do
  @moduledoc """
  Provides struct and type for RichMenuArea
  """

  @type t :: %__MODULE__{
          action: LINE.MessagingAPI.Action.t() | nil,
          bounds: LINE.MessagingAPI.RichMenuBounds.t() | nil
        }

  defstruct [:action, :bounds]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [action: {LINE.MessagingAPI.Action, :t}, bounds: {LINE.MessagingAPI.RichMenuBounds, :t}]
  end
end
