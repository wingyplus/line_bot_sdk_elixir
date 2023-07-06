defmodule LINE.InsightAPI.GetMessageEventResponse do
  @moduledoc """
  Provides struct and type for GetMessageEventResponse
  """

  @type t :: %__MODULE__{
          clicks: [LINE.InsightAPI.GetMessageEventResponseClick.t()] | nil,
          messages: [LINE.InsightAPI.GetMessageEventResponseMessage.t()] | nil,
          overview: LINE.InsightAPI.GetMessageEventResponseOverview.t() | nil
        }

  defstruct [:clicks, :messages, :overview]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      clicks: {:array, {LINE.InsightAPI.GetMessageEventResponseClick, :t}},
      messages: {:array, {LINE.InsightAPI.GetMessageEventResponseMessage, :t}},
      overview: {LINE.InsightAPI.GetMessageEventResponseOverview, :t}
    ]
  end
end
