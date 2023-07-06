defmodule LINE.MessagingAPI.RichMenuAliasResponse do
  @moduledoc """
  Provides struct and type for RichMenuAliasResponse
  """

  @type t :: %__MODULE__{richMenuAliasId: String.t(), richMenuId: String.t()}

  defstruct [:richMenuAliasId, :richMenuId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [richMenuAliasId: :string, richMenuId: :string]
  end
end
