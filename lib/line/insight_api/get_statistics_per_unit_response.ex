defmodule LINE.InsightAPI.GetStatisticsPerUnitResponse do
  @moduledoc """
  Provides struct and type for GetStatisticsPerUnitResponse
  """

  @type t :: %__MODULE__{
          clicks: [LINE.InsightAPI.GetStatisticsPerUnitResponseClick.t()],
          messages: [LINE.InsightAPI.GetStatisticsPerUnitResponseMessage.t()],
          overview: LINE.InsightAPI.GetStatisticsPerUnitResponseOverview.t()
        }

  defstruct [:clicks, :messages, :overview]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      clicks: {:array, {LINE.InsightAPI.GetStatisticsPerUnitResponseClick, :t}},
      messages: {:array, {LINE.InsightAPI.GetStatisticsPerUnitResponseMessage, :t}},
      overview: {LINE.InsightAPI.GetStatisticsPerUnitResponseOverview, :t}
    ]
  end
end
