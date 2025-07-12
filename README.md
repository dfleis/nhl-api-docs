# **Unofficial** NHL Data API Reference Documentation

This document provides unofficial documentation **545** data endpoints (HTTP GET methods) across **3** base URL groups:

|Base URL                          | Parsed Endpoints|
|:---------------------------------|----------------:|
|https://api-web.nhle.com/         |               82|
|https://api.nhle.com/stats/rest/  |               21|
|https://records.nhl.com/site/api/ |              442|

This documentation lists the **base URL**, **path** (path template when the path contains templated variables, e.g. `{lang}/goalie/{report}`), **path parameters** (when the path is templated), and documented **query parameters** (name, variable type). These metadata were parsed directly from the `application.wadl` of the corresponding base URL. Each endpoint is also given a unique `label`. These labels are *not* a part of the NHL API, and were created through the parsing script so that each endpoint could have a unique and (relatively) simple ID when grouped together across the base URLs.

These include **20** NHL Edge statistics endpoints (or, at least the path would suggest that's the case -- I havent't fully explored these myself just yet). They seem to be all prefixed with `edge_`:

|Label                                  |Path                                                                        |Base URL                  |
|:--------------------------------------|:---------------------------------------------------------------------------|:-------------------------|
|edge_goalie_shot_location_detail_now   |v1/edge/goalie-shot-location-detail/{playerId}/now                          |https://api-web.nhle.com/ |
|edge_goalie_shot_location_detail       |v1/edge/goalie-shot-location-detail/{playerId}/{season}/{gameType}          |https://api-web.nhle.com/ |
|edge_skater_shot_speed_detail_now      |v1/edge/skater-shot-speed-detail/{playerId}/now                             |https://api-web.nhle.com/ |
|edge_skater_shot_speed_detail          |v1/edge/skater-shot-speed-detail/{playerId}/{season}/{gameType}             |https://api-web.nhle.com/ |
|edge_goalie_shot_location_top_10_now   |v1/edge/goalie-shot-location-top-10/{category}/{sortBy}/now                 |https://api-web.nhle.com/ |
|edge_goalie_shot_location_top_10       |v1/edge/goalie-shot-location-top-10/{category}/{sortBy}/{season}/{gameType} |https://api-web.nhle.com/ |
|edge_skater_skating_speed_detail_now   |v1/edge/skater-skating-speed-detail/{playerId}/now                          |https://api-web.nhle.com/ |
|edge_skater_skating_speed_detail       |v1/edge/skater-skating-speed-detail/{playerId}/{season}/{gameType}          |https://api-web.nhle.com/ |
|edge_skater_detail_now                 |v1/edge/skater-detail/{playerId}/now                                        |https://api-web.nhle.com/ |
|edge_skater_detail                     |v1/edge/skater-detail/{playerId}/{season}/{gameType}                        |https://api-web.nhle.com/ |
|edge_skater_shot_speed_top_10          |v1/edge/skater-shot-speed-top-10/{positions}/{sortBy}/{season}/{gameType}   |https://api-web.nhle.com/ |
|edge_skater_shot_speed_top_10_now      |v1/edge/skater-shot-speed-top-10/{positions}/{sortBy}/now                   |https://api-web.nhle.com/ |
|edge_skater_speed_top_10               |v1/edge/skater-speed-top-10/{positions}/{sortBy}/{season}/{gameType}        |https://api-web.nhle.com/ |
|edge_skater_speed_top_10_now           |v1/edge/skater-speed-top-10/{positions}/{sortBy}/now                        |https://api-web.nhle.com/ |
|edge_goalie_edge_save_pctg_top_10      |v1/edge/goalie-edge-save-pctg-top-10/{sortBy}/{season}/{gameType}           |https://api-web.nhle.com/ |
|edge_goalie_edge_save_pctg_top_10_now  |v1/edge/goalie-edge-save-pctg-top-10/{sortBy}/now                           |https://api-web.nhle.com/ |
|edge_goalie_save_percentage_detail_now |v1/edge/goalie-save-percentage-detail/{playerId}/now                        |https://api-web.nhle.com/ |
|edge_goalie_save_percentage_detail     |v1/edge/goalie-save-percentage-detail/{playerId}/{season}/{gameType}        |https://api-web.nhle.com/ |
|edge_goalie_detail_now                 |v1/edge/goalie-detail/{playerId}/now                                        |https://api-web.nhle.com/ |
|edge_goalie_detail                     |v1/edge/goalie-detail/{playerId}/{season}/{gameType}                        |https://api-web.nhle.com/ |

More details on these endpoints (their path parameters, any documented query parameters), as well as the other 500+ parsed endpoints are found immediately below, grouped by base URL.

## Table of Contents

