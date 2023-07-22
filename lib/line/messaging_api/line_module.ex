defmodule LINE.MessagingAPI.LineModule do
  @moduledoc """
  Provides API endpoints related to line module
  """

  @default_client LINE.MessagingAPI.Client

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/partner-docs/#acquire-control-api)

  """
  @spec acquire_chat_control(String.t(), LINE.MessagingAPI.AcquireChatControlRequest.t(), keyword) ::
          :ok | :error
  def acquire_chat_control(chat_id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [chat_id: chat_id, body: body],
      call: {LINE.MessagingAPI.LineModule, :acquire_chat_control},
      url: "/v2/bot/chat/#{chat_id}/control/acquire",
      body: body,
      method: :post,
      request: [{"application/json", {LINE.MessagingAPI.AcquireChatControlRequest, :t}}],
      response: [{200, nil}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/partner-docs/#unlink-detach-module-channel-by-operation-mc-admin)

  """
  @spec detach_module(LINE.MessagingAPI.DetachModuleRequest.t(), keyword) :: :ok | :error
  def detach_module(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {LINE.MessagingAPI.LineModule, :detach_module},
      url: "/v2/bot/channel/detach",
      body: body,
      method: :post,
      request: [{"application/json", {LINE.MessagingAPI.DetachModuleRequest, :t}}],
      response: [{200, nil}],
      opts: opts
    })
  end

  @doc """


  ## Options

    * `start` (String.t()): Value of the continuation token found in the next property of the JSON object returned in the response.
  If you can't get all basic information about the bots in one request, include this parameter to get the remaining array.

    * `limit` (integer): Specify the maximum number of bots that you get basic information from. The default value is 100.
  Max value: 100


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/partner-docs/#get-multiple-bot-info-api)

  """
  @spec get_modules(keyword) :: {:ok, LINE.MessagingAPI.GetModulesResponse.t()} | :error
  def get_modules(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:limit, :start])

    client.request(%{
      call: {LINE.MessagingAPI.LineModule, :get_modules},
      url: "/v2/bot/list",
      method: :get,
      query: query,
      response: [{200, {LINE.MessagingAPI.GetModulesResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/partner-docs/#release-control-api)

  """
  @spec release_chat_control(String.t(), keyword) :: :ok | :error
  def release_chat_control(chat_id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [chat_id: chat_id],
      call: {LINE.MessagingAPI.LineModule, :release_chat_control},
      url: "/v2/bot/chat/#{chat_id}/control/release",
      method: :post,
      response: [{200, nil}],
      opts: opts
    })
  end
end
