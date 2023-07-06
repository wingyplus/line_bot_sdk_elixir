defmodule LINE.InsightAPI.Insight do
  @moduledoc """
  Provides API endpoints related to insight
  """

  @default_client LINE.InsightAPI.Client

  @doc """


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#get-demographic)

  """
  @spec get_friends_demographics(keyword) ::
          {:ok, LINE.InsightAPI.GetFriendsDemographicsResponse.t()} | :error
  def get_friends_demographics(opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      call: {LINE.InsightAPI.Insight, :get_friends_demographics},
      url: "/v2/bot/insight/demographic",
      method: :get,
      response: [{200, {LINE.InsightAPI.GetFriendsDemographicsResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  Get user interaction statistics

  ## Options

    * `requestId` (String.t()): Request ID of a narrowcast message or broadcast message.
  Each Messaging API request has a request ID.


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#get-message-event)

  """
  @spec get_message_event(keyword) :: {:ok, LINE.InsightAPI.GetMessageEventResponse.t()} | :error
  def get_message_event(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:requestId])

    client.request(%{
      call: {LINE.InsightAPI.Insight, :get_message_event},
      url: "/v2/bot/insight/message/event",
      method: :get,
      query: query,
      response: [{200, {LINE.InsightAPI.GetMessageEventResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  Get number of followers

  ## Options

    * `date` (String.t()): Date for which to retrieve the number of followers.

  Format: yyyyMMdd (e.g. 20191231)
  Timezone: UTC+9


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#get-number-of-followers)

  """
  @spec get_number_of_followers(keyword) ::
          {:ok, LINE.InsightAPI.GetNumberOfFollowersResponse.t()} | :error
  def get_number_of_followers(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:date])

    client.request(%{
      call: {LINE.InsightAPI.Insight, :get_number_of_followers},
      url: "/v2/bot/insight/followers",
      method: :get,
      query: query,
      response: [{200, {LINE.InsightAPI.GetNumberOfFollowersResponse, :t}}],
      opts: opts
    })
  end

  @doc """
  Get number of message deliveries

  ## Options

    * `date` (String.t()): Date for which to retrieve number of sent messages.
  - Format: yyyyMMdd (e.g. 20191231)
  - Timezone: UTC+9


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#get-number-of-delivery-messages)

  """
  @spec get_number_of_message_deliveries(keyword) ::
          {:ok, LINE.InsightAPI.GetNumberOfMessageDeliveriesResponse.t()} | :error
  def get_number_of_message_deliveries(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:date])

    client.request(%{
      call: {LINE.InsightAPI.Insight, :get_number_of_message_deliveries},
      url: "/v2/bot/insight/message/delivery",
      method: :get,
      query: query,
      response: [{200, {LINE.InsightAPI.GetNumberOfMessageDeliveriesResponse, :t}}],
      opts: opts
    })
  end

  @doc """


  ## Options

    * `customAggregationUnit` (String.t()): Name of aggregation unit specified when sending the message. Case-sensitive.
  For example, `Promotion_a` and `Promotion_A` are regarded as different unit names.

    * `from` (String.t()): Start date of aggregation period.

  Format: yyyyMMdd (e.g. 20210301)
  Time zone: UTC+9

    * `to` (String.t()): End date of aggregation period. The end date can be specified for up to 30 days later. For example, if the start date is 20210301, the latest end date is 20210331.

  Format: yyyyMMdd (e.g. 20210301)
  Time zone: UTC+9


  ## Resources

    * [Endpoint Documentation](https://developers.line.biz/en/reference/messaging-api/#get-statistics-per-unit)

  """
  @spec get_statistics_per_unit(keyword) ::
          {:ok, LINE.InsightAPI.GetStatisticsPerUnitResponse.t()} | :error
  def get_statistics_per_unit(opts \\ []) do
    client = opts[:client] || @default_client
    query = Keyword.take(opts, [:customAggregationUnit, :from, :to])

    client.request(%{
      call: {LINE.InsightAPI.Insight, :get_statistics_per_unit},
      url: "/v2/bot/insight/message/event/aggregation",
      method: :get,
      query: query,
      response: [{200, {LINE.InsightAPI.GetStatisticsPerUnitResponse, :t}}],
      opts: opts
    })
  end
end
