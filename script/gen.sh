#!/bin/bash

rm -rf lib/line
mix api.gen messaging_api line-openapi/messaging-api.yml
mix api.gen messaging_api line-openapi/module.yml
mix api.gen messaging_api line-openapi/module-attach.yml
mix api.gen channel_access_token_api line-openapi/channel-access-token.yml
mix api.gen insight_api line-openapi/insight.yml
mix api.gen liff_api line-openapi/liff.yml
mix api.gen audience_api line-openapi/manage-audience.yml
# mix api.gen mission_stickers_api line-openapi/shop.yml
mix format
