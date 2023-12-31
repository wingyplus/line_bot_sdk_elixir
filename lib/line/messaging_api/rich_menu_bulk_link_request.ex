defmodule LINE.MessagingAPI.RichMenuBulkLinkRequest do
  @moduledoc """
  Provides struct and type for RichMenuBulkLinkRequest
  """

  @type t :: %__MODULE__{richMenuId: String.t(), userIds: [String.t()]}

  defstruct [:richMenuId, :userIds]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [richMenuId: :string, userIds: {:array, :string}]
  end
end
