defmodule LINE.MessagingAPI.LineModuleAttach do
  @moduledoc """
  Provides API endpoint related to line module attach
  """

  @default_client LINE.MessagingAPI.Client

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/partner-docs/#link-attach-by-operation-module-channel-provider)

  """
  @spec attach_module(map, keyword) :: {:ok, map} | :error
  def attach_module(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {LINE.MessagingAPI.LineModuleAttach, :attach_module},
      url: "/module/auth/v1/token",
      body: body,
      method: :post,
      request: [{"application/x-www-form-urlencoded", :map}],
      response: [{200, :map}],
      opts: opts
    })
  end
end
