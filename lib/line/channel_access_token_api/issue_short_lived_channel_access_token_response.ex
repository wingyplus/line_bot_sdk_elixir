defmodule LINE.ChannelAccessTokenAPI.IssueShortLivedChannelAccessTokenResponse do
  @moduledoc """
  Provides struct and type for IssueShortLivedChannelAccessTokenResponse
  """

  @type t :: %__MODULE__{access_token: String.t(), expires_in: integer, token_type: String.t()}

  defstruct [:access_token, :expires_in, :token_type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [access_token: :string, expires_in: :integer, token_type: :string]
  end
end
