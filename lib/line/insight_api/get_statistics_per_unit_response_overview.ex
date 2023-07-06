defmodule LINE.InsightAPI.GetStatisticsPerUnitResponseOverview do
  @moduledoc """
  Provides struct and type for GetStatisticsPerUnitResponseOverview
  """

  @type t :: %__MODULE__{
          uniqueClick: integer | nil,
          uniqueImpression: integer | nil,
          uniqueMediaPlayed: integer | nil,
          uniqueMediaPlayed100Percent: integer | nil
        }

  defstruct [:uniqueClick, :uniqueImpression, :uniqueMediaPlayed, :uniqueMediaPlayed100Percent]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      uniqueClick: :integer,
      uniqueImpression: :integer,
      uniqueMediaPlayed: :integer,
      uniqueMediaPlayed100Percent: :integer
    ]
  end
end
