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
  def get_message_content(messageId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [messageId: messageId],
      call: {LINE.MessagingAPI.MessagingApiBlob, :get_message_content},
      url: "/v2/bot/message/#{messageId}/content",
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
  def get_message_content_preview(messageId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [messageId: messageId],
      call: {LINE.MessagingAPI.MessagingApiBlob, :get_message_content_preview},
      url: "/v2/bot/message/#{messageId}/content/preview",
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
  def get_message_content_transcoding_by_message_id(messageId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [messageId: messageId],
      call: {LINE.MessagingAPI.MessagingApiBlob, :get_message_content_transcoding_by_message_id},
      url: "/v2/bot/message/#{messageId}/content/transcoding",
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
  def get_rich_menu_image(richMenuId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [richMenuId: richMenuId],
      call: {LINE.MessagingAPI.MessagingApiBlob, :get_rich_menu_image},
      url: "/v2/bot/richmenu/#{richMenuId}/content",
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
  def set_rich_menu_image(richMenuId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [richMenuId: richMenuId, body: body],
      call: {LINE.MessagingAPI.MessagingApiBlob, :set_rich_menu_image},
      url: "/v2/bot/richmenu/#{richMenuId}/content",
      body: body,
      method: :post,
      request: [{"*/*", :string}],
      response: [{200, nil}],
      opts: opts
    })
  end
end
