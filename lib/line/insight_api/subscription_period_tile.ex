defmodule LINE.InsightAPI.SubscriptionPeriodTile do
  @moduledoc """
  Provides struct and type for SubscriptionPeriodTile
  """

  @type t :: %__MODULE__{percentage: number | nil, subscriptionPeriod: String.t() | nil}

  defstruct [:percentage, :subscriptionPeriod]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [percentage: :number, subscriptionPeriod: :string]
  end
end
