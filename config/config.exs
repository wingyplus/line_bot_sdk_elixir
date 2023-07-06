import Config

config :oapi_generator,
  messaging_api: [
    base_location: "lib/line/messaging_api",
    base_module: LINE.MessagingAPI
  ],
  channel_access_token_api: [
    base_location: "lib/line/channel_access_token_api",
    base_module: LINE.ChannelAccessTokenAPI
  ],
  liff_api: [
    base_location: "lib/line/liff_api",
    base_module: LINE.LIFFAPI
  ],
  insight_api: [
    base_location: "lib/line/insight_api",
    base_module: LINE.InsightAPI
  ],
  mission_stickers_api: [
    base_location: "lib/line/mission_stickers_api",
    base_module: LINE.MissionStickersAPI
  ],
  audience_api: [
    base_location: "lib/line/audience_api",
    base_module: LINE.AudienceAPI
  ]
