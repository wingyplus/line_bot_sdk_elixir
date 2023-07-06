defmodule LINE.InsightAPI.GetStatisticsPerUnitResponseMessage do
  @moduledoc """
  Provides struct and type for GetStatisticsPerUnitResponseMessage
  """

  @type t :: %__MODULE__{
          impression: integer | nil,
          mediaPlayed: integer | nil,
          mediaPlayed100Percent: integer | nil,
          mediaPlayed25Percent: integer | nil,
          mediaPlayed50Percent: integer | nil,
          mediaPlayed75Percent: integer | nil,
          seq: integer,
          uniqueImpression: integer | nil,
          uniqueMediaPlayed: integer | nil,
          uniqueMediaPlayed100Percent: integer | nil,
          uniqueMediaPlayed25Percent: integer | nil,
          uniqueMediaPlayed50Percent: integer | nil,
          uniqueMediaPlayed75Percent: integer | nil
        }

  defstruct [
    :impression,
    :mediaPlayed,
    :mediaPlayed100Percent,
    :mediaPlayed25Percent,
    :mediaPlayed50Percent,
    :mediaPlayed75Percent,
    :seq,
    :uniqueImpression,
    :uniqueMediaPlayed,
    :uniqueMediaPlayed100Percent,
    :uniqueMediaPlayed25Percent,
    :uniqueMediaPlayed50Percent,
    :uniqueMediaPlayed75Percent
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      impression: :integer,
      mediaPlayed: :integer,
      mediaPlayed100Percent: :integer,
      mediaPlayed25Percent: :integer,
      mediaPlayed50Percent: :integer,
      mediaPlayed75Percent: :integer,
      seq: :integer,
      uniqueImpression: :integer,
      uniqueMediaPlayed: :integer,
      uniqueMediaPlayed100Percent: :integer,
      uniqueMediaPlayed25Percent: :integer,
      uniqueMediaPlayed50Percent: :integer,
      uniqueMediaPlayed75Percent: :integer
    ]
  end
end
