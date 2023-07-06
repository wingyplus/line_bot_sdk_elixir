defmodule LINE.MessagingAPI.RichMenuListResponse do
  @moduledoc """
  Provides struct and type for RichMenuListResponse
  """

  @type t :: %__MODULE__{richmenus: [LINE.MessagingAPI.RichMenuResponse.t()]}

  defstruct [:richmenus]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [richmenus: {:array, {LINE.MessagingAPI.RichMenuResponse, :t}}]
  end
end
