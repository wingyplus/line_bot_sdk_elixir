defmodule LINE.InsightAPI.GetMessageEventResponseOverview do
  @moduledoc """
  Provides struct and type for GetMessageEventResponseOverview
  """

  @type t :: %__MODULE__{
          delivered: integer | nil,
          requestId: String.t() | nil,
          timestamp: integer | nil,
          uniqueClick: integer | nil,
          uniqueImpression: integer | nil,
          uniqueMediaPlayed: integer | nil,
          uniqueMediaPlayed100Percent: integer | nil
        }

  defstruct [
    :delivered,
    :requestId,
    :timestamp,
    :uniqueClick,
    :uniqueImpression,
    :uniqueMediaPlayed,
    :uniqueMediaPlayed100Percent
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      delivered: :integer,
      requestId: :string,
      timestamp: :integer,
      uniqueClick: :integer,
      uniqueImpression: :integer,
      uniqueMediaPlayed: :integer,
      uniqueMediaPlayed100Percent: :integer
    ]
  end
end
