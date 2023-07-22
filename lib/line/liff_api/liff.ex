defmodule LINE.LIFFAPI.Liff do
  @moduledoc """
  Provides API endpoints related to liff
  """

  @default_client LINE.LIFFAPI.Client

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/liff-server/#add-liff-app)

  """
  @spec add_liffapp(LINE.LIFFAPI.AddLiffAppRequest.t(), keyword) ::
          {:ok, LINE.LIFFAPI.AddLiffAppResponse.t()} | :error
  def add_liffapp(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {LINE.LIFFAPI.Liff, :add_liffapp},
      url: "/liff/v1/apps",
      body: body,
      method: :post,
      request: [{"application/json", {LINE.LIFFAPI.AddLiffAppRequest, :t}}],
      response: [{200, {LINE.LIFFAPI.AddLiffAppResponse, :t}}, {400, nil}, {401, nil}],
      opts: opts
    })
  end

  @doc """
  Delete LIFF app from a channel

  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/liff-server/#delete-liff-app)

  """
  @spec delete_liffapp(String.t(), keyword) :: :ok | :error
  def delete_liffapp(liff_id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [liff_id: liff_id],
      call: {LINE.LIFFAPI.Liff, :delete_liffapp},
      url: "/liff/v1/apps/#{liff_id}",
      method: :delete,
      response: [{200, nil}, {401, nil}, {404, nil}],
      opts: opts
    })
  end

  @doc """
  Get all LIFF apps

  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/liff-server/#get-all-liff-apps)

  """
  @spec get_all_liffapps(keyword) :: {:ok, LINE.LIFFAPI.GetAllLiffAppsResponse.t()} | :error
  def get_all_liffapps(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      call: {LINE.LIFFAPI.Liff, :get_all_liffapps},
      url: "/liff/v1/apps",
      method: :get,
      response: [{200, {LINE.LIFFAPI.GetAllLiffAppsResponse, :t}}, {401, nil}, {404, nil}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/liff-server/#update-liff-app)

  """
  @spec update_liffapp(String.t(), LINE.LIFFAPI.UpdateLiffAppRequest.t(), keyword) :: :ok | :error
  def update_liffapp(liff_id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [liff_id: liff_id, body: body],
      call: {LINE.LIFFAPI.Liff, :update_liffapp},
      url: "/liff/v1/apps/#{liff_id}",
      body: body,
      method: :put,
      request: [{"application/json", {LINE.LIFFAPI.UpdateLiffAppRequest, :t}}],
      response: [{200, nil}, {400, nil}, {401, nil}, {404, nil}],
      opts: opts
    })
  end
end
