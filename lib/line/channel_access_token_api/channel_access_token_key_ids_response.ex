defmodule LINE.ChannelAccessTokenAPI.ChannelAccessTokenKeyIdsResponse do
  @moduledoc """
  Provides struct and type for ChannelAccessTokenKeyIdsResponse
  """

  @type t :: %__MODULE__{kids: [String.t()]}

  defstruct [:kids]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [kids: {:array, :string}]
  end
end
