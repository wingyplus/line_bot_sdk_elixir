defmodule LINE.InsightAPI.AppTypeTile do
  @moduledoc """
  Provides struct and type for AppTypeTile
  """

  @type t :: %__MODULE__{appType: String.t() | nil, percentage: number | nil}

  defstruct [:appType, :percentage]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [appType: :string, percentage: :number]
  end
end
