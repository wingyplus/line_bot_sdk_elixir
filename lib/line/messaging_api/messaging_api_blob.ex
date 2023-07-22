defmodule LINE.MessagingAPI.MessagingApiBlob do
  @moduledoc """
  Provides API endpoints related to messaging api blob
  """

  @default_client LINE.MessagingAPI.Client

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#get-content)

  """
  @spec get_message_content(String.t(), keyword) :: {:ok, binary} | :error
  def get_message_content(message_id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [message_id: message_id],
      call: {LINE.MessagingAPI.MessagingApiBlob, :get_message_content},
      url: "/v2/bot/message/#{message_id}/content",
      method: :get,
      response: [{200, :binary}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#get-image-or-video-preview)

  """
  @spec get_message_content_preview(String.t(), keyword) :: {:ok, binary} | :error
  def get_message_content_preview(message_id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [message_id: message_id],
      call: {LINE.MessagingAPI.MessagingApiBlob, :get_message_content_preview},
      url: "/v2/bot/message/#{message_id}/content/preview",
      method: :get,
      response: [{200, :binary}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#verify-video-or-audio-preparation-status)

  """
  @spec get_message_content_transcoding_by_message_id(String.t(), keyword) ::
          {:ok, LINE.MessagingAPI.GetMessageContentTranscodingResponse.t()} | :error
  def get_message_content_transcoding_by_message_id(message_id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [message_id: message_id],
      call: {LINE.MessagingAPI.MessagingApiBlob, :get_message_content_transcoding_by_message_id},
      url: "/v2/bot/message/#{message_id}/content/transcoding",
      method: :get,
      response: [{200, {LINE.MessagingAPI.GetMessageContentTranscodingResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#download-rich-menu-image)

  """
  @spec get_rich_menu_image(String.t(), keyword) :: {:ok, binary} | :error
  def get_rich_menu_image(rich_menu_id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [rich_menu_id: rich_menu_id],
      call: {LINE.MessagingAPI.MessagingApiBlob, :get_rich_menu_image},
      url: "/v2/bot/richmenu/#{rich_menu_id}/content",
      method: :get,
      response: [{200, :binary}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#upload-rich-menu-image)

  """
  @spec set_rich_menu_image(String.t(), String.t(), keyword) :: :ok | :error
  def set_rich_menu_image(rich_menu_id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [rich_menu_id: rich_menu_id, body: body],
      call: {LINE.MessagingAPI.MessagingApiBlob, :set_rich_menu_image},
      url: "/v2/bot/richmenu/#{rich_menu_id}/content",
      body: body,
      method: :post,
      request: [{"*/*", :string}],
      response: [{200, nil}],
      opts: opts
    })
  end
end
