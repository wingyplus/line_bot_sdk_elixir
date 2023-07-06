defmodule LINE.InsightAPI.GenderTile do
  @moduledoc """
  Provides struct and type for GenderTile
  """

  @type t :: %__MODULE__{gender: String.t() | nil, percentage: number | nil}

  defstruct [:gender, :percentage]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [gender: :string, percentage: :number]
  end
end
