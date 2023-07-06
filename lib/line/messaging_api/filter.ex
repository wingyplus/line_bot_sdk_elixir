defmodule LINE.MessagingAPI.Filter do
  @moduledoc """
  Provides struct and type for Filter
  """

  @type t :: %__MODULE__{demographic: LINE.MessagingAPI.DemographicFilter.t() | nil}

  defstruct [:demographic]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [demographic: {LINE.MessagingAPI.DemographicFilter, :t}]
  end
end
