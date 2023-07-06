defmodule LINE.InsightAPI.GetFriendsDemographicsResponse do
  @moduledoc """
  Provides struct and type for GetFriendsDemographicsResponse
  """

  @type t :: %__MODULE__{
          ages: [LINE.InsightAPI.AgeTile.t()] | nil,
          appTypes: [LINE.InsightAPI.AppTypeTile.t()] | nil,
          areas: [LINE.InsightAPI.AreaTile.t()] | nil,
          available: boolean | nil,
          genders: [LINE.InsightAPI.GenderTile.t()] | nil,
          subscriptionPeriods: [LINE.InsightAPI.SubscriptionPeriodTile.t()] | nil
        }

  defstruct [:ages, :appTypes, :areas, :available, :genders, :subscriptionPeriods]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      ages: {:array, {LINE.InsightAPI.AgeTile, :t}},
      appTypes: {:array, {LINE.InsightAPI.AppTypeTile, :t}},
      areas: {:array, {LINE.InsightAPI.AreaTile, :t}},
      available: :boolean,
      genders: {:array, {LINE.InsightAPI.GenderTile, :t}},
      subscriptionPeriods: {:array, {LINE.InsightAPI.SubscriptionPeriodTile, :t}}
    ]
  end
end
