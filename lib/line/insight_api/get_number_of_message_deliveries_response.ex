defmodule LINE.InsightAPI.GetNumberOfMessageDeliveriesResponse do
  @moduledoc """
  Provides struct and type for GetNumberOfMessageDeliveriesResponse
  """

  @type t :: %__MODULE__{
          apiBroadcast: integer | nil,
          apiMulticast: integer | nil,
          apiNarrowcast: integer | nil,
          apiPush: integer | nil,
          apiReply: integer | nil,
          autoResponse: integer | nil,
          broadcast: integer | nil,
          chat: integer | nil,
          status: String.t() | nil,
          targeting: integer | nil,
          welcomeResponse: integer | nil
        }

  defstruct [
    :apiBroadcast,
    :apiMulticast,
    :apiNarrowcast,
    :apiPush,
    :apiReply,
    :autoResponse,
    :broadcast,
    :chat,
    :status,
    :targeting,
    :welcomeResponse
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      apiBroadcast: :integer,
      apiMulticast: :integer,
      apiNarrowcast: :integer,
      apiPush: :integer,
      apiReply: :integer,
      autoResponse: :integer,
      broadcast: :integer,
      chat: :integer,
      status: :string,
      targeting: :integer,
      welcomeResponse: :integer
    ]
  end
end
