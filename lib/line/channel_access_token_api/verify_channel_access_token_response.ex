defmodule LINE.ChannelAccessTokenAPI.VerifyChannelAccessTokenResponse do
  @moduledoc """
  Provides struct and type for VerifyChannelAccessTokenResponse
  """

  @type t :: %__MODULE__{client_id: String.t(), expires_in: integer, scope: String.t() | nil}

  defstruct [:client_id, :expires_in, :scope]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [client_id: :string, expires_in: :integer, scope: :string]
  end
end
