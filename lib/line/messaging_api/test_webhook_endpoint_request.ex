defmodule LINE.MessagingAPI.TestWebhookEndpointRequest do
  @moduledoc """
  Provides struct and type for TestWebhookEndpointRequest
  """

  @type t :: %__MODULE__{endpoint: String.t() | nil}

  defstruct [:endpoint]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [endpoint: :string]
  end
end
