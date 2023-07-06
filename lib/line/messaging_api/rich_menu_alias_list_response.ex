defmodule LINE.MessagingAPI.RichMenuAliasListResponse do
  @moduledoc """
  Provides struct and type for RichMenuAliasListResponse
  """

  @type t :: %__MODULE__{aliases: [LINE.MessagingAPI.RichMenuAliasResponse.t()]}

  defstruct [:aliases]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [aliases: {:array, {LINE.MessagingAPI.RichMenuAliasResponse, :t}}]
  end
end
