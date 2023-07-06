defmodule LINE.MessagingAPI.RichMenuIdResponse do
  @moduledoc """
  Provides struct and type for RichMenuIdResponse
  """

  @type t :: %__MODULE__{richMenuId: String.t()}

  defstruct [:richMenuId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [richMenuId: :string]
  end
end
