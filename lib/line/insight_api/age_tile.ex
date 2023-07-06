defmodule LINE.InsightAPI.AgeTile do
  @moduledoc """
  Provides struct and type for AgeTile
  """

  @type t :: %__MODULE__{age: String.t() | nil, percentage: number | nil}

  defstruct [:age, :percentage]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [age: :string, percentage: :number]
  end
end