1. [`api-web.nhle.com`](#apiwebnhlecom)
2. [`api.nhle.com/stats/rest`](#apinhlecomstatsrest)
3. [`records.nhl.com/site/api`](#recordsnhlcomsiteapi)

## `api-web.nhle.com`

### club_schedule_month
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/club-schedule/{team}/month/{month}`

**Full URL:** `https://api-web.nhle.com/v1/club-schedule/{team}/month/{month}`

**Path parameters:**
|name  |regex             |
|:-----|:-----------------|
|team  |\w{3}             |
|month |[0-9]{4}-[0-9]{2} |

**Query parameters:** (none)

---

### club_schedule_month_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/club-schedule/{team}/month/now`

**Full URL:** `https://api-web.nhle.com/v1/club-schedule/{team}/month/now`

**Path parameters:**
|name |regex |
|:----|:-----|
|team |\w{3} |

**Query parameters:** (none)

---

### club_schedule_season
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/club-schedule-season/{team}/{season}`

**Full URL:** `https://api-web.nhle.com/v1/club-schedule-season/{team}/{season}`

**Path parameters:**
|name   |regex    |
|:------|:--------|
|team   |\w{3}    |
|season |[0-9]{8} |

**Query parameters:** (none)

---

### club_schedule_season_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/club-schedule-season/{team}/now`

**Full URL:** `https://api-web.nhle.com/v1/club-schedule-season/{team}/now`

**Path parameters:**
|name |regex |
|:----|:-----|
|team |\w{3} |

**Query parameters:** (none)

---

### club_schedule_week
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/club-schedule/{team}/week/{date}`

**Full URL:** `https://api-web.nhle.com/v1/club-schedule/{team}/week/{date}`

**Path parameters:**
|name |regex                      |
|:----|:--------------------------|
|team |\w{3}                      |
|date |[0-9]{4}-[0-9]{2}-[0-9]{2} |

**Query parameters:** (none)

---

### club_schedule_week_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/club-schedule/{team}/week/now`

**Full URL:** `https://api-web.nhle.com/v1/club-schedule/{team}/week/now`

**Path parameters:**
|name |regex |
|:----|:-----|
|team |\w{3} |

**Query parameters:** (none)

---

### club_stats
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/club-stats/{team}/{season}/{gameType}`

**Full URL:** `https://api-web.nhle.com/v1/club-stats/{team}/{season}/{gameType}`

**Path parameters:**
|name     |regex      |
|:--------|:----------|
|team     |\w{3}      |
|season   |[0-9]{8}   |
|gameType |[0-9]{1,2} |

**Query parameters:** (none)

---

### club_stats_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/club-stats/{team}/now`

**Full URL:** `https://api-web.nhle.com/v1/club-stats/{team}/now`

**Path parameters:**
|name |regex |
|:----|:-----|
|team |\w{3} |

**Query parameters:** (none)

---

### club_stats_season
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/club-stats-season/{team}`

**Full URL:** `https://api-web.nhle.com/v1/club-stats-season/{team}`

**Path parameters:**
|name |regex |
|:----|:-----|
|team |\w{3} |

**Query parameters:** (none)

---

### draft_picks
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/draft/picks/{year}/{round}`

**Full URL:** `https://api-web.nhle.com/v1/draft/picks/{year}/{round}`

**Path parameters:**
|name  |regex      |
|:-----|:----------|
|year  |[0-9]{4}   |
|round |[0-9]{1,2} |

**Query parameters:** (none)

---

### draft_picks_all
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/draft/picks/{year}/all`

**Full URL:** `https://api-web.nhle.com/v1/draft/picks/{year}/all`

**Path parameters:**
|name |regex    |
|:----|:--------|
|year |[0-9]{4} |

**Query parameters:** (none)

---

### draft_picks_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/draft/picks/now`

**Full URL:** `https://api-web.nhle.com/v1/draft/picks/now`

**Path parameters:** (none)

**Query parameters:** (none)

---

### draft_rankings
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/draft/rankings/{year}/{category}`

**Full URL:** `https://api-web.nhle.com/v1/draft/rankings/{year}/{category}`

**Path parameters:**
|name     |regex |
|:--------|:-----|
|year     |NA    |
|category |NA    |

**Query parameters:** (none)

---

### draft_rankings_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/draft/rankings/now`

**Full URL:** `https://api-web.nhle.com/v1/draft/rankings/now`

**Path parameters:** (none)

**Query parameters:** (none)

---

### draft_tracker_picks_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/draft-tracker/picks/now`

**Full URL:** `https://api-web.nhle.com/v1/draft-tracker/picks/now`

**Path parameters:** (none)

**Query parameters:** (none)

---

### edge_goalie_detail
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/goalie-detail/{playerId}/{season}/{gameType}`

**Full URL:** `https://api-web.nhle.com/v1/edge/goalie-detail/{playerId}/{season}/{gameType}`

**Path parameters:**
|name     |regex      |
|:--------|:----------|
|playerId |NA         |
|season   |[0-9]{8}   |
|gameType |[0-9]{1,2} |

**Query parameters:** (none)

---

### edge_goalie_detail_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/goalie-detail/{playerId}/now`

**Full URL:** `https://api-web.nhle.com/v1/edge/goalie-detail/{playerId}/now`

**Path parameters:**
|name     |regex |
|:--------|:-----|
|playerId |NA    |

**Query parameters:** (none)

---

### edge_goalie_edge_save_pctg_top_10
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/goalie-edge-save-pctg-top-10/{sortBy}/{season}/{gameType}`

**Full URL:** `https://api-web.nhle.com/v1/edge/goalie-edge-save-pctg-top-10/{sortBy}/{season}/{gameType}`

**Path parameters:**
|name     |regex      |
|:--------|:----------|
|sortBy   |NA         |
|season   |[0-9]{8}   |
|gameType |[0-9]{1,2} |

**Query parameters:** (none)

---

### edge_goalie_edge_save_pctg_top_10_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/goalie-edge-save-pctg-top-10/{sortBy}/now`

**Full URL:** `https://api-web.nhle.com/v1/edge/goalie-edge-save-pctg-top-10/{sortBy}/now`

**Path parameters:**
|name   |regex |
|:------|:-----|
|sortBy |NA    |

**Query parameters:** (none)

---

### edge_goalie_save_percentage_detail
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/goalie-save-percentage-detail/{playerId}/{season}/{gameType}`

**Full URL:** `https://api-web.nhle.com/v1/edge/goalie-save-percentage-detail/{playerId}/{season}/{gameType}`

**Path parameters:**
|name     |regex      |
|:--------|:----------|
|playerId |NA         |
|season   |[0-9]{8}   |
|gameType |[0-9]{1,2} |

**Query parameters:** (none)

---

### edge_goalie_save_percentage_detail_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/goalie-save-percentage-detail/{playerId}/now`

**Full URL:** `https://api-web.nhle.com/v1/edge/goalie-save-percentage-detail/{playerId}/now`

**Path parameters:**
|name     |regex |
|:--------|:-----|
|playerId |NA    |

**Query parameters:** (none)

---

### edge_goalie_shot_location_detail
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/goalie-shot-location-detail/{playerId}/{season}/{gameType}`

**Full URL:** `https://api-web.nhle.com/v1/edge/goalie-shot-location-detail/{playerId}/{season}/{gameType}`

**Path parameters:**
|name     |regex      |
|:--------|:----------|
|playerId |NA         |
|season   |[0-9]{8}   |
|gameType |[0-9]{1,2} |

**Query parameters:** (none)

---

### edge_goalie_shot_location_detail_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/goalie-shot-location-detail/{playerId}/now`

**Full URL:** `https://api-web.nhle.com/v1/edge/goalie-shot-location-detail/{playerId}/now`

**Path parameters:**
|name     |regex |
|:--------|:-----|
|playerId |NA    |

**Query parameters:** (none)

---

### edge_goalie_shot_location_top_10
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/goalie-shot-location-top-10/{category}/{sortBy}/{season}/{gameType}`

**Full URL:** `https://api-web.nhle.com/v1/edge/goalie-shot-location-top-10/{category}/{sortBy}/{season}/{gameType}`

**Path parameters:**
|name     |regex      |
|:--------|:----------|
|category |NA         |
|sortBy   |NA         |
|season   |[0-9]{8}   |
|gameType |[0-9]{1,2} |

**Query parameters:** (none)

---

### edge_goalie_shot_location_top_10_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/goalie-shot-location-top-10/{category}/{sortBy}/now`

**Full URL:** `https://api-web.nhle.com/v1/edge/goalie-shot-location-top-10/{category}/{sortBy}/now`

**Path parameters:**
|name     |regex |
|:--------|:-----|
|category |NA    |
|sortBy   |NA    |

**Query parameters:** (none)

---

### edge_skater_detail
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/skater-detail/{playerId}/{season}/{gameType}`

**Full URL:** `https://api-web.nhle.com/v1/edge/skater-detail/{playerId}/{season}/{gameType}`

**Path parameters:**
|name     |regex      |
|:--------|:----------|
|playerId |NA         |
|season   |[0-9]{8}   |
|gameType |[0-9]{1,2} |

**Query parameters:** (none)

---

### edge_skater_detail_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/skater-detail/{playerId}/now`

**Full URL:** `https://api-web.nhle.com/v1/edge/skater-detail/{playerId}/now`

**Path parameters:**
|name     |regex |
|:--------|:-----|
|playerId |NA    |

**Query parameters:** (none)

---

### edge_skater_shot_speed_detail
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/skater-shot-speed-detail/{playerId}/{season}/{gameType}`

**Full URL:** `https://api-web.nhle.com/v1/edge/skater-shot-speed-detail/{playerId}/{season}/{gameType}`

**Path parameters:**
|name     |regex      |
|:--------|:----------|
|playerId |NA         |
|season   |[0-9]{8}   |
|gameType |[0-9]{1,2} |

**Query parameters:** (none)

---

### edge_skater_shot_speed_detail_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/skater-shot-speed-detail/{playerId}/now`

**Full URL:** `https://api-web.nhle.com/v1/edge/skater-shot-speed-detail/{playerId}/now`

**Path parameters:**
|name     |regex |
|:--------|:-----|
|playerId |NA    |

**Query parameters:** (none)

---

### edge_skater_shot_speed_top_10
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/skater-shot-speed-top-10/{positions}/{sortBy}/{season}/{gameType}`

**Full URL:** `https://api-web.nhle.com/v1/edge/skater-shot-speed-top-10/{positions}/{sortBy}/{season}/{gameType}`

**Path parameters:**
|name      |regex      |
|:---------|:----------|
|positions |NA         |
|sortBy    |NA         |
|season    |[0-9]{8}   |
|gameType  |[0-9]{1,2} |

**Query parameters:** (none)

---

### edge_skater_shot_speed_top_10_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/skater-shot-speed-top-10/{positions}/{sortBy}/now`

**Full URL:** `https://api-web.nhle.com/v1/edge/skater-shot-speed-top-10/{positions}/{sortBy}/now`

**Path parameters:**
|name      |regex |
|:---------|:-----|
|positions |NA    |
|sortBy    |NA    |

**Query parameters:** (none)

---

### edge_skater_skating_speed_detail
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/skater-skating-speed-detail/{playerId}/{season}/{gameType}`

**Full URL:** `https://api-web.nhle.com/v1/edge/skater-skating-speed-detail/{playerId}/{season}/{gameType}`

**Path parameters:**
|name     |regex      |
|:--------|:----------|
|playerId |NA         |
|season   |[0-9]{8}   |
|gameType |[0-9]{1,2} |

**Query parameters:** (none)

---

### edge_skater_skating_speed_detail_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/skater-skating-speed-detail/{playerId}/now`

**Full URL:** `https://api-web.nhle.com/v1/edge/skater-skating-speed-detail/{playerId}/now`

**Path parameters:**
|name     |regex |
|:--------|:-----|
|playerId |NA    |

**Query parameters:** (none)

---

### edge_skater_speed_top_10
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/skater-speed-top-10/{positions}/{sortBy}/{season}/{gameType}`

**Full URL:** `https://api-web.nhle.com/v1/edge/skater-speed-top-10/{positions}/{sortBy}/{season}/{gameType}`

**Path parameters:**
|name      |regex      |
|:---------|:----------|
|positions |NA         |
|sortBy    |NA         |
|season    |[0-9]{8}   |
|gameType  |[0-9]{1,2} |

**Query parameters:** (none)

---

### edge_skater_speed_top_10_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/skater-speed-top-10/{positions}/{sortBy}/now`

**Full URL:** `https://api-web.nhle.com/v1/edge/skater-speed-top-10/{positions}/{sortBy}/now`

**Path parameters:**
|name      |regex |
|:---------|:-----|
|positions |NA    |
|sortBy    |NA    |

**Query parameters:** (none)

---

### gamecenter_boxscore
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/gamecenter/{gameId}/boxscore`

**Full URL:** `https://api-web.nhle.com/v1/gamecenter/{gameId}/boxscore`

**Path parameters:**
|name   |regex |
|:------|:-----|
|gameId |\d+   |

**Query parameters:** (none)

---

### gamecenter_landing
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/gamecenter/{gameId}/landing`

**Full URL:** `https://api-web.nhle.com/v1/gamecenter/{gameId}/landing`

**Path parameters:**
|name   |regex |
|:------|:-----|
|gameId |\d+   |

**Query parameters:** (none)

---

### gamecenter_play_by_play
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/gamecenter/{gameId}/play-by-play`

**Full URL:** `https://api-web.nhle.com/v1/gamecenter/{gameId}/play-by-play`

**Path parameters:**
|name   |regex |
|:------|:-----|
|gameId |\d+   |

**Query parameters:** (none)

---

### gamecenter_right_rail
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/gamecenter/{gameId}/right-rail`

**Full URL:** `https://api-web.nhle.com/v1/gamecenter/{gameId}/right-rail`

**Path parameters:**
|name   |regex |
|:------|:-----|
|gameId |\d+   |

**Query parameters:** (none)

---

### goalie_stats_leaders
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/goalie-stats-leaders/{season}/{gameType}`

**Full URL:** `https://api-web.nhle.com/v1/goalie-stats-leaders/{season}/{gameType}`

**Path parameters:**
|name     |regex      |
|:--------|:----------|
|season   |[0-9]{8}   |
|gameType |[0-9]{1,2} |

**Query parameters (documented):**
|name       |type   |
|:----------|:------|
|categories |string |
|limit      |int    |

---

### goalie_stats_leaders_current
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/goalie-stats-leaders/current`

**Full URL:** `https://api-web.nhle.com/v1/goalie-stats-leaders/current`

**Path parameters:** (none)

**Query parameters (documented):**
|name       |type   |
|:----------|:------|
|categories |string |
|limit      |int    |

---

### location
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/location`

**Full URL:** `https://api-web.nhle.com/v1/location`

**Path parameters:** (none)

**Query parameters:** (none)

---

### meta
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/meta`

**Full URL:** `https://api-web.nhle.com/v1/meta`

**Path parameters:** (none)

**Query parameters (documented):**
|name         |type   |
|:------------|:------|
|players      |string |
|teams        |string |
|seasonStates |string |

---

### meta_game
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/meta/game/{gameId}`

**Full URL:** `https://api-web.nhle.com/v1/meta/game/{gameId}`

**Path parameters:**
|name   |regex |
|:------|:-----|
|gameId |\d+   |

**Query parameters:** (none)

---

### meta_playoff_series
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/meta/playoff-series/{year}/{series_letter}`

**Full URL:** `https://api-web.nhle.com/v1/meta/playoff-series/{year}/{series_letter}`

**Path parameters:**
|name          |regex |
|:-------------|:-----|
|year          |NA    |
|series_letter |NA    |

**Query parameters:** (none)

---

### model_v1_openapi.json
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `model/v1/openapi.json`

**Full URL:** `https://api-web.nhle.com/model/v1/openapi.json`

**Path parameters:** (none)

**Query parameters:** (none)

---

### network_tv_schedule
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/network/tv-schedule/{date}`

**Full URL:** `https://api-web.nhle.com/v1/network/tv-schedule/{date}`

**Path parameters:**
|name |regex                      |
|:----|:--------------------------|
|date |[0-9]{4}-[0-9]{2}-[0-9]{2} |

**Query parameters:** (none)

---

### network_tv_schedule_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/network/tv-schedule/now`

**Full URL:** `https://api-web.nhle.com/v1/network/tv-schedule/now`

**Path parameters:** (none)

**Query parameters:** (none)

---

### partner_game_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/partner-game/{countryCode}/now`

**Full URL:** `https://api-web.nhle.com/v1/partner-game/{countryCode}/now`

**Path parameters:**
|name        |regex |
|:-----------|:-----|
|countryCode |NA    |

**Query parameters:** (none)

---

### player_game_log
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/player/{player}/game-log/{season}/{gameType}`

**Full URL:** `https://api-web.nhle.com/v1/player/{player}/game-log/{season}/{gameType}`

**Path parameters:**
|name     |regex      |
|:--------|:----------|
|player   |NA         |
|season   |[0-9]{8}   |
|gameType |[0-9]{1,2} |

**Query parameters:** (none)

---

### player_game_log_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/player/{player}/game-log/now`

**Full URL:** `https://api-web.nhle.com/v1/player/{player}/game-log/now`

**Path parameters:**
|name   |regex |
|:------|:-----|
|player |NA    |

**Query parameters:** (none)

---

### player_landing
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/player/{player}/landing`

**Full URL:** `https://api-web.nhle.com/v1/player/{player}/landing`

**Path parameters:**
|name   |regex |
|:------|:-----|
|player |NA    |

**Query parameters:** (none)

---

### player_spotlight
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/player-spotlight`

**Full URL:** `https://api-web.nhle.com/v1/player-spotlight`

**Path parameters:** (none)

**Query parameters:** (none)

---

### playoff_bracket
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/playoff-bracket/{year}`

**Full URL:** `https://api-web.nhle.com/v1/playoff-bracket/{year}`

**Path parameters:**
|name |regex    |
|:----|:--------|
|year |[0-9]{4} |

**Query parameters:** (none)

---

### playoff_series_carousel
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/playoff-series/carousel/{season}`

**Full URL:** `https://api-web.nhle.com/v1/playoff-series/carousel/{season}`

**Path parameters:**
|name   |regex    |
|:------|:--------|
|season |[0-9]{8} |

**Query parameters:** (none)

---

### postal_lookup
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/postal-lookup/{postalCode}`

**Full URL:** `https://api-web.nhle.com/v1/postal-lookup/{postalCode}`

**Path parameters:**
|name       |regex |
|:----------|:-----|
|postalCode |NA    |

**Query parameters:** (none)

---

### ppt_replay
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/ppt-replay/{gameId}/{eventNumber}`

**Full URL:** `https://api-web.nhle.com/v1/ppt-replay/{gameId}/{eventNumber}`

**Path parameters:**
|name        |regex |
|:-----------|:-----|
|gameId      |NA    |
|eventNumber |NA    |

**Query parameters:** (none)

---

### ppt_replay_goal
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/ppt-replay/goal/{gameId}/{eventNumber}`

**Full URL:** `https://api-web.nhle.com/v1/ppt-replay/goal/{gameId}/{eventNumber}`

**Path parameters:**
|name        |regex |
|:-----------|:-----|
|gameId      |NA    |
|eventNumber |NA    |

**Query parameters:** (none)

---

### prospects
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/prospects/{team}`

**Full URL:** `https://api-web.nhle.com/v1/prospects/{team}`

**Path parameters:**
|name |regex |
|:----|:-----|
|team |\w{3} |

**Query parameters:** (none)

---

### roster
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/roster/{team}/{season}`

**Full URL:** `https://api-web.nhle.com/v1/roster/{team}/{season}`

**Path parameters:**
|name   |regex    |
|:------|:--------|
|team   |\w{3}    |
|season |[0-9]{8} |

**Query parameters:** (none)

---

### roster_current
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/roster/{team}/current`

**Full URL:** `https://api-web.nhle.com/v1/roster/{team}/current`

**Path parameters:**
|name |regex |
|:----|:-----|
|team |\w{3} |

**Query parameters:** (none)

---

### roster_season
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/roster-season/{team}`

**Full URL:** `https://api-web.nhle.com/v1/roster-season/{team}`

**Path parameters:**
|name |regex |
|:----|:-----|
|team |\w{3} |

**Query parameters:** (none)

---

### schedule
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/schedule/{date}`

**Full URL:** `https://api-web.nhle.com/v1/schedule/{date}`

**Path parameters:**
|name |regex                      |
|:----|:--------------------------|
|date |[0-9]{4}-[0-9]{2}-[0-9]{2} |

**Query parameters:** (none)

---

### schedule_calendar
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/schedule-calendar/{date}`

**Full URL:** `https://api-web.nhle.com/v1/schedule-calendar/{date}`

**Path parameters:**
|name |regex                      |
|:----|:--------------------------|
|date |[0-9]{4}-[0-9]{2}-[0-9]{2} |

**Query parameters:** (none)

---

### schedule_calendar_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/schedule-calendar/now`

**Full URL:** `https://api-web.nhle.com/v1/schedule-calendar/now`

**Path parameters:** (none)

**Query parameters:** (none)

---

### schedule_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/schedule/now`

**Full URL:** `https://api-web.nhle.com/v1/schedule/now`

**Path parameters:** (none)

**Query parameters:** (none)

---

### schedule_playoff_series
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/schedule/playoff-series/{season}/{seriesLetter}`

**Full URL:** `https://api-web.nhle.com/v1/schedule/playoff-series/{season}/{seriesLetter}`

**Path parameters:**
|name         |regex    |
|:------------|:--------|
|season       |[0-9]{8} |
|seriesLetter |\w       |

**Query parameters:** (none)

---

### score
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/score/{date}`

**Full URL:** `https://api-web.nhle.com/v1/score/{date}`

**Path parameters:**
|name |regex                      |
|:----|:--------------------------|
|date |[0-9]{4}-[0-9]{2}-[0-9]{2} |

**Query parameters:** (none)

---

### score_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/score/now`

**Full URL:** `https://api-web.nhle.com/v1/score/now`

**Path parameters:** (none)

**Query parameters:** (none)

---

### scoreboard
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/scoreboard/{date}`

**Full URL:** `https://api-web.nhle.com/v1/scoreboard/{date}`

**Path parameters:**
|name |regex                      |
|:----|:--------------------------|
|date |[0-9]{4}-[0-9]{2}-[0-9]{2} |

**Query parameters:** (none)

---

### scoreboard_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/scoreboard/now`

**Full URL:** `https://api-web.nhle.com/v1/scoreboard/now`

**Path parameters:** (none)

**Query parameters:** (none)

---

### scoreboard_team_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/scoreboard/{team}/now`

**Full URL:** `https://api-web.nhle.com/v1/scoreboard/{team}/now`

**Path parameters:**
|name |regex |
|:----|:-----|
|team |\w{3} |

**Query parameters:** (none)

---

### season
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/season`

**Full URL:** `https://api-web.nhle.com/v1/season`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_stats_leaders
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/skater-stats-leaders/{season}/{gameType}`

**Full URL:** `https://api-web.nhle.com/v1/skater-stats-leaders/{season}/{gameType}`

**Path parameters:**
|name     |regex      |
|:--------|:----------|
|season   |[0-9]{8}   |
|gameType |[0-9]{1,2} |

**Query parameters (documented):**
|name       |type   |
|:----------|:------|
|categories |string |
|limit      |int    |

---

### skater_stats_leaders_current
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/skater-stats-leaders/current`

**Full URL:** `https://api-web.nhle.com/v1/skater-stats-leaders/current`

**Path parameters:** (none)

**Query parameters (documented):**
|name       |type   |
|:----------|:------|
|categories |string |
|limit      |int    |

---

### smartlinks
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/smartlinks`

**Full URL:** `https://api-web.nhle.com/v1/smartlinks`

**Path parameters:** (none)

**Query parameters (documented):**
|name   |type   |
|:------|:------|
|handle |string |

---

### standings
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/standings/{date}`

**Full URL:** `https://api-web.nhle.com/v1/standings/{date}`

**Path parameters:**
|name |regex                      |
|:----|:--------------------------|
|date |[0-9]{4}-[0-9]{2}-[0-9]{2} |

**Query parameters:** (none)

---

### standings_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/standings/now`

**Full URL:** `https://api-web.nhle.com/v1/standings/now`

**Path parameters:** (none)

**Query parameters:** (none)

---

### standings_season
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/standings-season`

**Full URL:** `https://api-web.nhle.com/v1/standings-season`

**Path parameters:** (none)

**Query parameters:** (none)

---

### where_to_watch
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/where-to-watch`

**Full URL:** `https://api-web.nhle.com/v1/where-to-watch`

**Path parameters:** (none)

**Query parameters (documented):**
|name    |type   |
|:-------|:------|
|include |string |

---

### wsc_game_story
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/wsc/game-story/{gameId}`

**Full URL:** `https://api-web.nhle.com/v1/wsc/game-story/{gameId}`

**Path parameters:**
|name   |regex |
|:------|:-----|
|gameId |\d+   |

**Query parameters:** (none)

---

### wsc_play_by_play
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/wsc/play-by-play/{gameId}`

**Full URL:** `https://api-web.nhle.com/v1/wsc/play-by-play/{gameId}`

**Path parameters:**
|name   |regex |
|:------|:-----|
|gameId |\d+   |

**Query parameters:** (none)

---

***

## `api.nhle.com/stats/rest`

### db_componentSeason
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/componentSeason`

**Full URL:** `https://api.nhle.com/stats/rest/{lang}/componentSeason`

**Path parameters:**
|name |regex |
|:----|:-----|
|lang |NA    |

**Query parameters:** (none)

---

### db_config
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/config`

**Full URL:** `https://api.nhle.com/stats/rest/{lang}/config`

**Path parameters:**
|name |regex |
|:----|:-----|
|lang |NA    |

**Query parameters:** (none)

---

### db_content_module
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/content/module/{templateKey}`

**Full URL:** `https://api.nhle.com/stats/rest/{lang}/content/module/{templateKey}`

**Path parameters:**
|name        |regex |
|:-----------|:-----|
|lang        |NA    |
|templateKey |NA    |

**Query parameters:** (none)

---

### db_country
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/country`

**Full URL:** `https://api.nhle.com/stats/rest/{lang}/country`

**Path parameters:**
|name |regex |
|:----|:-----|
|lang |NA    |

**Query parameters:** (none)

---

### db_draft
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/draft`

**Full URL:** `https://api.nhle.com/stats/rest/{lang}/draft`

**Path parameters:**
|name |regex |
|:----|:-----|
|lang |NA    |

**Query parameters:** (none)

---

### db_franchise
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/franchise`

**Full URL:** `https://api.nhle.com/stats/rest/{lang}/franchise`

**Path parameters:**
|name |regex |
|:----|:-----|
|lang |NA    |

**Query parameters:** (none)

---

### db_game
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/game`

**Full URL:** `https://api.nhle.com/stats/rest/{lang}/game`

**Path parameters:**
|name |regex |
|:----|:-----|
|lang |NA    |

**Query parameters:** (none)

---

### db_glossary
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/glossary`

**Full URL:** `https://api.nhle.com/stats/rest/{lang}/glossary`

**Path parameters:**
|name |regex |
|:----|:-----|
|lang |NA    |

**Query parameters:** (none)

---

### db_goalie
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/goalie/{report}`

**Full URL:** `https://api.nhle.com/stats/rest/{lang}/goalie/{report}`

**Path parameters:**
|name   |regex |
|:------|:-----|
|lang   |NA    |
|report |NA    |

**Query parameters (documented):**
|name           |type    |
|:--------------|:-------|
|isAggregate    |boolean |
|isGame         |boolean |
|factCayenneExp |string  |
|include        |string  |
|exclude        |string  |
|cayenneExp     |string  |
|sort           |string  |
|dir            |string  |
|start          |int     |
|limit          |int     |

---

### db_leaders_goalies
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/leaders/goalies/{attribute}`

**Full URL:** `https://api.nhle.com/stats/rest/{lang}/leaders/goalies/{attribute}`

**Path parameters:**
|name      |regex |
|:---------|:-----|
|lang      |NA    |
|attribute |NA    |

**Query parameters:** (none)

---

### db_leaders_skaters
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/leaders/skaters/{attribute}`

**Full URL:** `https://api.nhle.com/stats/rest/{lang}/leaders/skaters/{attribute}`

**Path parameters:**
|name      |regex |
|:---------|:-----|
|lang      |NA    |
|attribute |NA    |

**Query parameters:** (none)

---

### db_milestones_goalies
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/milestones/goalies`

**Full URL:** `https://api.nhle.com/stats/rest/{lang}/milestones/goalies`

**Path parameters:**
|name |regex |
|:----|:-----|
|lang |NA    |

**Query parameters:** (none)

---

### db_milestones_skaters
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/milestones/skaters`

**Full URL:** `https://api.nhle.com/stats/rest/{lang}/milestones/skaters`

**Path parameters:**
|name |regex |
|:----|:-----|
|lang |NA    |

**Query parameters:** (none)

---

### db_ping
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `ping`

**Full URL:** `https://api.nhle.com/stats/rest/ping`

**Path parameters:** (none)

**Query parameters:** (none)

---

### db_players
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/players`

**Full URL:** `https://api.nhle.com/stats/rest/{lang}/players`

**Path parameters:**
|name |regex |
|:----|:-----|
|lang |NA    |

**Query parameters:** (none)

---

### db_season
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/season`

**Full URL:** `https://api.nhle.com/stats/rest/{lang}/season`

**Path parameters:**
|name |regex |
|:----|:-----|
|lang |NA    |

**Query parameters:** (none)

---

### db_shiftcharts
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/shiftcharts`

**Full URL:** `https://api.nhle.com/stats/rest/{lang}/shiftcharts`

**Path parameters:**
|name |regex |
|:----|:-----|
|lang |NA    |

**Query parameters:** (none)

---

### db_skater
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/skater/{report}`

**Full URL:** `https://api.nhle.com/stats/rest/{lang}/skater/{report}`

**Path parameters:**
|name   |regex |
|:------|:-----|
|lang   |NA    |
|report |NA    |

**Query parameters (documented):**
|name           |type    |
|:--------------|:-------|
|isAggregate    |boolean |
|isGame         |boolean |
|factCayenneExp |string  |
|include        |string  |
|exclude        |string  |
|cayenneExp     |string  |
|sort           |string  |
|dir            |string  |
|start          |int     |
|limit          |int     |

---

### db_team
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/team`

**Full URL:** `https://api.nhle.com/stats/rest/{lang}/team`

**Path parameters:**
|name |regex |
|:----|:-----|
|lang |NA    |

**Query parameters:** (none)

---

### db_team_id
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/team/id/{id}`

**Full URL:** `https://api.nhle.com/stats/rest/{lang}/team/id/{id}`

**Path parameters:**
|name |regex |
|:----|:-----|
|lang |NA    |
|id   |NA    |

**Query parameters:** (none)

---

### db_team_report
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/team/{report}`

**Full URL:** `https://api.nhle.com/stats/rest/{lang}/team/{report}`

**Path parameters:**
|name   |regex |
|:------|:-----|
|lang   |NA    |
|report |NA    |

**Query parameters (documented):**
|name           |type    |
|:--------------|:-------|
|isAggregate    |boolean |
|isGame         |boolean |
|factCayenneExp |string  |
|include        |string  |
|exclude        |string  |
|cayenneExp     |string  |
|sort           |string  |
|dir            |string  |
|start          |int     |
|limit          |int     |

---

***

## `records.nhl.com/site/api`

### all_star_coach_career_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `all-star-coach-career-stats`

**Full URL:** `https://records.nhl.com/site/api/all-star-coach-career-stats`

**Path parameters:** (none)

**Query parameters:** (none)

---

### all_star_goaltender_career_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `all-star-goaltender-career-stats`

**Full URL:** `https://records.nhl.com/site/api/all-star-goaltender-career-stats`

**Path parameters:** (none)

**Query parameters:** (none)

---

### all_star_goaltender_game_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `all-star-goaltender-game-stats`

**Full URL:** `https://records.nhl.com/site/api/all-star-goaltender-game-stats`

**Path parameters:** (none)

**Query parameters:** (none)

---

### all_star_goaltender_period_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `all-star-goaltender-period-stats`

**Full URL:** `https://records.nhl.com/site/api/all-star-goaltender-period-stats`

**Path parameters:** (none)

**Query parameters:** (none)

---

### all_star_skater_career_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `all-star-skater-career-stats`

**Full URL:** `https://records.nhl.com/site/api/all-star-skater-career-stats`

**Path parameters:** (none)

**Query parameters:** (none)

---

### all_star_skater_game_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `all-star-skater-game-stats`

**Full URL:** `https://records.nhl.com/site/api/all-star-skater-game-stats`

**Path parameters:** (none)

**Query parameters:** (none)

---

### all_star_skater_period_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `all-star-skater-period-stats`

**Full URL:** `https://records.nhl.com/site/api/all-star-skater-period-stats`

**Path parameters:** (none)

**Query parameters:** (none)

---

### all_star_team_game_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `all-star-team-game-stats`

**Full URL:** `https://records.nhl.com/site/api/all-star-team-game-stats`

**Path parameters:** (none)

**Query parameters:** (none)

---

### all_star_team_period_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `all-star-team-period-stats`

**Full URL:** `https://records.nhl.com/site/api/all-star-team-period-stats`

**Path parameters:** (none)

**Query parameters:** (none)

---

### all_star_team_position_leaders
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `all_star_team_position_leaders`

**Full URL:** `https://records.nhl.com/site/api/all_star_team_position_leaders`

**Path parameters:** (none)

**Query parameters:** (none)

---

### all_time_record_vs_franchise
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `all-time-record-vs-franchise`

**Full URL:** `https://records.nhl.com/site/api/all-time-record-vs-franchise`

**Path parameters:** (none)

**Query parameters:** (none)

---

### attendance
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `attendance`

**Full URL:** `https://records.nhl.com/site/api/attendance`

**Path parameters:** (none)

**Query parameters:** (none)

---

### award_details
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `award-details`

**Full URL:** `https://records.nhl.com/site/api/award-details`

**Path parameters:** (none)

**Query parameters:** (none)

---

### award_details_franchiseId
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `award-details/{franchiseId}`

**Full URL:** `https://records.nhl.com/site/api/award-details/{franchiseId}`

**Path parameters:**
|name        |regex |
|:-----------|:-----|
|franchiseId |NA    |

**Query parameters (documented):**
|name             |type |
|:----------------|:----|
|trophyCategoryId |int  |

---

### award_details_trophy_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `award-details/trophy/{trophyId}/season/{seasonId}`

**Full URL:** `https://records.nhl.com/site/api/award-details/trophy/{trophyId}/season/{seasonId}`

**Path parameters:**
|name     |regex |
|:--------|:-----|
|trophyId |NA    |
|seasonId |NA    |

**Query parameters:** (none)

---

### away_team_record
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `away-team-record`

**Full URL:** `https://records.nhl.com/site/api/away-team-record`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach`

**Full URL:** `https://records.nhl.com/site/api/coach`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_career_records
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-career-records`

**Full URL:** `https://records.nhl.com/site/api/coach-career-records`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_career_records_id
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-career-records/{id}`

**Full URL:** `https://records.nhl.com/site/api/coach-career-records/{id}`

**Path parameters:**
|name |regex |
|:----|:-----|
|id   |NA    |

**Query parameters:** (none)

---

### coach_career_records_regular_plus_playoffs
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-career-records-regular-plus-playoffs`

**Full URL:** `https://records.nhl.com/site/api/coach-career-records-regular-plus-playoffs`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_fewest_games_to_100_playoff_wins
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-fewest-games-to-100-playoff-wins`

**Full URL:** `https://records.nhl.com/site/api/coach-fewest-games-to-100-playoff-wins`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_fewest_games_to_100_wins
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-fewest-games-to-100-wins`

**Full URL:** `https://records.nhl.com/site/api/coach-fewest-games-to-100-wins`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_fewest_games_to_1000_wins
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-fewest-games-to-1000-wins`

**Full URL:** `https://records.nhl.com/site/api/coach-fewest-games-to-1000-wins`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_fewest_games_to_150_playoff_wins
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-fewest-games-to-150-playoff-wins`

**Full URL:** `https://records.nhl.com/site/api/coach-fewest-games-to-150-playoff-wins`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_fewest_games_to_200_wins
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-fewest-games-to-200-wins`

**Full URL:** `https://records.nhl.com/site/api/coach-fewest-games-to-200-wins`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_fewest_games_to_300_wins
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-fewest-games-to-300-wins`

**Full URL:** `https://records.nhl.com/site/api/coach-fewest-games-to-300-wins`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_fewest_games_to_400_wins
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-fewest-games-to-400-wins`

**Full URL:** `https://records.nhl.com/site/api/coach-fewest-games-to-400-wins`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_fewest_games_to_50_playoff_wins
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-fewest-games-to-50-playoff-wins`

**Full URL:** `https://records.nhl.com/site/api/coach-fewest-games-to-50-playoff-wins`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_fewest_games_to_500_wins
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-fewest-games-to-500-wins`

**Full URL:** `https://records.nhl.com/site/api/coach-fewest-games-to-500-wins`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_fewest_games_to_600_wins
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-fewest-games-to-600-wins`

**Full URL:** `https://records.nhl.com/site/api/coach-fewest-games-to-600-wins`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_fewest_games_to_700_wins
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-fewest-games-to-700-wins`

**Full URL:** `https://records.nhl.com/site/api/coach-fewest-games-to-700-wins`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_fewest_games_to_800_wins
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-fewest-games-to-800-wins`

**Full URL:** `https://records.nhl.com/site/api/coach-fewest-games-to-800-wins`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_fewest_games_to_900_wins
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-fewest-games-to-900-wins`

**Full URL:** `https://records.nhl.com/site/api/coach-fewest-games-to-900-wins`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_first_game
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-first-game`

**Full URL:** `https://records.nhl.com/site/api/coach-first-game`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_first_series_win
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-first-series-win`

**Full URL:** `https://records.nhl.com/site/api/coach-first-series-win`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_first_stanley_cup_win
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-first-stanley-cup-win`

**Full URL:** `https://records.nhl.com/site/api/coach-first-stanley-cup-win`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_first_win
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-first-win`

**Full URL:** `https://records.nhl.com/site/api/coach-first-win`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_franchise_records
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-franchise-records`

**Full URL:** `https://records.nhl.com/site/api/coach-franchise-records`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_franchise_records_id
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-franchise-records/{id}`

**Full URL:** `https://records.nhl.com/site/api/coach-franchise-records/{id}`

**Path parameters:**
|name |regex |
|:----|:-----|
|id   |NA    |

**Query parameters:** (none)

---

### coach_franchise_records_regular_plus_playoffs
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-franchise-records-regular-plus-playoffs`

**Full URL:** `https://records.nhl.com/site/api/coach-franchise-records-regular-plus-playoffs`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_franchise_season_records
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-franchise-season-records`

**Full URL:** `https://records.nhl.com/site/api/coach-franchise-season-records`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_franchise_season_records_id
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-franchise-season-records/{id}`

**Full URL:** `https://records.nhl.com/site/api/coach-franchise-season-records/{id}`

**Path parameters:**
|name |regex |
|:----|:-----|
|id   |NA    |

**Query parameters:** (none)

---

### coach_game_seven_career
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-game-seven-career`

**Full URL:** `https://records.nhl.com/site/api/coach-game-seven-career`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_game_seven_franchise
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-game-seven-franchise`

**Full URL:** `https://records.nhl.com/site/api/coach-game-seven-franchise`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_game_seven_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-game-seven-streak`

**Full URL:** `https://records.nhl.com/site/api/coach-game-seven-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_id
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach/{id}`

**Full URL:** `https://records.nhl.com/site/api/coach/{id}`

**Path parameters:**
|name |regex |
|:----|:-----|
|id   |NA    |

**Query parameters:** (none)

---

### coach_most_wins_100_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-most-wins-100-games`

**Full URL:** `https://records.nhl.com/site/api/coach-most-wins-100-games`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_most_wins_100_playoff_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-most-wins-100-playoff-games`

**Full URL:** `https://records.nhl.com/site/api/coach-most-wins-100-playoff-games`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_most_wins_1000_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-most-wins-1000-games`

**Full URL:** `https://records.nhl.com/site/api/coach-most-wins-1000-games`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_most_wins_150_playoff_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-most-wins-150-playoff-games`

**Full URL:** `https://records.nhl.com/site/api/coach-most-wins-150-playoff-games`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_most_wins_200_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-most-wins-200-games`

**Full URL:** `https://records.nhl.com/site/api/coach-most-wins-200-games`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_most_wins_200_playoff_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-most-wins-200-playoff-games`

**Full URL:** `https://records.nhl.com/site/api/coach-most-wins-200-playoff-games`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_most_wins_300_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-most-wins-300-games`

**Full URL:** `https://records.nhl.com/site/api/coach-most-wins-300-games`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_most_wins_400_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-most-wins-400-games`

**Full URL:** `https://records.nhl.com/site/api/coach-most-wins-400-games`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_most_wins_50_playoff_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-most-wins-50-playoff-games`

**Full URL:** `https://records.nhl.com/site/api/coach-most-wins-50-playoff-games`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_most_wins_500_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-most-wins-500-games`

**Full URL:** `https://records.nhl.com/site/api/coach-most-wins-500-games`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_most_wins_600_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-most-wins-600-games`

**Full URL:** `https://records.nhl.com/site/api/coach-most-wins-600-games`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_most_wins_700_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-most-wins-700-games`

**Full URL:** `https://records.nhl.com/site/api/coach-most-wins-700-games`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_most_wins_800_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-most-wins-800-games`

**Full URL:** `https://records.nhl.com/site/api/coach-most-wins-800-games`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_most_wins_900_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-most-wins-900-games`

**Full URL:** `https://records.nhl.com/site/api/coach-most-wins-900-games`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_playoff_series_totals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-playoff-series-totals`

**Full URL:** `https://records.nhl.com/site/api/coach-playoff-series-totals`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_playoff_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-playoff-streak`

**Full URL:** `https://records.nhl.com/site/api/coach-playoff-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_stanley_cup_consecutive_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-stanley-cup-consecutive-streak`

**Full URL:** `https://records.nhl.com/site/api/coach-stanley-cup-consecutive-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_stanley_cup_final_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-stanley-cup-final-streak`

**Full URL:** `https://records.nhl.com/site/api/coach-stanley-cup-final-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### coach_stanley_cup_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-stanley-cup-streak`

**Full URL:** `https://records.nhl.com/site/api/coach-stanley-cup-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### combine
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `combine`

**Full URL:** `https://records.nhl.com/site/api/combine`

**Path parameters:** (none)

**Query parameters:** (none)

---

### comeback_franchise_three_goal_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `comeback-franchise-three-goal-games`

**Full URL:** `https://records.nhl.com/site/api/comeback-franchise-three-goal-games`

**Path parameters:** (none)

**Query parameters:** (none)

---

### comeback_franchise_wins
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `comeback-franchise-wins`

**Full URL:** `https://records.nhl.com/site/api/comeback-franchise-wins`

**Path parameters:** (none)

**Query parameters:** (none)

---

### comeback_league_wins
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `comeback-league-wins`

**Full URL:** `https://records.nhl.com/site/api/comeback-league-wins`

**Path parameters:** (none)

**Query parameters:** (none)

---

### component_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `component-season`

**Full URL:** `https://records.nhl.com/site/api/component-season`

**Path parameters:** (none)

**Query parameters:** (none)

---

### consecutive_100_point_seasons
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `consecutive-100-point-seasons`

**Full URL:** `https://records.nhl.com/site/api/consecutive-100-point-seasons`

**Path parameters:** (none)

**Query parameters:** (none)

---

### consecutive_20_goal_seasons
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `consecutive-20-goal-seasons`

**Full URL:** `https://records.nhl.com/site/api/consecutive-20-goal-seasons`

**Path parameters:** (none)

**Query parameters:** (none)

---

### consecutive_30_goal_seasons
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `consecutive-30-goal-seasons`

**Full URL:** `https://records.nhl.com/site/api/consecutive-30-goal-seasons`

**Path parameters:** (none)

**Query parameters:** (none)

---

### consecutive_30_win_seasons
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `consecutive-30-win-seasons`

**Full URL:** `https://records.nhl.com/site/api/consecutive-30-win-seasons`

**Path parameters:** (none)

**Query parameters:** (none)

---

### consecutive_40_goal_seasons
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `consecutive-40-goal-seasons`

**Full URL:** `https://records.nhl.com/site/api/consecutive-40-goal-seasons`

**Path parameters:** (none)

**Query parameters:** (none)

---

### consecutive_40_win_seasons
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `consecutive-40-win-seasons`

**Full URL:** `https://records.nhl.com/site/api/consecutive-40-win-seasons`

**Path parameters:** (none)

**Query parameters:** (none)

---

### consecutive_50_goal_seasons
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `consecutive-50-goal-seasons`

**Full URL:** `https://records.nhl.com/site/api/consecutive-50-goal-seasons`

**Path parameters:** (none)

**Query parameters:** (none)

---

### consecutive_60_goal_seasons
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `consecutive-60-goal-seasons`

**Full URL:** `https://records.nhl.com/site/api/consecutive-60-goal-seasons`

**Path parameters:** (none)

**Query parameters:** (none)

---

### content_module_
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `{franchiseTricode}/content/module/{templateKey}`

**Full URL:** `https://records.nhl.com/site/api/{franchiseTricode}/content/module/{templateKey}`

**Path parameters:**
|name             |regex |
|:----------------|:-----|
|franchiseTricode |NA    |
|templateKey      |NA    |

**Query parameters (documented):**
|name       |type   |
|:----------|:------|
|cayenneExp |string |

---

### content_module_by_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `content-module-by-season/{templateKey}/{seasonId}`

**Full URL:** `https://records.nhl.com/site/api/content-module-by-season/{templateKey}/{seasonId}`

**Path parameters:**
|name        |regex |
|:-----------|:-----|
|templateKey |NA    |
|seasonId    |NA    |

**Query parameters:** (none)

---

### draft
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `draft`

**Full URL:** `https://records.nhl.com/site/api/draft`

**Path parameters:** (none)

**Query parameters:** (none)

---

### draft_amateurTeams
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `draft/amateurTeams`

**Full URL:** `https://records.nhl.com/site/api/draft/amateurTeams`

**Path parameters:** (none)

**Query parameters (documented):**
|name      |type |
|:---------|:----|
|draftYear |int  |

---

### draft_byTeam
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `draft/byTeam/{teamId}`

**Full URL:** `https://records.nhl.com/site/api/draft/byTeam/{teamId}`

**Path parameters:**
|name   |regex |
|:------|:-----|
|teamId |NA    |

**Query parameters:** (none)

---

### draft_countries
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `draft/countries`

**Full URL:** `https://records.nhl.com/site/api/draft/countries`

**Path parameters:** (none)

**Query parameters (documented):**
|name      |type |
|:---------|:----|
|draftYear |int  |

---

### draft_id
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `draft/{id}`

**Full URL:** `https://records.nhl.com/site/api/draft/{id}`

**Path parameters:**
|name |regex |
|:----|:-----|
|id   |NA    |

**Query parameters:** (none)

---

### draft_lottery_odds
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `draft-lottery-odds`

**Full URL:** `https://records.nhl.com/site/api/draft-lottery-odds`

**Path parameters:** (none)

**Query parameters:** (none)

---

### draft_lottery_odds_all_time
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `draft-lottery-odds-all-time`

**Full URL:** `https://records.nhl.com/site/api/draft-lottery-odds-all-time`

**Path parameters:** (none)

**Query parameters:** (none)

---

### draft_lottery_picks
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `draft-lottery-picks`

**Full URL:** `https://records.nhl.com/site/api/draft-lottery-picks`

**Path parameters:** (none)

**Query parameters:** (none)

---

### draft_master
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `draft-master`

**Full URL:** `https://records.nhl.com/site/api/draft-master`

**Path parameters:** (none)

**Query parameters:** (none)

---

### draft_prospect
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `draft-prospect`

**Full URL:** `https://records.nhl.com/site/api/draft-prospect`

**Path parameters:** (none)

**Query parameters:** (none)

---

### draft_prospect_id
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `draft-prospect/{id}`

**Full URL:** `https://records.nhl.com/site/api/draft-prospect/{id}`

**Path parameters:**
|name |regex |
|:----|:-----|
|id   |NA    |

**Query parameters:** (none)

---

### draft_roundNumbers
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `draft/roundNumbers`

**Full URL:** `https://records.nhl.com/site/api/draft/roundNumbers`

**Path parameters:** (none)

**Query parameters (documented):**
|name      |type |
|:---------|:----|
|draftYear |int  |

---

### draft_teams
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `draft/teams`

**Full URL:** `https://records.nhl.com/site/api/draft/teams`

**Path parameters:** (none)

**Query parameters (documented):**
|name      |type |
|:---------|:----|
|startYear |int  |
|endYear   |int  |

---

### expansion_draft_picks
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `expansion-draft-picks`

**Full URL:** `https://records.nhl.com/site/api/expansion-draft-picks`

**Path parameters:** (none)

**Query parameters:** (none)

---

### expansion_draft_rules
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `expansion-draft-rules`

**Full URL:** `https://records.nhl.com/site/api/expansion-draft-rules`

**Path parameters:** (none)

**Query parameters:** (none)

---

### fastest_2_goals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `fastest-2-goals`

**Full URL:** `https://records.nhl.com/site/api/fastest-2-goals`

**Path parameters:** (none)

**Query parameters:** (none)

---

### fastest_2_goals_both_teams
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `fastest-2-goals-both-teams`

**Full URL:** `https://records.nhl.com/site/api/fastest-2-goals-both-teams`

**Path parameters:** (none)

**Query parameters:** (none)

---

### fastest_2_goals_from_period_start_both_teams
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `fastest-2-goals-from-period-start-both-teams`

**Full URL:** `https://records.nhl.com/site/api/fastest-2-goals-from-period-start-both-teams`

**Path parameters:** (none)

**Query parameters:** (none)

---

### fastest_2_goals_from_period_start_one_skater
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `fastest-2-goals-from-period-start-one-skater`

**Full URL:** `https://records.nhl.com/site/api/fastest-2-goals-from-period-start-one-skater`

**Path parameters:** (none)

**Query parameters:** (none)

---

### fastest_2_goals_from_period_start_one_team
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `fastest-2-goals-from-period-start-one-team`

**Full URL:** `https://records.nhl.com/site/api/fastest-2-goals-from-period-start-one-team`

**Path parameters:** (none)

**Query parameters:** (none)

---

### fastest_2_goals_one_team
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `fastest-2-goals-one-team`

**Full URL:** `https://records.nhl.com/site/api/fastest-2-goals-one-team`

**Path parameters:** (none)

**Query parameters:** (none)

---

### fastest_3_assists
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `fastest-3-assists`

**Full URL:** `https://records.nhl.com/site/api/fastest-3-assists`

**Path parameters:** (none)

**Query parameters:** (none)

---

### fastest_3_goals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `fastest-3-goals`

**Full URL:** `https://records.nhl.com/site/api/fastest-3-goals`

**Path parameters:** (none)

**Query parameters:** (none)

---

### fastest_3_goals_both_teams
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `fastest-3-goals-both-teams`

**Full URL:** `https://records.nhl.com/site/api/fastest-3-goals-both-teams`

**Path parameters:** (none)

**Query parameters:** (none)

---

### fastest_3_goals_from_period_start_both_teams
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `fastest-3-goals-from-period-start-both-teams`

**Full URL:** `https://records.nhl.com/site/api/fastest-3-goals-from-period-start-both-teams`

**Path parameters:** (none)

**Query parameters:** (none)

---

### fastest_3_goals_from_period_start_one_team
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `fastest-3-goals-from-period-start-one-team`

**Full URL:** `https://records.nhl.com/site/api/fastest-3-goals-from-period-start-one-team`

**Path parameters:** (none)

**Query parameters:** (none)

---

### fastest_3_goals_one_team
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `fastest-3-goals-one-team`

**Full URL:** `https://records.nhl.com/site/api/fastest-3-goals-one-team`

**Path parameters:** (none)

**Query parameters:** (none)

---

### fastest_4_goals_both_teams
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `fastest-4-goals-both-teams`

**Full URL:** `https://records.nhl.com/site/api/fastest-4-goals-both-teams`

**Path parameters:** (none)

**Query parameters:** (none)

---

### fastest_4_goals_one_team
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `fastest-4-goals-one-team`

**Full URL:** `https://records.nhl.com/site/api/fastest-4-goals-one-team`

**Path parameters:** (none)

**Query parameters:** (none)

---

### fastest_5_goals_both_teams
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `fastest-5-goals-both-teams`

**Full URL:** `https://records.nhl.com/site/api/fastest-5-goals-both-teams`

**Path parameters:** (none)

**Query parameters:** (none)

---

### fastest_5_goals_one_team
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `fastest-5-goals-one-team`

**Full URL:** `https://records.nhl.com/site/api/fastest-5-goals-one-team`

**Path parameters:** (none)

**Query parameters:** (none)

---

### fastest_6_goals_both_teams
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `fastest-6-goals-both-teams`

**Full URL:** `https://records.nhl.com/site/api/fastest-6-goals-both-teams`

**Path parameters:** (none)

**Query parameters:** (none)

---

### fastest_goals_start_of_period
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `fastest-goals-start-of-period`

**Full URL:** `https://records.nhl.com/site/api/fastest-goals-start-of-period`

**Path parameters:** (none)

**Query parameters:** (none)

---

### franchise
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `franchise`

**Full URL:** `https://records.nhl.com/site/api/franchise`

**Path parameters:** (none)

**Query parameters:** (none)

---

### franchise_all_time_game_7_record
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `franchise-all-time-game-7-record`

**Full URL:** `https://records.nhl.com/site/api/franchise-all-time-game-7-record`

**Path parameters:** (none)

**Query parameters:** (none)

---

### franchise_all_time_overtime_record
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `franchise-all-time-overtime-record`

**Full URL:** `https://records.nhl.com/site/api/franchise-all-time-overtime-record`

**Path parameters:** (none)

**Query parameters:** (none)

---

### franchise_detail
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `franchise-detail`

**Full URL:** `https://records.nhl.com/site/api/franchise-detail`

**Path parameters:** (none)

**Query parameters:** (none)

---

### franchise_home_point_streak_vs_franchise
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `franchise-home-point-streak-vs-franchise`

**Full URL:** `https://records.nhl.com/site/api/franchise-home-point-streak-vs-franchise`

**Path parameters:** (none)

**Query parameters:** (none)

---

### franchise_home_win_streak_vs_franchise
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `franchise-home-win-streak-vs-franchise`

**Full URL:** `https://records.nhl.com/site/api/franchise-home-win-streak-vs-franchise`

**Path parameters:** (none)

**Query parameters:** (none)

---

### franchise_playoff_appearances
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `franchise-playoff-appearances`

**Full URL:** `https://records.nhl.com/site/api/franchise-playoff-appearances`

**Path parameters:** (none)

**Query parameters:** (none)

---

### franchise_playoff_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `franchise-playoff-streak`

**Full URL:** `https://records.nhl.com/site/api/franchise-playoff-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### franchise_point_streak_vs_franchise
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `franchise-point-streak-vs-franchise`

**Full URL:** `https://records.nhl.com/site/api/franchise-point-streak-vs-franchise`

**Path parameters:** (none)

**Query parameters:** (none)

---

### franchise_road_point_streak_vs_franchise
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `franchise-road-point-streak-vs-franchise`

**Full URL:** `https://records.nhl.com/site/api/franchise-road-point-streak-vs-franchise`

**Path parameters:** (none)

**Query parameters:** (none)

---

### franchise_road_win_streak_vs_franchise
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `franchise-road-win-streak-vs-franchise`

**Full URL:** `https://records.nhl.com/site/api/franchise-road-win-streak-vs-franchise`

**Path parameters:** (none)

**Query parameters:** (none)

---

### franchise_season_opener_standings
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `franchise-season-opener-standings`

**Full URL:** `https://records.nhl.com/site/api/franchise-season-opener-standings`

**Path parameters:** (none)

**Query parameters:** (none)

---

### franchise_season_results
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `franchise-season-results`

**Full URL:** `https://records.nhl.com/site/api/franchise-season-results`

**Path parameters:** (none)

**Query parameters:** (none)

---

### franchise_stanley_cup_final_appearance_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `franchise-stanley-cup-final-appearance-streak`

**Full URL:** `https://records.nhl.com/site/api/franchise-stanley-cup-final-appearance-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### franchise_stanley_cup_final_win_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `franchise-stanley-cup-final-win-streak`

**Full URL:** `https://records.nhl.com/site/api/franchise-stanley-cup-final-win-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### franchise_team_totals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `franchise-team-totals`

**Full URL:** `https://records.nhl.com/site/api/franchise-team-totals`

**Path parameters:** (none)

**Query parameters:** (none)

---

### franchise_totals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `franchise-totals`

**Full URL:** `https://records.nhl.com/site/api/franchise-totals`

**Path parameters:** (none)

**Query parameters:** (none)

---

### franchise_win_streak_vs_franchise
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `franchise-win-streak-vs-franchise`

**Full URL:** `https://records.nhl.com/site/api/franchise-win-streak-vs-franchise`

**Path parameters:** (none)

**Query parameters:** (none)

---

### game_winning_goals_stanley_cup
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `game-winning-goals-stanley-cup`

**Full URL:** `https://records.nhl.com/site/api/game-winning-goals-stanley-cup`

**Path parameters:** (none)

**Query parameters:** (none)

---

### games_played_active_streak_skaters
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `games-played-active-streak-skaters`

**Full URL:** `https://records.nhl.com/site/api/games-played-active-streak-skaters`

**Path parameters:** (none)

**Query parameters:** (none)

---

### games_played_streak_goalies
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `games-played-streak-goalies`

**Full URL:** `https://records.nhl.com/site/api/games-played-streak-goalies`

**Path parameters:** (none)

**Query parameters:** (none)

---

### games_played_streak_skaters
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `games-played-streak-skaters`

**Full URL:** `https://records.nhl.com/site/api/games-played-streak-skaters`

**Path parameters:** (none)

**Query parameters:** (none)

---

### games_shutout_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `games-shutout-streak`

**Full URL:** `https://records.nhl.com/site/api/games-shutout-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### general_manager
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `general-manager`

**Full URL:** `https://records.nhl.com/site/api/general-manager`

**Path parameters:** (none)

**Query parameters:** (none)

---

### general_manager_career_records
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `general-manager-career-records`

**Full URL:** `https://records.nhl.com/site/api/general-manager-career-records`

**Path parameters:** (none)

**Query parameters:** (none)

---

### general_manager_career_records_regular_plus_playoffs
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `general-manager-career-records-regular-plus-playoffs`

**Full URL:** `https://records.nhl.com/site/api/general-manager-career-records-regular-plus-playoffs`

**Path parameters:** (none)

**Query parameters:** (none)

---

### general_manager_franchise_records
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `general-manager-franchise-records`

**Full URL:** `https://records.nhl.com/site/api/general-manager-franchise-records`

**Path parameters:** (none)

**Query parameters:** (none)

---

### general_manager_franchise_records_regular_plus_playoffs
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `general-manager-franchise-records-regular-plus-playoffs`

**Full URL:** `https://records.nhl.com/site/api/general-manager-franchise-records-regular-plus-playoffs`

**Path parameters:** (none)

**Query parameters:** (none)

---

### general_manager_franchise_season_records
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `general-manager-franchise-season-records`

**Full URL:** `https://records.nhl.com/site/api/general-manager-franchise-season-records`

**Path parameters:** (none)

**Query parameters:** (none)

---

### general_manager_id
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `general-manager/{id}`

**Full URL:** `https://records.nhl.com/site/api/general-manager/{id}`

**Path parameters:**
|name |regex |
|:----|:-----|
|id   |NA    |

**Query parameters:** (none)

---

### general_manager_playoff_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `general-manager-playoff-streak`

**Full URL:** `https://records.nhl.com/site/api/general-manager-playoff-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### general_manager_stanley_cup_final_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `general-manager-stanley-cup-final-streak`

**Full URL:** `https://records.nhl.com/site/api/general-manager-stanley-cup-final-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_career_scoring
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-career-scoring`

**Full URL:** `https://records.nhl.com/site/api/goalie-career-scoring`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_career_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-career-stats`

**Full URL:** `https://records.nhl.com/site/api/goalie-career-stats`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_career_stats_incl_playoffs
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie_career_stats_incl_playoffs`

**Full URL:** `https://records.nhl.com/site/api/goalie_career_stats_incl_playoffs`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_career_totals_by_franchise
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-career-totals-by-franchise`

**Full URL:** `https://records.nhl.com/site/api/goalie-career-totals-by-franchise`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_game_scoring
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-game-scoring`

**Full URL:** `https://records.nhl.com/site/api/goalie-game-scoring`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_game_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-game-stats`

**Full URL:** `https://records.nhl.com/site/api/goalie-game-stats`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_home_point_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-home-point-streak`

**Full URL:** `https://records.nhl.com/site/api/goalie-home-point-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_home_win_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-home-win-streak`

**Full URL:** `https://records.nhl.com/site/api/goalie-home-win-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_outdoor_totals_career
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-outdoor-totals-career`

**Full URL:** `https://records.nhl.com/site/api/goalie-outdoor-totals-career`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_outdoor_totals_game
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-outdoor-totals-game`

**Full URL:** `https://records.nhl.com/site/api/goalie-outdoor-totals-game`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_outdoor_totals_period
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-outdoor-totals-period`

**Full URL:** `https://records.nhl.com/site/api/goalie-outdoor-totals-period`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_playoff_clinching_game
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-playoff-clinching-game`

**Full URL:** `https://records.nhl.com/site/api/goalie-playoff-clinching-game`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_playoff_clinching_game_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-playoff-clinching-game-season`

**Full URL:** `https://records.nhl.com/site/api/goalie-playoff-clinching-game-season`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_playoff_clinching_game_series
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-playoff-clinching-game-series`

**Full URL:** `https://records.nhl.com/site/api/goalie-playoff-clinching-game-series`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_playoff_clinching_game_totals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-playoff-clinching-game-totals`

**Full URL:** `https://records.nhl.com/site/api/goalie-playoff-clinching-game-totals`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_playoff_elimination_game
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-playoff-elimination-game`

**Full URL:** `https://records.nhl.com/site/api/goalie-playoff-elimination-game`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_playoff_elimination_game_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-playoff-elimination-game-season`

**Full URL:** `https://records.nhl.com/site/api/goalie-playoff-elimination-game-season`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_playoff_elimination_game_series
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-playoff-elimination-game-series`

**Full URL:** `https://records.nhl.com/site/api/goalie-playoff-elimination-game-series`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_playoff_elimination_game_totals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-playoff-elimination-game-totals`

**Full URL:** `https://records.nhl.com/site/api/goalie-playoff-elimination-game-totals`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_playoff_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-playoff-streak`

**Full URL:** `https://records.nhl.com/site/api/goalie-playoff-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_playoff_win_streak_multiple_seasons
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-playoff-win-streak-multiple-seasons`

**Full URL:** `https://records.nhl.com/site/api/goalie-playoff-win-streak-multiple-seasons`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_point_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-point-streak`

**Full URL:** `https://records.nhl.com/site/api/goalie-point-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_road_point_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-road-point-streak`

**Full URL:** `https://records.nhl.com/site/api/goalie-road-point-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_road_win_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-road-win-streak`

**Full URL:** `https://records.nhl.com/site/api/goalie-road-win-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_scf_career
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-scf-career`

**Full URL:** `https://records.nhl.com/site/api/goalie-scf-career`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_scf_game
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-scf-game`

**Full URL:** `https://records.nhl.com/site/api/goalie-scf-game`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_scf_period
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-scf-period`

**Full URL:** `https://records.nhl.com/site/api/goalie-scf-period`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_scf_series
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-scf-series`

**Full URL:** `https://records.nhl.com/site/api/goalie-scf-series`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_scf_series_shutout_sequence
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-scf-series-shutout-sequence`

**Full URL:** `https://records.nhl.com/site/api/goalie-scf-series-shutout-sequence`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_scf_series_shutout_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-scf-series-shutout-streak`

**Full URL:** `https://records.nhl.com/site/api/goalie-scf-series-shutout-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_scf_shutout_sequence_multiple_seasons
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-scf-shutout-sequence-multiple-seasons`

**Full URL:** `https://records.nhl.com/site/api/goalie-scf-shutout-sequence-multiple-seasons`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_scf_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-scf-streak`

**Full URL:** `https://records.nhl.com/site/api/goalie-scf-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_scf_win_streak_multiple_seasons
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-scf-win-streak-multiple-seasons`

**Full URL:** `https://records.nhl.com/site/api/goalie-scf-win-streak-multiple-seasons`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_season_scoring
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-season-scoring`

**Full URL:** `https://records.nhl.com/site/api/goalie-season-scoring`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_season_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-season-stats`

**Full URL:** `https://records.nhl.com/site/api/goalie-season-stats`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_season_stats_incl_playoffs
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie_season_stats_incl_playoffs`

**Full URL:** `https://records.nhl.com/site/api/goalie_season_stats_incl_playoffs`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_shutout_games_streak_playoffs
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-shutout-games-streak-playoffs`

**Full URL:** `https://records.nhl.com/site/api/goalie-shutout-games-streak-playoffs`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_shutout_games_streak_regular_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-shutout-games-streak-regular-season`

**Full URL:** `https://records.nhl.com/site/api/goalie-shutout-games-streak-regular-season`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_shutout_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-shutout-streak`

**Full URL:** `https://records.nhl.com/site/api/goalie-shutout-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-stats`

**Full URL:** `https://records.nhl.com/site/api/goalie-stats`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_undefeated_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-undefeated-streak`

**Full URL:** `https://records.nhl.com/site/api/goalie-undefeated-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_undefeated_streak_first_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-undefeated-streak-first-season`

**Full URL:** `https://records.nhl.com/site/api/goalie-undefeated-streak-first-season`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_win_plateaus
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-win-plateaus`

**Full URL:** `https://records.nhl.com/site/api/goalie-win-plateaus`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_win_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-win-streak`

**Full URL:** `https://records.nhl.com/site/api/goalie-win-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_youngest_shutouts
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-youngest-shutouts`

**Full URL:** `https://records.nhl.com/site/api/goalie-youngest-shutouts`

**Path parameters:** (none)

**Query parameters:** (none)

---

### goalie_youngest_winners
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-youngest-winners`

**Full URL:** `https://records.nhl.com/site/api/goalie-youngest-winners`

**Path parameters:** (none)

**Query parameters:** (none)

---

### hof_office
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `hof/office`

**Full URL:** `https://records.nhl.com/site/api/hof/office`

**Path parameters:** (none)

**Query parameters:** (none)

---

### hof_office_officeId
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `hof/office/{officeId}`

**Full URL:** `https://records.nhl.com/site/api/hof/office/{officeId}`

**Path parameters:**
|name     |regex |
|:--------|:-----|
|officeId |NA    |

**Query parameters:** (none)

---

### hof_players
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `hof/players`

**Full URL:** `https://records.nhl.com/site/api/hof/players`

**Path parameters:** (none)

**Query parameters:** (none)

---

### hof_players_officeId
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `hof/players/{officeId}`

**Full URL:** `https://records.nhl.com/site/api/hof/players/{officeId}`

**Path parameters:**
|name     |regex |
|:--------|:-----|
|officeId |NA    |

**Query parameters:** (none)

---

### home_team_record
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `home-team-record`

**Full URL:** `https://records.nhl.com/site/api/home-team-record`

**Path parameters:** (none)

**Query parameters:** (none)

---

### international_both_teams_game_record
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-both-teams-game-record`

**Full URL:** `https://records.nhl.com/site/api/international-both-teams-game-record`

**Path parameters:** (none)

**Query parameters:** (none)

---

### international_both_teams_period_record
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-both-teams-period-record`

**Full URL:** `https://records.nhl.com/site/api/international-both-teams-period-record`

**Path parameters:** (none)

**Query parameters:** (none)

---

### international_fastest_skater_goals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-fastest-skater-goals`

**Full URL:** `https://records.nhl.com/site/api/international-fastest-skater-goals`

**Path parameters:** (none)

**Query parameters:** (none)

---

### international_fastest_three_goals_both_teams
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-fastest-three-goals-both-teams`

**Full URL:** `https://records.nhl.com/site/api/international-fastest-three-goals-both-teams`

**Path parameters:** (none)

**Query parameters:** (none)

---

### international_fastest_three_goals_one_skater
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-fastest-three-goals-one-skater`

**Full URL:** `https://records.nhl.com/site/api/international-fastest-three-goals-one-skater`

**Path parameters:** (none)

**Query parameters:** (none)

---

### international_fastest_three_goals_one_team
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-fastest-three-goals-one-team`

**Full URL:** `https://records.nhl.com/site/api/international-fastest-three-goals-one-team`

**Path parameters:** (none)

**Query parameters:** (none)

---

### international_fastest_two_goals_both_teams
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-fastest-two-goals-both-teams`

**Full URL:** `https://records.nhl.com/site/api/international-fastest-two-goals-both-teams`

**Path parameters:** (none)

**Query parameters:** (none)

---

### international_fastest_two_goals_one_skater
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-fastest-two-goals-one-skater`

**Full URL:** `https://records.nhl.com/site/api/international-fastest-two-goals-one-skater`

**Path parameters:** (none)

**Query parameters:** (none)

---

### international_fastest_two_goals_one_team
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-fastest-two-goals-one-team`

**Full URL:** `https://records.nhl.com/site/api/international-fastest-two-goals-one-team`

**Path parameters:** (none)

**Query parameters:** (none)

---

### international_goaltender_career_record
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-goaltender-career-record`

**Full URL:** `https://records.nhl.com/site/api/international-goaltender-career-record`

**Path parameters:** (none)

**Query parameters:** (none)

---

### international_goaltender_game_record
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-goaltender-game-record`

**Full URL:** `https://records.nhl.com/site/api/international-goaltender-game-record`

**Path parameters:** (none)

**Query parameters:** (none)

---

### international_goaltender_period_record
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-goaltender-period-record`

**Full URL:** `https://records.nhl.com/site/api/international-goaltender-period-record`

**Path parameters:** (none)

**Query parameters:** (none)

---

### international_goaltender_tournament_record
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-goaltender-tournament-record`

**Full URL:** `https://records.nhl.com/site/api/international-goaltender-tournament-record`

**Path parameters:** (none)

**Query parameters:** (none)

---

### international_playoff_series_details
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-playoff-series-details`

**Full URL:** `https://records.nhl.com/site/api/international-playoff-series-details`

**Path parameters:** (none)

**Query parameters:** (none)

---

### international_skater_career_record
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-skater-career-record`

**Full URL:** `https://records.nhl.com/site/api/international-skater-career-record`

**Path parameters:** (none)

**Query parameters:** (none)

---

### international_skater_game_record
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-skater-game-record`

**Full URL:** `https://records.nhl.com/site/api/international-skater-game-record`

**Path parameters:** (none)

**Query parameters:** (none)

---

### international_skater_penalty_shots
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-skater-penalty-shots`

**Full URL:** `https://records.nhl.com/site/api/international-skater-penalty-shots`

**Path parameters:** (none)

**Query parameters:** (none)

---

### international_skater_period_record
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-skater-period-record`

**Full URL:** `https://records.nhl.com/site/api/international-skater-period-record`

**Path parameters:** (none)

**Query parameters:** (none)

---

### international_skater_short_handed_goals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-skater-short-handed-goals`

**Full URL:** `https://records.nhl.com/site/api/international-skater-short-handed-goals`

**Path parameters:** (none)

**Query parameters:** (none)

---

### international_skater_tournament_record
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-skater-tournament-record`

**Full URL:** `https://records.nhl.com/site/api/international-skater-tournament-record`

**Path parameters:** (none)

**Query parameters:** (none)

---

### international_team_all_time_record
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-team-all-time-record`

**Full URL:** `https://records.nhl.com/site/api/international-team-all-time-record`

**Path parameters:** (none)

**Query parameters:** (none)

---

### international_team_game_record
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-team-game-record`

**Full URL:** `https://records.nhl.com/site/api/international-team-game-record`

**Path parameters:** (none)

**Query parameters:** (none)

---

### international_team_period_record
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-team-period-record`

**Full URL:** `https://records.nhl.com/site/api/international-team-period-record`

**Path parameters:** (none)

**Query parameters:** (none)

---

### international_team_tournament_record
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-team-tournament-record`

**Full URL:** `https://records.nhl.com/site/api/international-team-tournament-record`

**Path parameters:** (none)

**Query parameters:** (none)

---

### international_tournament_winner
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-tournament-winner`

**Full URL:** `https://records.nhl.com/site/api/international-tournament-winner`

**Path parameters:** (none)

**Query parameters:** (none)

---

### league_playoff_year_totals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `league-playoff-year-totals`

**Full URL:** `https://records.nhl.com/site/api/league-playoff-year-totals`

**Path parameters:** (none)

**Query parameters:** (none)

---

### logo
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `logo`

**Full URL:** `https://records.nhl.com/site/api/logo`

**Path parameters:** (none)

**Query parameters:** (none)

---

### media_three_star
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `media-three-star`

**Full URL:** `https://records.nhl.com/site/api/media-three-star`

**Path parameters:** (none)

**Query parameters:** (none)

---

### menu
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `{franchiseTricode}/menu`

**Full URL:** `https://records.nhl.com/site/api/{franchiseTricode}/menu`

**Path parameters:**
|name             |regex |
|:----------------|:-----|
|franchiseTricode |NA    |

**Query parameters:** (none)

---

### meta_data
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `meta-data/{path}`

**Full URL:** `https://records.nhl.com/site/api/meta-data/{path}`

**Path parameters:**
|name |regex |
|:----|:-----|
|path |.*    |

**Query parameters (documented):**
|name   |type   |
|:------|:------|
|season |string |

---

### milestone_100_point_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `milestone-100-point-season`

**Full URL:** `https://records.nhl.com/site/api/milestone-100-point-season`

**Path parameters:** (none)

**Query parameters:** (none)

---

### milestone_100_point_season_id
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `milestone-100-point-season/{id}`

**Full URL:** `https://records.nhl.com/site/api/milestone-100-point-season/{id}`

**Path parameters:**
|name |regex |
|:----|:-----|
|id   |NA    |

**Query parameters:** (none)

---

### milestone_1000_point_career
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `milestone-1000-point-career`

**Full URL:** `https://records.nhl.com/site/api/milestone-1000-point-career`

**Path parameters:** (none)

**Query parameters:** (none)

---

### milestone_1000_point_career_id
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `milestone-1000-point-career/{id}`

**Full URL:** `https://records.nhl.com/site/api/milestone-1000-point-career/{id}`

**Path parameters:**
|name |regex |
|:----|:-----|
|id   |NA    |

**Query parameters:** (none)

---

### milestone_5_goal_game
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `milestone-5-goal-game`

**Full URL:** `https://records.nhl.com/site/api/milestone-5-goal-game`

**Path parameters:** (none)

**Query parameters:** (none)

---

### milestone_5_goal_game_id
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `milestone-5-goal-game/{id}`

**Full URL:** `https://records.nhl.com/site/api/milestone-5-goal-game/{id}`

**Path parameters:**
|name |regex |
|:----|:-----|
|id   |NA    |

**Query parameters:** (none)

---

### milestone_50_goal_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `milestone-50-goal-season`

**Full URL:** `https://records.nhl.com/site/api/milestone-50-goal-season`

**Path parameters:** (none)

**Query parameters:** (none)

---

### milestone_50_goal_season_id
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `milestone-50-goal-season/{id}`

**Full URL:** `https://records.nhl.com/site/api/milestone-50-goal-season/{id}`

**Path parameters:**
|name |regex |
|:----|:-----|
|id   |NA    |

**Query parameters:** (none)

---

### milestone_500_goal_career
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `milestone-500-goal-career`

**Full URL:** `https://records.nhl.com/site/api/milestone-500-goal-career`

**Path parameters:** (none)

**Query parameters:** (none)

---

### milestone_500_goal_career_id
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `milestone-500-goal-career/{id}`

**Full URL:** `https://records.nhl.com/site/api/milestone-500-goal-career/{id}`

**Path parameters:**
|name |regex |
|:----|:-----|
|id   |NA    |

**Query parameters:** (none)

---

### milestone_tracker
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `milestone-tracker`

**Full URL:** `https://records.nhl.com/site/api/milestone-tracker`

**Path parameters:** (none)

**Query parameters:** (none)

---

### neutral_site_standings
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `neutral-site-standings`

**Full URL:** `https://records.nhl.com/site/api/neutral-site-standings`

**Path parameters:** (none)

**Query parameters:** (none)

---

### non_shutout_streak_incl_playoffs
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `non-shutout-streak-incl-playoffs`

**Full URL:** `https://records.nhl.com/site/api/non-shutout-streak-incl-playoffs`

**Path parameters:** (none)

**Query parameters:** (none)

---

### officials
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `officials`

**Full URL:** `https://records.nhl.com/site/api/officials`

**Path parameters:** (none)

**Query parameters:** (none)

---

### officials_type
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `officials/{type}`

**Full URL:** `https://records.nhl.com/site/api/officials/{type}`

**Path parameters:**
|name |regex |
|:----|:-----|
|type |NA    |

**Query parameters:** (none)

---

### penalty_shots
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `penalty-shots`

**Full URL:** `https://records.nhl.com/site/api/penalty-shots`

**Path parameters:** (none)

**Query parameters:** (none)

---

### phwa_all_star_team
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `phwa-all-star-team`

**Full URL:** `https://records.nhl.com/site/api/phwa-all-star-team`

**Path parameters:** (none)

**Query parameters:** (none)

---

### ping
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `ping`

**Full URL:** `https://records.nhl.com/site/api/ping`

**Path parameters:** (none)

**Query parameters:** (none)

---

### player
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `player`

**Full URL:** `https://records.nhl.com/site/api/player`

**Path parameters:** (none)

**Query parameters:** (none)

---

### player_byTeam
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `player/byTeam/{teamId}`

**Full URL:** `https://records.nhl.com/site/api/player/byTeam/{teamId}`

**Path parameters:**
|name   |regex |
|:------|:-----|
|teamId |NA    |

**Query parameters:** (none)

---

### player_game_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `player-game-stats`

**Full URL:** `https://records.nhl.com/site/api/player-game-stats`

**Path parameters:** (none)

**Query parameters:** (none)

---

### player_id
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `player/{id}`

**Full URL:** `https://records.nhl.com/site/api/player/{id}`

**Path parameters:**
|name |regex |
|:----|:-----|
|id   |NA    |

**Query parameters:** (none)

---

### player_stanley_cup_wins
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `player-stanley-cup-wins`

**Full URL:** `https://records.nhl.com/site/api/player-stanley-cup-wins`

**Path parameters:** (none)

**Query parameters:** (none)

---

### player_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `player-stats`

**Full URL:** `https://records.nhl.com/site/api/player-stats`

**Path parameters:** (none)

**Query parameters:** (none)

---

### playoff_captains
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `playoff-captains`

**Full URL:** `https://records.nhl.com/site/api/playoff-captains`

**Path parameters:** (none)

**Query parameters:** (none)

---

### playoff_franchise_game_by_game_records
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `playoff-franchise-game-by-game-records`

**Full URL:** `https://records.nhl.com/site/api/playoff-franchise-game-by-game-records`

**Path parameters:** (none)

**Query parameters:** (none)

---

### playoff_franchise_vs_team
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `playoff-franchise-vs-team`

**Full URL:** `https://records.nhl.com/site/api/playoff-franchise-vs-team`

**Path parameters:** (none)

**Query parameters:** (none)

---

### playoff_game_overtime_scoring
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `playoff-game-overtime-scoring`

**Full URL:** `https://records.nhl.com/site/api/playoff-game-overtime-scoring`

**Path parameters:** (none)

**Query parameters:** (none)

---

### playoff_goalie_series_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `playoff-goalie-series-stats`

**Full URL:** `https://records.nhl.com/site/api/playoff-goalie-series-stats`

**Path parameters:** (none)

**Query parameters:** (none)

---

### playoff_round_robin_game
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `playoff-round-robin-game`

**Full URL:** `https://records.nhl.com/site/api/playoff-round-robin-game`

**Path parameters:** (none)

**Query parameters:** (none)

---

### playoff_series
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `playoff-series`

**Full URL:** `https://records.nhl.com/site/api/playoff-series`

**Path parameters:** (none)

**Query parameters:** (none)

---

### playoff_series_byFinal
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `playoff-series/byFinal`

**Full URL:** `https://records.nhl.com/site/api/playoff-series/byFinal`

**Path parameters:** (none)

**Query parameters:** (none)

---

### playoff_series_bySeason
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `playoff-series/bySeason/{seasonId}`

**Full URL:** `https://records.nhl.com/site/api/playoff-series/bySeason/{seasonId}`

**Path parameters:**
|name     |regex |
|:--------|:-----|
|seasonId |NA    |

**Query parameters:** (none)

---

### playoff_series_bySeries
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `playoff-series/bySeries/{seriesLetter}`

**Full URL:** `https://records.nhl.com/site/api/playoff-series/bySeries/{seriesLetter}`

**Path parameters:**
|name         |regex |
|:------------|:-----|
|seriesLetter |NA    |

**Query parameters:** (none)

---

### playoff_skater_series_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `playoff-skater-series-stats`

**Full URL:** `https://records.nhl.com/site/api/playoff-skater-series-stats`

**Path parameters:** (none)

**Query parameters:** (none)

---

### playoff_team_series_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `playoff-team-series-stats`

**Full URL:** `https://records.nhl.com/site/api/playoff-team-series-stats`

**Path parameters:** (none)

**Query parameters:** (none)

---

### playoff_team_series_stats_both_teams
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `playoff-team-series-stats-both-teams`

**Full URL:** `https://records.nhl.com/site/api/playoff-team-series-stats-both-teams`

**Path parameters:** (none)

**Query parameters:** (none)

---

### record_category
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `record-category`

**Full URL:** `https://records.nhl.com/site/api/record-category`

**Path parameters:** (none)

**Query parameters:** (none)

---

### record_detail
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `{franchiseTricode}/record-detail`

**Full URL:** `https://records.nhl.com/site/api/{franchiseTricode}/record-detail`

**Path parameters:**
|name             |regex |
|:----------------|:-----|
|franchiseTricode |NA    |

**Query parameters:** (none)

---

### record_meta_details
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `record-meta-details/{path}`

**Full URL:** `https://records.nhl.com/site/api/record-meta-details/{path}`

**Path parameters:**
|name |regex |
|:----|:-----|
|path |.*    |

**Query parameters:** (none)

---

### record_video_detail
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `record-video-detail`

**Full URL:** `https://records.nhl.com/site/api/record-video-detail`

**Path parameters:** (none)

**Query parameters:** (none)

---

### scf_appearances_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `scf-appearances-streak`

**Full URL:** `https://records.nhl.com/site/api/scf-appearances-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### scf_franchise_totals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `scf-franchise-totals`

**Full URL:** `https://records.nhl.com/site/api/scf-franchise-totals`

**Path parameters:** (none)

**Query parameters:** (none)

---

### scf_situational_records
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `scf-situational-records`

**Full URL:** `https://records.nhl.com/site/api/scf-situational-records`

**Path parameters:** (none)

**Query parameters:** (none)

---

### scf_team_totals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `scf-team-totals`

**Full URL:** `https://records.nhl.com/site/api/scf-team-totals`

**Path parameters:** (none)

**Query parameters:** (none)

---

### scoring_plateaus
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `scoring-plateaus`

**Full URL:** `https://records.nhl.com/site/api/scoring-plateaus`

**Path parameters:** (none)

**Query parameters:** (none)

---

### season_event
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `season/event`

**Full URL:** `https://records.nhl.com/site/api/season/event`

**Path parameters:** (none)

**Query parameters:** (none)

---

### season_event_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `season/event/games`

**Full URL:** `https://records.nhl.com/site/api/season/event/games`

**Path parameters:** (none)

**Query parameters:** (none)

---

### season_event_offseason_games_outside_north_america
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `season/event/offseason-games-outside-north-america`

**Full URL:** `https://records.nhl.com/site/api/season/event/offseason-games-outside-north-america`

**Path parameters:** (none)

**Query parameters:** (none)

---

### season_event_preseason_games_outside_north_america
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `season/event/preseason-games-outside-north-america`

**Full URL:** `https://records.nhl.com/site/api/season/event/preseason-games-outside-north-america`

**Path parameters:** (none)

**Query parameters:** (none)

---

### series_situational_records
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `series-situational-records`

**Full URL:** `https://records.nhl.com/site/api/series-situational-records`

**Path parameters:** (none)

**Query parameters:** (none)

---

### shootout_goalie_career
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `shootout-goalie-career`

**Full URL:** `https://records.nhl.com/site/api/shootout-goalie-career`

**Path parameters:** (none)

**Query parameters:** (none)

---

### shootout_goalie_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `shootout-goalie-season`

**Full URL:** `https://records.nhl.com/site/api/shootout-goalie-season`

**Path parameters:** (none)

**Query parameters:** (none)

---

### shootout_skaters_career
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `shootout-skaters-career`

**Full URL:** `https://records.nhl.com/site/api/shootout-skaters-career`

**Path parameters:** (none)

**Query parameters:** (none)

---

### shootout_skaters_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `shootout-skaters-season`

**Full URL:** `https://records.nhl.com/site/api/shootout-skaters-season`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_assist_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-assist-streak`

**Full URL:** `https://records.nhl.com/site/api/skater-assist-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_assist_streak_start_of_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-assist-streak-start-of-season`

**Full URL:** `https://records.nhl.com/site/api/skater-assist-streak-start-of-season`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_career_scoring_by_position
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-career-scoring-by-position`

**Full URL:** `https://records.nhl.com/site/api/skater-career-scoring-by-position`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_career_scoring_playoffs
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-career-scoring-playoffs`

**Full URL:** `https://records.nhl.com/site/api/skater-career-scoring-playoffs`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_career_scoring_regular_plus_playoffs
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-career-scoring-regular-plus-playoffs`

**Full URL:** `https://records.nhl.com/site/api/skater-career-scoring-regular-plus-playoffs`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_career_scoring_regular_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-career-scoring-regular-season`

**Full URL:** `https://records.nhl.com/site/api/skater-career-scoring-regular-season`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_first_game_scoring
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-first-game-scoring`

**Full URL:** `https://records.nhl.com/site/api/skater-first-game-scoring`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_first_season_game_scoring
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-first-season-game-scoring`

**Full URL:** `https://records.nhl.com/site/api/skater-first-season-game-scoring`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_franchise_totals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-franchise-totals`

**Full URL:** `https://records.nhl.com/site/api/skater-franchise-totals`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_game_assists
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-game-assists`

**Full URL:** `https://records.nhl.com/site/api/skater-game-assists`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_game_goals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-game-goals`

**Full URL:** `https://records.nhl.com/site/api/skater-game-goals`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_game_penalties
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-game-penalties`

**Full URL:** `https://records.nhl.com/site/api/skater-game-penalties`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_game_penalty_minutes
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-game-penalty-minutes`

**Full URL:** `https://records.nhl.com/site/api/skater-game-penalty-minutes`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_game_points
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-game-points`

**Full URL:** `https://records.nhl.com/site/api/skater-game-points`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_game_power_play_goals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-game-power-play-goals`

**Full URL:** `https://records.nhl.com/site/api/skater-game-power-play-goals`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_game_shorthanded_goals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-game-shorthanded-goals`

**Full URL:** `https://records.nhl.com/site/api/skater-game-shorthanded-goals`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_game_shots
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-game-shots`

**Full URL:** `https://records.nhl.com/site/api/skater-game-shots`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_goal_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-goal-streak`

**Full URL:** `https://records.nhl.com/site/api/skater-goal-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_latest_game_tying_goal
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-latest-game-tying-goal`

**Full URL:** `https://records.nhl.com/site/api/skater-latest-game-tying-goal`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_latest_go_ahead_goal
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-latest-go-ahead-goal`

**Full URL:** `https://records.nhl.com/site/api/skater-latest-go-ahead-goal`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_latest_goals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-latest-goals`

**Full URL:** `https://records.nhl.com/site/api/skater-latest-goals`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_latest_series_clinching_goal
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-latest-series-clinching-goal`

**Full URL:** `https://records.nhl.com/site/api/skater-latest-series-clinching-goal`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_most_goals_1st_50_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-most-goals-1st-50-games`

**Full URL:** `https://records.nhl.com/site/api/skater-most-goals-1st-50-games`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_multi_assist_games_career
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-multi-assist-games-career`

**Full URL:** `https://records.nhl.com/site/api/skater-multi-assist-games-career`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_multi_assist_games_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-multi-assist-games-season`

**Full URL:** `https://records.nhl.com/site/api/skater-multi-assist-games-season`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_multi_goal_games_career
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-multi-goal-games-career`

**Full URL:** `https://records.nhl.com/site/api/skater-multi-goal-games-career`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_multi_goal_games_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-multi-goal-games-season`

**Full URL:** `https://records.nhl.com/site/api/skater-multi-goal-games-season`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_multi_point_games_career
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-multi-point-games-career`

**Full URL:** `https://records.nhl.com/site/api/skater-multi-point-games-career`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_multi_point_games_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-multi-point-games-season`

**Full URL:** `https://records.nhl.com/site/api/skater-multi-point-games-season`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_multipoint_games_career_by_position
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-multipoint-games-career-by-position`

**Full URL:** `https://records.nhl.com/site/api/skater-multipoint-games-career-by-position`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_outdoor_fastest_goal_from_period_start
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-outdoor-fastest-goal-from-period-start`

**Full URL:** `https://records.nhl.com/site/api/skater-outdoor-fastest-goal-from-period-start`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_outdoor_totals_career
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-outdoor-totals-career`

**Full URL:** `https://records.nhl.com/site/api/skater-outdoor-totals-career`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_outdoor_totals_game
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-outdoor-totals-game`

**Full URL:** `https://records.nhl.com/site/api/skater-outdoor-totals-game`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_outdoor_totals_period
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-outdoor-totals-period`

**Full URL:** `https://records.nhl.com/site/api/skater-outdoor-totals-period`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_period_penalties
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-period-penalties`

**Full URL:** `https://records.nhl.com/site/api/skater-period-penalties`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_period_scoring
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-period-scoring`

**Full URL:** `https://records.nhl.com/site/api/skater-period-scoring`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_period_shots
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-period-shots`

**Full URL:** `https://records.nhl.com/site/api/skater-period-shots`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_playoff_clinching_game
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-playoff-clinching-game`

**Full URL:** `https://records.nhl.com/site/api/skater-playoff-clinching-game`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_playoff_clinching_game_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-playoff-clinching-game-season`

**Full URL:** `https://records.nhl.com/site/api/skater-playoff-clinching-game-season`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_playoff_clinching_game_series
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-playoff-clinching-game-series`

**Full URL:** `https://records.nhl.com/site/api/skater-playoff-clinching-game-series`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_playoff_clinching_game_totals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-playoff-clinching-game-totals`

**Full URL:** `https://records.nhl.com/site/api/skater-playoff-clinching-game-totals`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_playoff_elimination_game
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-playoff-elimination-game`

**Full URL:** `https://records.nhl.com/site/api/skater-playoff-elimination-game`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_playoff_elimination_game_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-playoff-elimination-game-season`

**Full URL:** `https://records.nhl.com/site/api/skater-playoff-elimination-game-season`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_playoff_elimination_game_series
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-playoff-elimination-game-series`

**Full URL:** `https://records.nhl.com/site/api/skater-playoff-elimination-game-series`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_playoff_elimination_game_totals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-playoff-elimination-game-totals`

**Full URL:** `https://records.nhl.com/site/api/skater-playoff-elimination-game-totals`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_playoff_scoring
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-playoff-scoring`

**Full URL:** `https://records.nhl.com/site/api/skater-playoff-scoring`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_playoff_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-playoff-streak`

**Full URL:** `https://records.nhl.com/site/api/skater-playoff-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_point_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-point-streak`

**Full URL:** `https://records.nhl.com/site/api/skater-point-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_point_streak_multiple_playoffs
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-point-streak-multiple-playoffs`

**Full URL:** `https://records.nhl.com/site/api/skater-point-streak-multiple-playoffs`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_point_streak_start_of_career
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-point-streak-start-of-career`

**Full URL:** `https://records.nhl.com/site/api/skater-point-streak-start-of-career`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_real_time_stats_career
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-real-time-stats-career`

**Full URL:** `https://records.nhl.com/site/api/skater-real-time-stats-career`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_real_time_stats_game_blocked_shots
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-real-time-stats-game-blocked-shots`

**Full URL:** `https://records.nhl.com/site/api/skater-real-time-stats-game-blocked-shots`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_real_time_stats_game_faceoffs
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-real-time-stats-game-faceoffs`

**Full URL:** `https://records.nhl.com/site/api/skater-real-time-stats-game-faceoffs`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_real_time_stats_game_giveaways
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-real-time-stats-game-giveaways`

**Full URL:** `https://records.nhl.com/site/api/skater-real-time-stats-game-giveaways`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_real_time_stats_game_hits
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-real-time-stats-game-hits`

**Full URL:** `https://records.nhl.com/site/api/skater-real-time-stats-game-hits`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_real_time_stats_game_missed_shots
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-real-time-stats-game-missed-shots`

**Full URL:** `https://records.nhl.com/site/api/skater-real-time-stats-game-missed-shots`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_real_time_stats_game_shifts
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-real-time-stats-game-shifts`

**Full URL:** `https://records.nhl.com/site/api/skater-real-time-stats-game-shifts`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_real_time_stats_game_takeaways
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-real-time-stats-game-takeaways`

**Full URL:** `https://records.nhl.com/site/api/skater-real-time-stats-game-takeaways`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_real_time_stats_game_time_on_ice
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-real-time-stats-game-time-on-ice`

**Full URL:** `https://records.nhl.com/site/api/skater-real-time-stats-game-time-on-ice`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_real_time_stats_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-real-time-stats-season`

**Full URL:** `https://records.nhl.com/site/api/skater-real-time-stats-season`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_regular_plus_playoff_scoring
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-regular-plus-playoff-scoring`

**Full URL:** `https://records.nhl.com/site/api/skater-regular-plus-playoff-scoring`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_regular_season_scoring
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-regular-season-scoring`

**Full URL:** `https://records.nhl.com/site/api/skater-regular-season-scoring`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_rookie_game_scoring
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-rookie-game-scoring`

**Full URL:** `https://records.nhl.com/site/api/skater-rookie-game-scoring`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_scf_career_scoring
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-scf-career-scoring`

**Full URL:** `https://records.nhl.com/site/api/skater-scf-career-scoring`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_scf_game_scoring
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-scf-game-scoring`

**Full URL:** `https://records.nhl.com/site/api/skater-scf-game-scoring`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_scf_series_scoring
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-scf-series-scoring`

**Full URL:** `https://records.nhl.com/site/api/skater-scf-series-scoring`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_scf_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-scf-streak`

**Full URL:** `https://records.nhl.com/site/api/skater-scf-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_youngest_3_point_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-youngest-3-point-games`

**Full URL:** `https://records.nhl.com/site/api/skater-youngest-3-point-games`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_youngest_4_point_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-youngest-4-point-games`

**Full URL:** `https://records.nhl.com/site/api/skater-youngest-4-point-games`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_youngest_5_point_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-youngest-5-point-games`

**Full URL:** `https://records.nhl.com/site/api/skater-youngest-5-point-games`

**Path parameters:** (none)

**Query parameters:** (none)

---

### skater_youngest_goal_scorers
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-youngest-goal-scorers`

**Full URL:** `https://records.nhl.com/site/api/skater-youngest-goal-scorers`

**Path parameters:** (none)

**Query parameters:** (none)

---

### special_event
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `special-event`

**Full URL:** `https://records.nhl.com/site/api/special-event`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team`

**Full URL:** `https://records.nhl.com/site/api/team`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_affiliate
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-affiliate`

**Full URL:** `https://records.nhl.com/site/api/team-affiliate`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_all_time_shootout_records
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-all-time-shootout-records`

**Full URL:** `https://records.nhl.com/site/api/team-all-time-shootout-records`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_by_game_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-by-game-stats`

**Full URL:** `https://records.nhl.com/site/api/team-by-game-stats`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_consecutive_series_won
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-consecutive-series-won`

**Full URL:** `https://records.nhl.com/site/api/team-consecutive-series-won`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_game_consecutive_goals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-game-consecutive-goals`

**Full URL:** `https://records.nhl.com/site/api/team-game-consecutive-goals`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_game_record_and_scoring
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-game-record-and-scoring`

**Full URL:** `https://records.nhl.com/site/api/team-game-record-and-scoring`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_game_record_and_scoring_both_teams
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-game-record-and-scoring-both-teams`

**Full URL:** `https://records.nhl.com/site/api/team-game-record-and-scoring-both-teams`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_non_shutout_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-non-shutout-streak`

**Full URL:** `https://records.nhl.com/site/api/team-non-shutout-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_outdoor_fastest_2_goals_from_period_start_one_team
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-outdoor-fastest-2-goals-from-period-start-one-team`

**Full URL:** `https://records.nhl.com/site/api/team-outdoor-fastest-2-goals-from-period-start-one-team`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_outdoor_fastest_2_goals_one_team
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-outdoor-fastest-2-goals-one-team`

**Full URL:** `https://records.nhl.com/site/api/team-outdoor-fastest-2-goals-one-team`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_outdoor_totals_career
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-outdoor-totals-career`

**Full URL:** `https://records.nhl.com/site/api/team-outdoor-totals-career`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_outdoor_totals_game_both_teams
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-outdoor-totals-game-both-teams`

**Full URL:** `https://records.nhl.com/site/api/team-outdoor-totals-game-both-teams`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_outdoor_totals_game_one_team
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-outdoor-totals-game-one-team`

**Full URL:** `https://records.nhl.com/site/api/team-outdoor-totals-game-one-team`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_outdoor_totals_period_both_teams
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-outdoor-totals-period-both-teams`

**Full URL:** `https://records.nhl.com/site/api/team-outdoor-totals-period-both-teams`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_outdoor_totals_period_one_team
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-outdoor-totals-period-one-team`

**Full URL:** `https://records.nhl.com/site/api/team-outdoor-totals-period-one-team`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_period_penalties
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-period-penalties`

**Full URL:** `https://records.nhl.com/site/api/team-period-penalties`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_period_scoring
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-period-scoring`

**Full URL:** `https://records.nhl.com/site/api/team-period-scoring`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_period_scoring_both_teams
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-period-scoring-both-teams`

**Full URL:** `https://records.nhl.com/site/api/team-period-scoring-both-teams`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_playoff_clinching_game
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-playoff-clinching-game`

**Full URL:** `https://records.nhl.com/site/api/team-playoff-clinching-game`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_playoff_clinching_game_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-playoff-clinching-game-season`

**Full URL:** `https://records.nhl.com/site/api/team-playoff-clinching-game-season`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_playoff_clinching_game_series
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-playoff-clinching-game-series`

**Full URL:** `https://records.nhl.com/site/api/team-playoff-clinching-game-series`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_playoff_clinching_game_totals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-playoff-clinching-game-totals`

**Full URL:** `https://records.nhl.com/site/api/team-playoff-clinching-game-totals`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_playoff_elimination_game
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-playoff-elimination-game`

**Full URL:** `https://records.nhl.com/site/api/team-playoff-elimination-game`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_playoff_elimination_game_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-playoff-elimination-game-season`

**Full URL:** `https://records.nhl.com/site/api/team-playoff-elimination-game-season`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_playoff_elimination_game_series
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-playoff-elimination-game-series`

**Full URL:** `https://records.nhl.com/site/api/team-playoff-elimination-game-series`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_playoff_elimination_game_totals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-playoff-elimination-game-totals`

**Full URL:** `https://records.nhl.com/site/api/team-playoff-elimination-game-totals`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_playoff_ot_period_scoring_both_teams
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-playoff-ot-period-scoring-both-teams`

**Full URL:** `https://records.nhl.com/site/api/team-playoff-ot-period-scoring-both-teams`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_playoff_ot_period_scoring_one_team
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-playoff-ot-period-scoring-one-team`

**Full URL:** `https://records.nhl.com/site/api/team-playoff-ot-period-scoring-one-team`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_playoff_ot_shot_totals_both_teams
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-playoff-ot-shot-totals-both-teams`

**Full URL:** `https://records.nhl.com/site/api/team-playoff-ot-shot-totals-both-teams`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_playoff_ot_shot_totals_one_team
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-playoff-ot-shot-totals-one-team`

**Full URL:** `https://records.nhl.com/site/api/team-playoff-ot-shot-totals-one-team`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_playoff_streak_multiple_seasons
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-playoff-streak-multiple-seasons`

**Full URL:** `https://records.nhl.com/site/api/team-playoff-streak-multiple-seasons`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_playoff_win_streak_one_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-playoff-win-streak-one-season`

**Full URL:** `https://records.nhl.com/site/api/team-playoff-win-streak-one-season`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_record_april
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-record-april`

**Full URL:** `https://records.nhl.com/site/api/team-record-april`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_record_by_month
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-record-by-month`

**Full URL:** `https://records.nhl.com/site/api/team-record-by-month`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_record_december
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-record-december`

**Full URL:** `https://records.nhl.com/site/api/team-record-december`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_record_february
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-record-february`

**Full URL:** `https://records.nhl.com/site/api/team-record-february`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_record_january
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-record-january`

**Full URL:** `https://records.nhl.com/site/api/team-record-january`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_record_march
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-record-march`

**Full URL:** `https://records.nhl.com/site/api/team-record-march`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_record_november
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-record-november`

**Full URL:** `https://records.nhl.com/site/api/team-record-november`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_record_october
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-record-october`

**Full URL:** `https://records.nhl.com/site/api/team-record-october`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_home_loss_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-home-loss-streak`

**Full URL:** `https://records.nhl.com/site/api/team-season-home-loss-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_home_loss_streak_start_of_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-home-loss-streak-start-of-season`

**Full URL:** `https://records.nhl.com/site/api/team-season-home-loss-streak-start-of-season`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_home_point_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-home-point-streak`

**Full URL:** `https://records.nhl.com/site/api/team-season-home-point-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_home_point_streak_start_of_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-home-point-streak-start-of-season`

**Full URL:** `https://records.nhl.com/site/api/team-season-home-point-streak-start-of-season`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_home_undefeated_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-home-undefeated-streak`

**Full URL:** `https://records.nhl.com/site/api/team-season-home-undefeated-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_home_undefeated_streak_incl_playoffs
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-home-undefeated-streak-incl-playoffs`

**Full URL:** `https://records.nhl.com/site/api/team-season-home-undefeated-streak-incl-playoffs`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_home_undefeated_streak_start_of_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-home-undefeated-streak-start-of-season`

**Full URL:** `https://records.nhl.com/site/api/team-season-home-undefeated-streak-start-of-season`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_home_win_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-home-win-streak`

**Full URL:** `https://records.nhl.com/site/api/team-season-home-win-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_home_win_streak_incl_playoffs
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-home-win-streak-incl-playoffs`

**Full URL:** `https://records.nhl.com/site/api/team-season-home-win-streak-incl-playoffs`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_home_win_streak_start_of_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-home-win-streak-start-of-season`

**Full URL:** `https://records.nhl.com/site/api/team-season-home-win-streak-start-of-season`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_home_winless_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-home-winless-streak`

**Full URL:** `https://records.nhl.com/site/api/team-season-home-winless-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_home_winless_streak_start_of_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-home-winless-streak-start-of-season`

**Full URL:** `https://records.nhl.com/site/api/team-season-home-winless-streak-start-of-season`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_loss_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-loss-streak`

**Full URL:** `https://records.nhl.com/site/api/team-season-loss-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_loss_streak_start_of_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-loss-streak-start-of-season`

**Full URL:** `https://records.nhl.com/site/api/team-season-loss-streak-start-of-season`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_overtime_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-overtime-games`

**Full URL:** `https://records.nhl.com/site/api/team-season-overtime-games`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_point_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-point-streak`

**Full URL:** `https://records.nhl.com/site/api/team-season-point-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_point_streak_start_of_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-point-streak-start-of-season`

**Full URL:** `https://records.nhl.com/site/api/team-season-point-streak-start-of-season`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_record_and_scoring
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-record-and-scoring`

**Full URL:** `https://records.nhl.com/site/api/team-season-record-and-scoring`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_road_loss_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-road-loss-streak`

**Full URL:** `https://records.nhl.com/site/api/team-season-road-loss-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_road_loss_streak_start_of_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-road-loss-streak-start-of-season`

**Full URL:** `https://records.nhl.com/site/api/team-season-road-loss-streak-start-of-season`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_road_point_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-road-point-streak`

**Full URL:** `https://records.nhl.com/site/api/team-season-road-point-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_road_point_streak_start_of_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-road-point-streak-start-of-season`

**Full URL:** `https://records.nhl.com/site/api/team-season-road-point-streak-start-of-season`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_road_undefeated_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-road-undefeated-streak`

**Full URL:** `https://records.nhl.com/site/api/team-season-road-undefeated-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_road_undefeated_streak_incl_playoffs
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-road-undefeated-streak-incl-playoffs`

**Full URL:** `https://records.nhl.com/site/api/team-season-road-undefeated-streak-incl-playoffs`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_road_undefeated_streak_start_of_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-road-undefeated-streak-start-of-season`

**Full URL:** `https://records.nhl.com/site/api/team-season-road-undefeated-streak-start-of-season`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_road_win_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-road-win-streak`

**Full URL:** `https://records.nhl.com/site/api/team-season-road-win-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_road_win_streak_incl_playoffs
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-road-win-streak-incl-playoffs`

**Full URL:** `https://records.nhl.com/site/api/team-season-road-win-streak-incl-playoffs`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_road_win_streak_start_of_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-road-win-streak-start-of-season`

**Full URL:** `https://records.nhl.com/site/api/team-season-road-win-streak-start-of-season`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_road_winless_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-road-winless-streak`

**Full URL:** `https://records.nhl.com/site/api/team-season-road-winless-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_road_winless_streak_start_of_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-road-winless-streak-start-of-season`

**Full URL:** `https://records.nhl.com/site/api/team-season-road-winless-streak-start-of-season`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_shootout_records
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-shootout-records`

**Full URL:** `https://records.nhl.com/site/api/team-season-shootout-records`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_shutout_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-shutout-streak`

**Full URL:** `https://records.nhl.com/site/api/team-season-shutout-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_undefeated_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-undefeated-streak`

**Full URL:** `https://records.nhl.com/site/api/team-season-undefeated-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_undefeated_streak_incl_playoffs
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-undefeated-streak-incl-playoffs`

**Full URL:** `https://records.nhl.com/site/api/team-season-undefeated-streak-incl-playoffs`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_undefeated_streak_start_of_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-undefeated-streak-start-of-season`

**Full URL:** `https://records.nhl.com/site/api/team-season-undefeated-streak-start-of-season`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_win_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-win-streak`

**Full URL:** `https://records.nhl.com/site/api/team-season-win-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_win_streak_incl_playoffs
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-win-streak-incl-playoffs`

**Full URL:** `https://records.nhl.com/site/api/team-season-win-streak-incl-playoffs`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_win_streak_start_of_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-win-streak-start-of-season`

**Full URL:** `https://records.nhl.com/site/api/team-season-win-streak-start-of-season`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_winless_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-winless-streak`

**Full URL:** `https://records.nhl.com/site/api/team-season-winless-streak`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_season_winless_streak_start_of_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-winless-streak-start-of-season`

**Full URL:** `https://records.nhl.com/site/api/team-season-winless-streak-start-of-season`

**Path parameters:** (none)

**Query parameters:** (none)

---

### team_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-stats`

**Full URL:** `https://records.nhl.com/site/api/team-stats`

**Path parameters:** (none)

**Query parameters:** (none)

---

### three_or_more_goal_games_career
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `three-or-more-goal-games-career`

**Full URL:** `https://records.nhl.com/site/api/three-or-more-goal-games-career`

**Path parameters:** (none)

**Query parameters:** (none)

---

### trophy
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `trophy`

**Full URL:** `https://records.nhl.com/site/api/trophy`

**Path parameters:** (none)

**Query parameters:** (none)

---

### trophy_franchise_trophy_categories
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `trophy/franchise-trophy-categories`

**Full URL:** `https://records.nhl.com/site/api/trophy/franchise-trophy-categories`

**Path parameters:** (none)

**Query parameters:** (none)

---

### trophy_trophy_categories
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `trophy/trophy-categories`

**Full URL:** `https://records.nhl.com/site/api/trophy/trophy-categories`

**Path parameters:** (none)

**Query parameters:** (none)

---

### trophy_trophy_categories_franchiseId
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `trophy/trophy-categories/{franchiseId}`

**Full URL:** `https://records.nhl.com/site/api/trophy/trophy-categories/{franchiseId}`

**Path parameters:**
|name        |regex |
|:-----------|:-----|
|franchiseId |NA    |

**Query parameters:** (none)

---

### venue
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `venue`

**Full URL:** `https://records.nhl.com/site/api/venue`

**Path parameters:** (none)

**Query parameters:** (none)

---

### yearly_playoff_series_details
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `yearly-playoff-series-details`

**Full URL:** `https://records.nhl.com/site/api/yearly-playoff-series-details`

**Path parameters:** (none)

**Query parameters:** (none)

---

***

