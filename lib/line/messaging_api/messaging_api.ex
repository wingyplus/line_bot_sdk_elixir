defmodule LINE.MessagingAPI.MessagingApi do
  @moduledoc """
  Provides API endpoints related to messaging api
  """

  @default_client LINE.MessagingAPI.Client

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/partner-docs/#phone-audience-match)

  """
  @spec audience_match(LINE.MessagingAPI.AudienceMatchMessagesRequest.t(), keyword) ::
          :ok | :error
  def audience_match(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {LINE.MessagingAPI.MessagingApi, :audience_match},
      url: "/bot/ad/multicast/phone",
      body: body,
      method: :post,
      request: [{"application/json", {LINE.MessagingAPI.AudienceMatchMessagesRequest, :t}}],
      response: [{200, nil}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#send-broadcast-message)

  """
  @spec broadcast(LINE.MessagingAPI.BroadcastRequest.t(), keyword) ::
          :ok | {:error, LINE.MessagingAPI.ErrorResponse.t()}
  def broadcast(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {LINE.MessagingAPI.MessagingApi, :broadcast},
      url: "/v2/bot/message/broadcast",
      body: body,
      method: :post,
      request: [{"application/json", {LINE.MessagingAPI.BroadcastRequest, :t}}],
      response: [
        {200, nil},
        {400, {LINE.MessagingAPI.ErrorResponse, :t}},
        {403, {LINE.MessagingAPI.ErrorResponse, :t}},
        {409, {LINE.MessagingAPI.ErrorResponse, :t}},
        {429, {LINE.MessagingAPI.ErrorResponse, :t}}
      ],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#cancel-default-rich-menu)

  """
  @spec cancel_default_rich_menu(keyword) :: :ok | :error
  def cancel_default_rich_menu(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      call: {LINE.MessagingAPI.MessagingApi, :cancel_default_rich_menu},
      url: "/v2/bot/user/all/richmenu",
      method: :delete,
      response: [{200, nil}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#create-rich-menu)

  """
  @spec create_rich_menu(LINE.MessagingAPI.RichMenuRequest.t(), keyword) ::
          {:ok, LINE.MessagingAPI.RichMenuIdResponse.t()} | :error
  def create_rich_menu(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {LINE.MessagingAPI.MessagingApi, :create_rich_menu},
      url: "/v2/bot/richmenu",
      body: body,
      method: :post,
      request: [{"application/json", {LINE.MessagingAPI.RichMenuRequest, :t}}],
      response: [{200, {LINE.MessagingAPI.RichMenuIdResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#create-rich-menu-alias)

  """
  @spec create_rich_menu_alias(LINE.MessagingAPI.CreateRichMenuAliasRequest.t(), keyword) ::
          :ok | {:error, LINE.MessagingAPI.ErrorResponse.t()}
  def create_rich_menu_alias(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {LINE.MessagingAPI.MessagingApi, :create_rich_menu_alias},
      url: "/v2/bot/richmenu/alias",
      body: body,
      method: :post,
      request: [{"application/json", {LINE.MessagingAPI.CreateRichMenuAliasRequest, :t}}],
      response: [{200, nil}, {400, {LINE.MessagingAPI.ErrorResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#delete-rich-menu)

  """
  @spec delete_rich_menu(String.t(), keyword) :: :ok | :error
  def delete_rich_menu(rich_menu_id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [rich_menu_id: rich_menu_id],
      call: {LINE.MessagingAPI.MessagingApi, :delete_rich_menu},
      url: "/v2/bot/richmenu/#{rich_menu_id}",
      method: :delete,
      response: [{200, nil}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#delete-rich-menu-alias)

  """
  @spec delete_rich_menu_alias(String.t(), keyword) ::
          :ok | {:error, LINE.MessagingAPI.ErrorResponse.t()}
  def delete_rich_menu_alias(rich_menu_alias_id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [rich_menu_alias_id: rich_menu_alias_id],
      call: {LINE.MessagingAPI.MessagingApi, :delete_rich_menu_alias},
      url: "/v2/bot/richmenu/alias/#{rich_menu_alias_id}",
      method: :delete,
      response: [{200, nil}, {400, {LINE.MessagingAPI.ErrorResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Options

    * `date` (String.t()): Date the message was sent

  Format: `yyyyMMdd` (e.g. `20190831`)
  Time Zone: UTC+9


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/partner-docs/#get-phone-audience-match)

  """
  @spec get_ad_phone_message_statistics(keyword) ::
          {:ok, LINE.MessagingAPI.NumberOfMessagesResponse.t()} | :error
  def get_ad_phone_message_statistics(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:date])

    client.request(%{
      call: {LINE.MessagingAPI.MessagingApi, :get_ad_phone_message_statistics},
      url: "/v2/bot/message/delivery/ad_phone",
      method: :get,
      query: query,
      response: [{200, {LINE.MessagingAPI.NumberOfMessagesResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Options

    * `limit` (String.t()): The maximum number of aggregation units you can get per request.

    * `start` (String.t()): Value of the continuation token found in the next property of the JSON object returned in the response.
  If you can't get all the aggregation units in one request, include this parameter to get the remaining array.


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#get-name-list-of-units-used-this-month)

  """
  @spec get_aggregation_unit_name_list(keyword) ::
          {:ok, LINE.MessagingAPI.GetAggregationUnitNameListResponse.t()} | :error
  def get_aggregation_unit_name_list(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:limit, :start])

    client.request(%{
      call: {LINE.MessagingAPI.MessagingApi, :get_aggregation_unit_name_list},
      url: "/v2/bot/message/aggregation/list",
      method: :get,
      query: query,
      response: [{200, {LINE.MessagingAPI.GetAggregationUnitNameListResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#get-number-of-units-used-this-month)

  """
  @spec get_aggregation_unit_usage(keyword) ::
          {:ok, LINE.MessagingAPI.GetAggregationUnitUsageResponse.t()} | :error
  def get_aggregation_unit_usage(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      call: {LINE.MessagingAPI.MessagingApi, :get_aggregation_unit_usage},
      url: "/v2/bot/message/aggregation/info",
      method: :get,
      response: [{200, {LINE.MessagingAPI.GetAggregationUnitUsageResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#get-bot-info)

  """
  @spec get_bot_info(keyword) :: {:ok, LINE.MessagingAPI.BotInfoResponse.t()} | :error
  def get_bot_info(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      call: {LINE.MessagingAPI.MessagingApi, :get_bot_info},
      url: "/v2/bot/info",
      method: :get,
      response: [{200, {LINE.MessagingAPI.BotInfoResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#get-default-rich-menu-id)

  """
  @spec get_default_rich_menu_id(keyword) ::
          {:ok, LINE.MessagingAPI.RichMenuIdResponse.t()} | :error
  def get_default_rich_menu_id(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      call: {LINE.MessagingAPI.MessagingApi, :get_default_rich_menu_id},
      url: "/v2/bot/user/all/richmenu",
      method: :get,
      response: [{200, {LINE.MessagingAPI.RichMenuIdResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Options

    * `start` (String.t()): Value of the continuation token found in the next property of the JSON object returned in the response.
  Include this parameter to get the next array of user IDs.

    * `limit` (integer): The maximum number of user IDs to retrieve in a single request.

  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#get-follower-ids)

  """
  @spec get_followers(keyword) :: {:ok, LINE.MessagingAPI.GetFollowersResponse.t()} | :error
  def get_followers(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:limit, :start])

    client.request(%{
      call: {LINE.MessagingAPI.MessagingApi, :get_followers},
      url: "/v2/bot/followers/ids",
      method: :get,
      query: query,
      response: [{200, {LINE.MessagingAPI.GetFollowersResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#get-members-group-count)

  """
  @spec get_group_member_count(String.t(), keyword) ::
          {:ok, LINE.MessagingAPI.GroupMemberCountResponse.t()} | :error
  def get_group_member_count(group_id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [group_id: group_id],
      call: {LINE.MessagingAPI.MessagingApi, :get_group_member_count},
      url: "/v2/bot/group/#{group_id}/members/count",
      method: :get,
      response: [{200, {LINE.MessagingAPI.GroupMemberCountResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#get-group-member-profile)

  """
  @spec get_group_member_profile(String.t(), String.t(), keyword) ::
          {:ok, LINE.MessagingAPI.GroupUserProfileResponse.t()} | :error
  def get_group_member_profile(group_id, user_id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [group_id: group_id, user_id: user_id],
      call: {LINE.MessagingAPI.MessagingApi, :get_group_member_profile},
      url: "/v2/bot/group/#{group_id}/member/#{user_id}",
      method: :get,
      response: [{200, {LINE.MessagingAPI.GroupUserProfileResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Options

    * `start` (String.t()): Value of the continuation token found in the `next` property of the JSON object returned in the response.
  Include this parameter to get the next array of user IDs for the members of the group.


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#get-group-member-user-ids)

  """
  @spec get_group_members_ids(String.t(), keyword) ::
          {:ok, LINE.MessagingAPI.MembersIdsResponse.t()} | :error
  def get_group_members_ids(group_id, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:start])

    client.request(%{
      args: [group_id: group_id],
      call: {LINE.MessagingAPI.MessagingApi, :get_group_members_ids},
      url: "/v2/bot/group/#{group_id}/members/ids",
      method: :get,
      query: query,
      response: [{200, {LINE.MessagingAPI.MembersIdsResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#get-group-summary)

  """
  @spec get_group_summary(String.t(), keyword) ::
          {:ok, LINE.MessagingAPI.GroupSummaryResponse.t()} | :error
  def get_group_summary(group_id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [group_id: group_id],
      call: {LINE.MessagingAPI.MessagingApi, :get_group_summary},
      url: "/v2/bot/group/#{group_id}/summary",
      method: :get,
      response: [{200, {LINE.MessagingAPI.GroupSummaryResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#get-quota)

  """
  @spec get_message_quota(keyword) :: {:ok, LINE.MessagingAPI.MessageQuotaResponse.t()} | :error
  def get_message_quota(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      call: {LINE.MessagingAPI.MessagingApi, :get_message_quota},
      url: "/v2/bot/message/quota",
      method: :get,
      response: [{200, {LINE.MessagingAPI.MessageQuotaResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#get-consumption)

  """
  @spec get_message_quota_consumption(keyword) ::
          {:ok, LINE.MessagingAPI.QuotaConsumptionResponse.t()} | :error
  def get_message_quota_consumption(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      call: {LINE.MessagingAPI.MessagingApi, :get_message_quota_consumption},
      url: "/v2/bot/message/quota/consumption",
      method: :get,
      response: [{200, {LINE.MessagingAPI.QuotaConsumptionResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Options

    * `requestId` (String.t()): The narrowcast message's request ID. Each Messaging API request has a request ID.

  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#get-narrowcast-progress-status)

  """
  @spec get_narrowcast_progress(keyword) ::
          {:ok, LINE.MessagingAPI.NarrowcastProgressResponse.t()} | :error
  def get_narrowcast_progress(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:requestId])

    client.request(%{
      call: {LINE.MessagingAPI.MessagingApi, :get_narrowcast_progress},
      url: "/v2/bot/message/progress/narrowcast",
      method: :get,
      query: query,
      response: [{200, {LINE.MessagingAPI.NarrowcastProgressResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Options

    * `date` (String.t()): Date the messages were sent

  Format: yyyyMMdd (e.g. 20191231)
  Timezone: UTC+9


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#get-number-of-broadcast-messages)

  """
  @spec get_number_of_sent_broadcast_messages(keyword) ::
          {:ok, LINE.MessagingAPI.NumberOfMessagesResponse.t()} | :error
  def get_number_of_sent_broadcast_messages(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:date])

    client.request(%{
      call: {LINE.MessagingAPI.MessagingApi, :get_number_of_sent_broadcast_messages},
      url: "/v2/bot/message/delivery/broadcast",
      method: :get,
      query: query,
      response: [{200, {LINE.MessagingAPI.NumberOfMessagesResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Options

    * `date` (String.t()): Date the messages were sent

  Format: `yyyyMMdd` (e.g. `20191231`)
  Timezone: UTC+9


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#get-number-of-multicast-messages)

  """
  @spec get_number_of_sent_multicast_messages(keyword) ::
          {:ok, LINE.MessagingAPI.NumberOfMessagesResponse.t()} | :error
  def get_number_of_sent_multicast_messages(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:date])

    client.request(%{
      call: {LINE.MessagingAPI.MessagingApi, :get_number_of_sent_multicast_messages},
      url: "/v2/bot/message/delivery/multicast",
      method: :get,
      query: query,
      response: [{200, {LINE.MessagingAPI.NumberOfMessagesResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Options

    * `date` (String.t()): Date the messages were sent

  Format: `yyyyMMdd` (e.g. `20191231`)
  Timezone: UTC+9


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#get-number-of-push-messages)

  """
  @spec get_number_of_sent_push_messages(keyword) ::
          {:ok, LINE.MessagingAPI.NumberOfMessagesResponse.t()} | :error
  def get_number_of_sent_push_messages(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:date])

    client.request(%{
      call: {LINE.MessagingAPI.MessagingApi, :get_number_of_sent_push_messages},
      url: "/v2/bot/message/delivery/push",
      method: :get,
      query: query,
      response: [{200, {LINE.MessagingAPI.NumberOfMessagesResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Options

    * `date` (String.t()): Date the messages were sent

  Format: `yyyyMMdd` (e.g. `20191231`)
  Timezone: UTC+9


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#get-number-of-reply-messages)

  """
  @spec get_number_of_sent_reply_messages(keyword) ::
          {:ok, LINE.MessagingAPI.NumberOfMessagesResponse.t()} | :error
  def get_number_of_sent_reply_messages(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:date])

    client.request(%{
      call: {LINE.MessagingAPI.MessagingApi, :get_number_of_sent_reply_messages},
      url: "/v2/bot/message/delivery/reply",
      method: :get,
      query: query,
      response: [{200, {LINE.MessagingAPI.NumberOfMessagesResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Options

    * `date` (String.t()): Date the message was sent

  Format: `yyyyMMdd` (Example:`20211231`)
  Time zone: UTC+9


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/partner-docs/#get-number-of-sent-line-notification-messages)

  """
  @spec get_pnpmessage_statistics(keyword) ::
          {:ok, LINE.MessagingAPI.NumberOfMessagesResponse.t()} | :error
  def get_pnpmessage_statistics(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:date])

    client.request(%{
      call: {LINE.MessagingAPI.MessagingApi, :get_pnpmessage_statistics},
      url: "/v2/bot/message/delivery/pnp",
      method: :get,
      query: query,
      response: [{200, {LINE.MessagingAPI.NumberOfMessagesResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#get-profile)

  """
  @spec get_profile(String.t(), keyword) ::
          {:ok, LINE.MessagingAPI.UserProfileResponse.t()} | :error
  def get_profile(user_id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [user_id: user_id],
      call: {LINE.MessagingAPI.MessagingApi, :get_profile},
      url: "/v2/bot/profile/#{user_id}",
      method: :get,
      response: [{200, {LINE.MessagingAPI.UserProfileResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#get-rich-menu)

  """
  @spec get_rich_menu(String.t(), keyword) ::
          {:ok, LINE.MessagingAPI.RichMenuResponse.t()} | :error
  def get_rich_menu(rich_menu_id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [rich_menu_id: rich_menu_id],
      call: {LINE.MessagingAPI.MessagingApi, :get_rich_menu},
      url: "/v2/bot/richmenu/#{rich_menu_id}",
      method: :get,
      response: [{200, {LINE.MessagingAPI.RichMenuResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#get-rich-menu-alias-by-id)

  """
  @spec get_rich_menu_alias(String.t(), keyword) ::
          {:ok, LINE.MessagingAPI.RichMenuAliasResponse.t()} | :error
  def get_rich_menu_alias(rich_menu_alias_id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [rich_menu_alias_id: rich_menu_alias_id],
      call: {LINE.MessagingAPI.MessagingApi, :get_rich_menu_alias},
      url: "/v2/bot/richmenu/alias/#{rich_menu_alias_id}",
      method: :get,
      response: [{200, {LINE.MessagingAPI.RichMenuAliasResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#get-rich-menu-alias-list)

  """
  @spec get_rich_menu_alias_list(keyword) ::
          {:ok, LINE.MessagingAPI.RichMenuAliasListResponse.t()} | :error
  def get_rich_menu_alias_list(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      call: {LINE.MessagingAPI.MessagingApi, :get_rich_menu_alias_list},
      url: "/v2/bot/richmenu/alias/list",
      method: :get,
      response: [{200, {LINE.MessagingAPI.RichMenuAliasListResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Options

    * `requestId` (String.t()): A request ID used to batch control the rich menu linked to the user. Each Messaging API request has a request ID.

  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#get-batch-control-rich-menus-progress-status)

  """
  @spec get_rich_menu_batch_progress(keyword) ::
          {:ok, LINE.MessagingAPI.RichMenuBatchProgressResponse.t()} | :error
  def get_rich_menu_batch_progress(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:requestId])

    client.request(%{
      call: {LINE.MessagingAPI.MessagingApi, :get_rich_menu_batch_progress},
      url: "/v2/bot/richmenu/progress/batch",
      method: :get,
      query: query,
      response: [{200, {LINE.MessagingAPI.RichMenuBatchProgressResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#get-rich-menu-id-of-user)

  """
  @spec get_rich_menu_id_of_user(String.t(), keyword) ::
          {:ok, LINE.MessagingAPI.RichMenuIdResponse.t()} | :error
  def get_rich_menu_id_of_user(user_id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [user_id: user_id],
      call: {LINE.MessagingAPI.MessagingApi, :get_rich_menu_id_of_user},
      url: "/v2/bot/user/#{user_id}/richmenu",
      method: :get,
      response: [{200, {LINE.MessagingAPI.RichMenuIdResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#get-rich-menu-list)

  """
  @spec get_rich_menu_list(keyword) :: {:ok, LINE.MessagingAPI.RichMenuListResponse.t()} | :error
  def get_rich_menu_list(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      call: {LINE.MessagingAPI.MessagingApi, :get_rich_menu_list},
      url: "/v2/bot/richmenu/list",
      method: :get,
      response: [{200, {LINE.MessagingAPI.RichMenuListResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#get-members-room-count)

  """
  @spec get_room_member_count(String.t(), keyword) ::
          {:ok, LINE.MessagingAPI.RoomMemberCountResponse.t()} | :error
  def get_room_member_count(room_id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [room_id: room_id],
      call: {LINE.MessagingAPI.MessagingApi, :get_room_member_count},
      url: "/v2/bot/room/#{room_id}/members/count",
      method: :get,
      response: [{200, {LINE.MessagingAPI.RoomMemberCountResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#get-room-member-profile)

  """
  @spec get_room_member_profile(String.t(), String.t(), keyword) ::
          {:ok, LINE.MessagingAPI.RoomUserProfileResponse.t()} | :error
  def get_room_member_profile(room_id, user_id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [room_id: room_id, user_id: user_id],
      call: {LINE.MessagingAPI.MessagingApi, :get_room_member_profile},
      url: "/v2/bot/room/#{room_id}/member/#{user_id}",
      method: :get,
      response: [{200, {LINE.MessagingAPI.RoomUserProfileResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Options

    * `start` (String.t()): Value of the continuation token found in the `next` property of the JSON object returned in the response.
  Include this parameter to get the next array of user IDs for the members of the group.


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#get-room-member-user-ids)

  """
  @spec get_room_members_ids(String.t(), keyword) ::
          {:ok, LINE.MessagingAPI.MembersIdsResponse.t()} | :error
  def get_room_members_ids(room_id, opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:start])

    client.request(%{
      args: [room_id: room_id],
      call: {LINE.MessagingAPI.MessagingApi, :get_room_members_ids},
      url: "/v2/bot/room/#{room_id}/members/ids",
      method: :get,
      query: query,
      response: [{200, {LINE.MessagingAPI.MembersIdsResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#get-webhook-endpoint-information)

  """
  @spec get_webhook_endpoint(keyword) ::
          {:ok, LINE.MessagingAPI.GetWebhookEndpointResponse.t()} | :error
  def get_webhook_endpoint(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      call: {LINE.MessagingAPI.MessagingApi, :get_webhook_endpoint},
      url: "/v2/bot/channel/webhook/endpoint",
      method: :get,
      response: [{200, {LINE.MessagingAPI.GetWebhookEndpointResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#issue-link-token)

  """
  @spec issue_link_token(String.t(), keyword) ::
          {:ok, LINE.MessagingAPI.IssueLinkTokenResponse.t()} | :error
  def issue_link_token(user_id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [user_id: user_id],
      call: {LINE.MessagingAPI.MessagingApi, :issue_link_token},
      url: "/v2/bot/user/#{user_id}/linkToken",
      method: :post,
      response: [{200, {LINE.MessagingAPI.IssueLinkTokenResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#leave-group)

  """
  @spec leave_group(String.t(), keyword) :: :ok | {:error, LINE.MessagingAPI.ErrorResponse.t()}
  def leave_group(group_id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [group_id: group_id],
      call: {LINE.MessagingAPI.MessagingApi, :leave_group},
      url: "/v2/bot/group/#{group_id}/leave",
      method: :post,
      response: [
        {200, nil},
        {400, {LINE.MessagingAPI.ErrorResponse, :t}},
        {404, {LINE.MessagingAPI.ErrorResponse, :t}}
      ],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#leave-room)

  """
  @spec leave_room(String.t(), keyword) :: :ok | :error
  def leave_room(room_id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [room_id: room_id],
      call: {LINE.MessagingAPI.MessagingApi, :leave_room},
      url: "/v2/bot/room/#{room_id}/leave",
      method: :post,
      response: [{200, nil}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#link-rich-menu-to-user)

  """
  @spec link_rich_menu_id_to_user(String.t(), String.t(), keyword) :: :ok | :error
  def link_rich_menu_id_to_user(user_id, rich_menu_id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [user_id: user_id, rich_menu_id: rich_menu_id],
      call: {LINE.MessagingAPI.MessagingApi, :link_rich_menu_id_to_user},
      url: "/v2/bot/user/#{user_id}/richmenu/#{rich_menu_id}",
      method: :post,
      response: [{200, nil}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#link-rich-menu-to-users)

  """
  @spec link_rich_menu_id_to_users(LINE.MessagingAPI.RichMenuBulkLinkRequest.t(), keyword) ::
          :ok | :error
  def link_rich_menu_id_to_users(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {LINE.MessagingAPI.MessagingApi, :link_rich_menu_id_to_users},
      url: "/v2/bot/richmenu/bulk/link",
      body: body,
      method: :post,
      request: [{"application/json", {LINE.MessagingAPI.RichMenuBulkLinkRequest, :t}}],
      response: [{202, nil}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/partner-docs/#mark-messages-from-users-as-read)

  """
  @spec mark_messages_as_read(LINE.MessagingAPI.MarkMessagesAsReadRequest.t(), keyword) ::
          :ok | :error
  def mark_messages_as_read(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {LINE.MessagingAPI.MessagingApi, :mark_messages_as_read},
      url: "/v2/bot/message/markAsRead",
      body: body,
      method: :post,
      request: [{"application/json", {LINE.MessagingAPI.MarkMessagesAsReadRequest, :t}}],
      response: [{200, nil}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#send-multicast-message)

  """
  @spec multicast(LINE.MessagingAPI.MulticastRequest.t(), keyword) ::
          :ok | {:error, LINE.MessagingAPI.ErrorResponse.t()}
  def multicast(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {LINE.MessagingAPI.MessagingApi, :multicast},
      url: "/v2/bot/message/multicast",
      body: body,
      method: :post,
      request: [{"application/json", {LINE.MessagingAPI.MulticastRequest, :t}}],
      response: [
        {200, nil},
        {400, {LINE.MessagingAPI.ErrorResponse, :t}},
        {403, {LINE.MessagingAPI.ErrorResponse, :t}},
        {409, {LINE.MessagingAPI.ErrorResponse, :t}},
        {429, {LINE.MessagingAPI.ErrorResponse, :t}}
      ],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#send-narrowcast-message)

  """
  @spec narrowcast(LINE.MessagingAPI.NarrowcastRequest.t(), keyword) ::
          :ok | {:error, LINE.MessagingAPI.ErrorResponse.t()}
  def narrowcast(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {LINE.MessagingAPI.MessagingApi, :narrowcast},
      url: "/v2/bot/message/narrowcast",
      body: body,
      method: :post,
      request: [{"application/json", {LINE.MessagingAPI.NarrowcastRequest, :t}}],
      response: [
        {202, nil},
        {400, {LINE.MessagingAPI.ErrorResponse, :t}},
        {403, {LINE.MessagingAPI.ErrorResponse, :t}},
        {409, {LINE.MessagingAPI.ErrorResponse, :t}},
        {429, {LINE.MessagingAPI.ErrorResponse, :t}}
      ],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#send-push-message)

  """
  @spec push_message(LINE.MessagingAPI.PushMessageRequest.t(), keyword) ::
          :ok | {:error, LINE.MessagingAPI.ErrorResponse.t()}
  def push_message(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {LINE.MessagingAPI.MessagingApi, :push_message},
      url: "/v2/bot/message/push",
      body: body,
      method: :post,
      request: [{"application/json", {LINE.MessagingAPI.PushMessageRequest, :t}}],
      response: [
        {200, nil},
        {400, {LINE.MessagingAPI.ErrorResponse, :t}},
        {403, {LINE.MessagingAPI.ErrorResponse, :t}},
        {409, {LINE.MessagingAPI.ErrorResponse, :t}},
        {429, {LINE.MessagingAPI.ErrorResponse, :t}}
      ],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/partner-docs/#send-line-notification-message)

  """
  @spec push_messages_by_phone(LINE.MessagingAPI.PnpMessagesRequest.t(), keyword) ::
          :ok | {:error, LINE.MessagingAPI.ErrorResponse.t()}
  def push_messages_by_phone(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {LINE.MessagingAPI.MessagingApi, :push_messages_by_phone},
      url: "/bot/pnp/push",
      body: body,
      method: :post,
      request: [{"application/json", {LINE.MessagingAPI.PnpMessagesRequest, :t}}],
      response: [{200, nil}, {422, {LINE.MessagingAPI.ErrorResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#send-reply-message)

  """
  @spec reply_message(LINE.MessagingAPI.ReplyMessageRequest.t(), keyword) ::
          :ok | {:error, LINE.MessagingAPI.ErrorResponse.t()}
  def reply_message(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {LINE.MessagingAPI.MessagingApi, :reply_message},
      url: "/v2/bot/message/reply",
      body: body,
      method: :post,
      request: [{"application/json", {LINE.MessagingAPI.ReplyMessageRequest, :t}}],
      response: [
        {200, nil},
        {400, {LINE.MessagingAPI.ErrorResponse, :t}},
        {429, {LINE.MessagingAPI.ErrorResponse, :t}}
      ],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#batch-control-rich-menus-of-users)

  """
  @spec rich_menu_batch(LINE.MessagingAPI.RichMenuBatchRequest.t(), keyword) :: :ok | :error
  def rich_menu_batch(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {LINE.MessagingAPI.MessagingApi, :rich_menu_batch},
      url: "/v2/bot/richmenu/batch",
      body: body,
      method: :post,
      request: [{"application/json", {LINE.MessagingAPI.RichMenuBatchRequest, :t}}],
      response: [{202, nil}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#set-default-rich-menu)

  """
  @spec set_default_rich_menu(String.t(), keyword) :: :ok | :error
  def set_default_rich_menu(rich_menu_id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [rich_menu_id: rich_menu_id],
      call: {LINE.MessagingAPI.MessagingApi, :set_default_rich_menu},
      url: "/v2/bot/user/all/richmenu/#{rich_menu_id}",
      method: :post,
      response: [{200, nil}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#set-webhook-endpoint-url)

  """
  @spec set_webhook_endpoint(LINE.MessagingAPI.SetWebhookEndpointRequest.t(), keyword) ::
          :ok | :error
  def set_webhook_endpoint(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {LINE.MessagingAPI.MessagingApi, :set_webhook_endpoint},
      url: "/v2/bot/channel/webhook/endpoint",
      body: body,
      method: :put,
      request: [{"application/json", {LINE.MessagingAPI.SetWebhookEndpointRequest, :t}}],
      response: [{200, nil}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#test-webhook-endpoint)

  """
  @spec test_webhook_endpoint(LINE.MessagingAPI.TestWebhookEndpointRequest.t(), keyword) ::
          {:ok, LINE.MessagingAPI.TestWebhookEndpointResponse.t()} | :error
  def test_webhook_endpoint(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {LINE.MessagingAPI.MessagingApi, :test_webhook_endpoint},
      url: "/v2/bot/channel/webhook/test",
      body: body,
      method: :post,
      request: [{"application/json", {LINE.MessagingAPI.TestWebhookEndpointRequest, :t}}],
      response: [{200, {LINE.MessagingAPI.TestWebhookEndpointResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#unlink-rich-menu-from-user)

  """
  @spec unlink_rich_menu_id_from_user(String.t(), keyword) :: :ok | :error
  def unlink_rich_menu_id_from_user(user_id, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [user_id: user_id],
      call: {LINE.MessagingAPI.MessagingApi, :unlink_rich_menu_id_from_user},
      url: "/v2/bot/user/#{user_id}/richmenu",
      method: :delete,
      response: [{200, nil}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#unlink-rich-menu-from-users)

  """
  @spec unlink_rich_menu_id_from_users(LINE.MessagingAPI.RichMenuBulkUnlinkRequest.t(), keyword) ::
          :ok | :error
  def unlink_rich_menu_id_from_users(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {LINE.MessagingAPI.MessagingApi, :unlink_rich_menu_id_from_users},
      url: "/v2/bot/richmenu/bulk/unlink",
      body: body,
      method: :post,
      request: [{"application/json", {LINE.MessagingAPI.RichMenuBulkUnlinkRequest, :t}}],
      response: [{202, nil}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#update-rich-menu-alias)

  """
  @spec update_rich_menu_alias(
          String.t(),
          LINE.MessagingAPI.UpdateRichMenuAliasRequest.t(),
          keyword
        ) :: :ok | {:error, LINE.MessagingAPI.ErrorResponse.t()}
  def update_rich_menu_alias(rich_menu_alias_id, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [rich_menu_alias_id: rich_menu_alias_id, body: body],
      call: {LINE.MessagingAPI.MessagingApi, :update_rich_menu_alias},
      url: "/v2/bot/richmenu/alias/#{rich_menu_alias_id}",
      body: body,
      method: :post,
      request: [{"application/json", {LINE.MessagingAPI.UpdateRichMenuAliasRequest, :t}}],
      response: [{200, nil}, {400, {LINE.MessagingAPI.ErrorResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#validate-message-objects-of-broadcast-message)

  """
  @spec validate_broadcast(LINE.MessagingAPI.ValidateMessageRequest.t(), keyword) :: :ok | :error
  def validate_broadcast(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {LINE.MessagingAPI.MessagingApi, :validate_broadcast},
      url: "/v2/bot/message/validate/broadcast",
      body: body,
      method: :post,
      request: [{"application/json", {LINE.MessagingAPI.ValidateMessageRequest, :t}}],
      response: [{200, nil}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#validate-message-objects-of-multicast-message)

  """
  @spec validate_multicast(LINE.MessagingAPI.ValidateMessageRequest.t(), keyword) :: :ok | :error
  def validate_multicast(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {LINE.MessagingAPI.MessagingApi, :validate_multicast},
      url: "/v2/bot/message/validate/multicast",
      body: body,
      method: :post,
      request: [{"application/json", {LINE.MessagingAPI.ValidateMessageRequest, :t}}],
      response: [{200, nil}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#validate-message-objects-of-narrowcast-message)

  """
  @spec validate_narrowcast(LINE.MessagingAPI.ValidateMessageRequest.t(), keyword) :: :ok | :error
  def validate_narrowcast(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {LINE.MessagingAPI.MessagingApi, :validate_narrowcast},
      url: "/v2/bot/message/validate/narrowcast",
      body: body,
      method: :post,
      request: [{"application/json", {LINE.MessagingAPI.ValidateMessageRequest, :t}}],
      response: [{200, nil}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#validate-message-objects-of-push-message)

  """
  @spec validate_push(LINE.MessagingAPI.ValidateMessageRequest.t(), keyword) :: :ok | :error
  def validate_push(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {LINE.MessagingAPI.MessagingApi, :validate_push},
      url: "/v2/bot/message/validate/push",
      body: body,
      method: :post,
      request: [{"application/json", {LINE.MessagingAPI.ValidateMessageRequest, :t}}],
      response: [{200, nil}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#validate-message-objects-of-reply-message)

  """
  @spec validate_reply(LINE.MessagingAPI.ValidateMessageRequest.t(), keyword) :: :ok | :error
  def validate_reply(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {LINE.MessagingAPI.MessagingApi, :validate_reply},
      url: "/v2/bot/message/validate/reply",
      body: body,
      method: :post,
      request: [{"application/json", {LINE.MessagingAPI.ValidateMessageRequest, :t}}],
      response: [{200, nil}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#validate-batch-control-rich-menus-request)

  """
  @spec validate_rich_menu_batch_request(LINE.MessagingAPI.RichMenuBatchRequest.t(), keyword) ::
          :ok | :error
  def validate_rich_menu_batch_request(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {LINE.MessagingAPI.MessagingApi, :validate_rich_menu_batch_request},
      url: "/v2/bot/richmenu/validate/batch",
      body: body,
      method: :post,
      request: [{"application/json", {LINE.MessagingAPI.RichMenuBatchRequest, :t}}],
      response: [{200, nil}],
      opts: opts
    })
  end

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#validate-rich-menu-object)

  """
  @spec validate_rich_menu_object(LINE.MessagingAPI.RichMenuRequest.t(), keyword) :: :ok | :error
  def validate_rich_menu_object(body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [body: body],
      call: {LINE.MessagingAPI.MessagingApi, :validate_rich_menu_object},
      url: "/v2/bot/richmenu/validate",
      body: body,
      method: :post,
      request: [{"application/json", {LINE.MessagingAPI.RichMenuRequest, :t}}],
      response: [{200, nil}],
      opts: opts
    })
  end
end
