defmodule LINE.ChannelAccessTokenAPI.IssueChannelAccessTokenResponse do
  @moduledoc """
  Provides struct and type for IssueChannelAccessTokenResponse
  """

  @type t :: %__MODULE__{
          access_token: String.t(),
          expires_in: integer,
          key_id: String.t(),
          token_type: String.t()
        }

  defstruct [:access_token, :expires_in, :key_id, :token_type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [access_token: :string, expires_in: :integer, key_id: :string, token_type: :string]
  end
end
