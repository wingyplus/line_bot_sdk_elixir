defmodule LINE.InsightAPI.AreaTile do
  @moduledoc """
  Provides struct and type for AreaTile
  """

  @type t :: %__MODULE__{area: String.t() | nil, percentage: number | nil}

  defstruct [:area, :percentage]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [area: :string, percentage: :number]
  end
end
