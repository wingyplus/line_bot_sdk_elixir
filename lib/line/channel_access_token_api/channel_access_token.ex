defmodule LINE.ChannelAccessTokenAPI.ChannelAccessToken do
  @moduledoc """
  Provides API endpoints related to channel access token
  """

  @default_client LINE.ChannelAccessTokenAPI.Client

  @doc """


  ## Options

    * `client_assertion_type` (String.t()): `urn:ietf:params:oauth:client-assertion-type:jwt-bearer`
    * `client_assertion` (String.t()): A JSON Web Token (JWT) (opens new window)the client needs to create and sign with the private key.

  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#get-all-valid-channel-access-token-key-ids-v2-1)

  """
  @spec gets_all_valid_channel_access_token_key_ids(keyword) ::
          {:ok, LINE.ChannelAccessTokenAPI.ChannelAccessTokenKeyIdsResponse.t()} | :error
  def gets_all_valid_channel_access_token_key_ids(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:client_assertion, :client_assertion_type])

    client.request(%{
      call:
        {LINE.ChannelAccessTokenAPI.ChannelAccessToken,
         :gets_all_valid_channel_access_token_key_ids},
      url: "/oauth2/v2.1/tokens/kid",
      method: :get,
      query: query,
      response: [{200, {LINE.ChannelAccessTokenAPI.ChannelAccessTokenKeyIdsResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#issue-shortlived-channel-access-token)

  """
  @spec issue_channel_token(map, keyword) ::
          {:ok, LINE.ChannelAccessTokenAPI.IssueShortLivedChannelAccessTokenResponse.t()}
          | {:error, LINE.ChannelAccessTokenAPI.ErrorResponse.t()}
  def issue_channel_token(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {LINE.ChannelAccessTokenAPI.ChannelAccessToken, :issue_channel_token},
      url: "/v2/oauth/accessToken",
      body: body,
      method: :post,
      request: [{"application/x-www-form-urlencoded", :map}],
      response: [
        {200, {LINE.ChannelAccessTokenAPI.IssueShortLivedChannelAccessTokenResponse, :t}},
        {400, {LINE.ChannelAccessTokenAPI.ErrorResponse, :t}}
      ],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#issue-channel-access-token-v2-1)

  """
  @spec issue_channel_token_by_jwt(map, keyword) ::
          {:ok, LINE.ChannelAccessTokenAPI.IssueChannelAccessTokenResponse.t()} | :error
  def issue_channel_token_by_jwt(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {LINE.ChannelAccessTokenAPI.ChannelAccessToken, :issue_channel_token_by_jwt},
      url: "/oauth2/v2.1/token",
      body: body,
      method: :post,
      request: [{"application/x-www-form-urlencoded", :map}],
      response: [{200, {LINE.ChannelAccessTokenAPI.IssueChannelAccessTokenResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#revoke-longlived-or-shortlived-channel-access-token)

  """
  @spec revoke_channel_token(map, keyword) :: :ok | :error
  def revoke_channel_token(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {LINE.ChannelAccessTokenAPI.ChannelAccessToken, :revoke_channel_token},
      url: "/v2/oauth/revoke",
      body: body,
      method: :post,
      request: [{"application/x-www-form-urlencoded", :map}],
      response: [{200, nil}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#revoke-channel-access-token-v2-1)

  """
  @spec revoke_channel_token_by_jwt(map, keyword) :: :ok | :error
  def revoke_channel_token_by_jwt(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {LINE.ChannelAccessTokenAPI.ChannelAccessToken, :revoke_channel_token_by_jwt},
      url: "/oauth2/v2.1/revoke",
      body: body,
      method: :post,
      request: [{"application/x-www-form-urlencoded", :map}],
      response: [{200, nil}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#verfiy-channel-access-token)

  """
  @spec verify_channel_token(map, keyword) ::
          {:ok, LINE.ChannelAccessTokenAPI.VerifyChannelAccessTokenResponse.t()} | :error
  def verify_channel_token(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {LINE.ChannelAccessTokenAPI.ChannelAccessToken, :verify_channel_token},
      url: "/v2/oauth/verify",
      body: body,
      method: :post,
      request: [{"application/x-www-form-urlencoded", :map}],
      response: [{200, {LINE.ChannelAccessTokenAPI.VerifyChannelAccessTokenResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Options

    * `access_token` (String.t()): Channel access token with a user-specified expiration (Channel Access Token v2.1).

  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#verfiy-channel-access-token-v2-1)

  """
  @spec verify_channel_token_by_jwt(keyword) ::
          {:ok, LINE.ChannelAccessTokenAPI.VerifyChannelAccessTokenResponse.t()} | :error
  def verify_channel_token_by_jwt(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:access_token])

    client.request(%{
      call: {LINE.ChannelAccessTokenAPI.ChannelAccessToken, :verify_channel_token_by_jwt},
      url: "/oauth2/v2.1/verify",
      method: :get,
      query: query,
      response: [{200, {LINE.ChannelAccessTokenAPI.VerifyChannelAccessTokenResponse, :t}}],
      opts: opts
    })
  end
end
