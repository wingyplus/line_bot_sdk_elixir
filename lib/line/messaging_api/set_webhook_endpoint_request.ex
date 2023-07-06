defmodule LINE.MessagingAPI.SetWebhookEndpointRequest do
  @moduledoc """
  Provides struct and type for SetWebhookEndpointRequest
  """

  @type t :: %__MODULE__{endpoint: String.t()}

  defstruct [:endpoint]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [endpoint: :string]
  end
end
