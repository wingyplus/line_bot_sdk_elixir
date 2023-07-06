defmodule LINE.MessagingAPI.TestWebhookEndpointResponse do
  @moduledoc """
  Provides struct and type for TestWebhookEndpointResponse
  """

  @type t :: %__MODULE__{
          detail: String.t(),
          reason: String.t(),
          statusCode: integer,
          success: boolean | nil,
          timestamp: String.t()
        }

  defstruct [:detail, :reason, :statusCode, :success, :timestamp]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      detail: :string,
      reason: :string,
      statusCode: :integer,
      success: :boolean,
      timestamp: :string
    ]
  end
end
