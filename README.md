# **Unofficial** NHL Data API Reference Documentation

## TODO

* Bring TOC up to the top
* Add intro to TOC
* Somehow think of a sensible way to organize the 500+ endpoints

## Introduction

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

**URL template:** `https://api-web.nhle.com/v1/club-schedule/{team}/month/{month}`

**Path parameters:**
|name  |regex             |
|:-----|:-----------------|
|team  |\w{3}             |
|month |[0-9]{4}-[0-9]{2} |

**Query parameters (documented):** (none)

---

### club_schedule_month_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/club-schedule/{team}/month/now`

**URL template:** `https://api-web.nhle.com/v1/club-schedule/{team}/month/now`

**Path parameters:**
|name |regex |
|:----|:-----|
|team |\w{3} |

**Query parameters (documented):** (none)

---

### club_schedule_season
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/club-schedule-season/{team}/{season}`

**URL template:** `https://api-web.nhle.com/v1/club-schedule-season/{team}/{season}`

**Path parameters:**
|name   |regex    |
|:------|:--------|
|team   |\w{3}    |
|season |[0-9]{8} |

**Query parameters (documented):** (none)

---

### club_schedule_season_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/club-schedule-season/{team}/now`

**URL template:** `https://api-web.nhle.com/v1/club-schedule-season/{team}/now`

**Path parameters:**
|name |regex |
|:----|:-----|
|team |\w{3} |

**Query parameters (documented):** (none)

---

### club_schedule_week
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/club-schedule/{team}/week/{date}`

**URL template:** `https://api-web.nhle.com/v1/club-schedule/{team}/week/{date}`

**Path parameters:**
|name |regex                      |
|:----|:--------------------------|
|team |\w{3}                      |
|date |[0-9]{4}-[0-9]{2}-[0-9]{2} |

**Query parameters (documented):** (none)

---

### club_schedule_week_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/club-schedule/{team}/week/now`

**URL template:** `https://api-web.nhle.com/v1/club-schedule/{team}/week/now`

**Path parameters:**
|name |regex |
|:----|:-----|
|team |\w{3} |

**Query parameters (documented):** (none)

---

### club_stats
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/club-stats/{team}/{season}/{gameType}`

**URL template:** `https://api-web.nhle.com/v1/club-stats/{team}/{season}/{gameType}`

**Path parameters:**
|name     |regex      |
|:--------|:----------|
|team     |\w{3}      |
|season   |[0-9]{8}   |
|gameType |[0-9]{1,2} |

**Query parameters (documented):** (none)

---

### club_stats_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/club-stats/{team}/now`

**URL template:** `https://api-web.nhle.com/v1/club-stats/{team}/now`

**Path parameters:**
|name |regex |
|:----|:-----|
|team |\w{3} |

**Query parameters (documented):** (none)

---

### club_stats_season
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/club-stats-season/{team}`

**URL template:** `https://api-web.nhle.com/v1/club-stats-season/{team}`

**Path parameters:**
|name |regex |
|:----|:-----|
|team |\w{3} |

**Query parameters (documented):** (none)

---

### draft_picks
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/draft/picks/{year}/{round}`

**URL template:** `https://api-web.nhle.com/v1/draft/picks/{year}/{round}`

**Path parameters:**
|name  |regex      |
|:-----|:----------|
|year  |[0-9]{4}   |
|round |[0-9]{1,2} |

**Query parameters (documented):** (none)

---

### draft_picks_all
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/draft/picks/{year}/all`

**URL template:** `https://api-web.nhle.com/v1/draft/picks/{year}/all`

**Path parameters:**
|name |regex    |
|:----|:--------|
|year |[0-9]{4} |

**Query parameters (documented):** (none)

---

### draft_picks_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/draft/picks/now`

**URL template:** `https://api-web.nhle.com/v1/draft/picks/now`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### draft_rankings
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/draft/rankings/{year}/{category}`

**URL template:** `https://api-web.nhle.com/v1/draft/rankings/{year}/{category}`

**Path parameters:**
|name     |regex |
|:--------|:-----|
|year     |NA    |
|category |NA    |

**Query parameters (documented):** (none)

---

### draft_rankings_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/draft/rankings/now`

**URL template:** `https://api-web.nhle.com/v1/draft/rankings/now`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### draft_tracker_picks_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/draft-tracker/picks/now`

**URL template:** `https://api-web.nhle.com/v1/draft-tracker/picks/now`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### edge_goalie_detail
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/goalie-detail/{playerId}/{season}/{gameType}`

**URL template:** `https://api-web.nhle.com/v1/edge/goalie-detail/{playerId}/{season}/{gameType}`

**Path parameters:**
|name     |regex      |
|:--------|:----------|
|playerId |NA         |
|season   |[0-9]{8}   |
|gameType |[0-9]{1,2} |

**Query parameters (documented):** (none)

---

### edge_goalie_detail_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/goalie-detail/{playerId}/now`

**URL template:** `https://api-web.nhle.com/v1/edge/goalie-detail/{playerId}/now`

**Path parameters:**
|name     |regex |
|:--------|:-----|
|playerId |NA    |

**Query parameters (documented):** (none)

---

### edge_goalie_edge_save_pctg_top_10
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/goalie-edge-save-pctg-top-10/{sortBy}/{season}/{gameType}`

**URL template:** `https://api-web.nhle.com/v1/edge/goalie-edge-save-pctg-top-10/{sortBy}/{season}/{gameType}`

**Path parameters:**
|name     |regex      |
|:--------|:----------|
|sortBy   |NA         |
|season   |[0-9]{8}   |
|gameType |[0-9]{1,2} |

**Query parameters (documented):** (none)

---

### edge_goalie_edge_save_pctg_top_10_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/goalie-edge-save-pctg-top-10/{sortBy}/now`

**URL template:** `https://api-web.nhle.com/v1/edge/goalie-edge-save-pctg-top-10/{sortBy}/now`

**Path parameters:**
|name   |regex |
|:------|:-----|
|sortBy |NA    |

**Query parameters (documented):** (none)

---

### edge_goalie_save_percentage_detail
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/goalie-save-percentage-detail/{playerId}/{season}/{gameType}`

**URL template:** `https://api-web.nhle.com/v1/edge/goalie-save-percentage-detail/{playerId}/{season}/{gameType}`

**Path parameters:**
|name     |regex      |
|:--------|:----------|
|playerId |NA         |
|season   |[0-9]{8}   |
|gameType |[0-9]{1,2} |

**Query parameters (documented):** (none)

---

### edge_goalie_save_percentage_detail_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/goalie-save-percentage-detail/{playerId}/now`

**URL template:** `https://api-web.nhle.com/v1/edge/goalie-save-percentage-detail/{playerId}/now`

**Path parameters:**
|name     |regex |
|:--------|:-----|
|playerId |NA    |

**Query parameters (documented):** (none)

---

### edge_goalie_shot_location_detail
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/goalie-shot-location-detail/{playerId}/{season}/{gameType}`

**URL template:** `https://api-web.nhle.com/v1/edge/goalie-shot-location-detail/{playerId}/{season}/{gameType}`

**Path parameters:**
|name     |regex      |
|:--------|:----------|
|playerId |NA         |
|season   |[0-9]{8}   |
|gameType |[0-9]{1,2} |

**Query parameters (documented):** (none)

---

### edge_goalie_shot_location_detail_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/goalie-shot-location-detail/{playerId}/now`

**URL template:** `https://api-web.nhle.com/v1/edge/goalie-shot-location-detail/{playerId}/now`

**Path parameters:**
|name     |regex |
|:--------|:-----|
|playerId |NA    |

**Query parameters (documented):** (none)

---

### edge_goalie_shot_location_top_10
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/goalie-shot-location-top-10/{category}/{sortBy}/{season}/{gameType}`

**URL template:** `https://api-web.nhle.com/v1/edge/goalie-shot-location-top-10/{category}/{sortBy}/{season}/{gameType}`

**Path parameters:**
|name     |regex      |
|:--------|:----------|
|category |NA         |
|sortBy   |NA         |
|season   |[0-9]{8}   |
|gameType |[0-9]{1,2} |

**Query parameters (documented):** (none)

---

### edge_goalie_shot_location_top_10_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/goalie-shot-location-top-10/{category}/{sortBy}/now`

**URL template:** `https://api-web.nhle.com/v1/edge/goalie-shot-location-top-10/{category}/{sortBy}/now`

**Path parameters:**
|name     |regex |
|:--------|:-----|
|category |NA    |
|sortBy   |NA    |

**Query parameters (documented):** (none)

---

### edge_skater_detail
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/skater-detail/{playerId}/{season}/{gameType}`

**URL template:** `https://api-web.nhle.com/v1/edge/skater-detail/{playerId}/{season}/{gameType}`

**Path parameters:**
|name     |regex      |
|:--------|:----------|
|playerId |NA         |
|season   |[0-9]{8}   |
|gameType |[0-9]{1,2} |

**Query parameters (documented):** (none)

---

### edge_skater_detail_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/skater-detail/{playerId}/now`

**URL template:** `https://api-web.nhle.com/v1/edge/skater-detail/{playerId}/now`

**Path parameters:**
|name     |regex |
|:--------|:-----|
|playerId |NA    |

**Query parameters (documented):** (none)

---

### edge_skater_shot_speed_detail
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/skater-shot-speed-detail/{playerId}/{season}/{gameType}`

**URL template:** `https://api-web.nhle.com/v1/edge/skater-shot-speed-detail/{playerId}/{season}/{gameType}`

**Path parameters:**
|name     |regex      |
|:--------|:----------|
|playerId |NA         |
|season   |[0-9]{8}   |
|gameType |[0-9]{1,2} |

**Query parameters (documented):** (none)

---

### edge_skater_shot_speed_detail_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/skater-shot-speed-detail/{playerId}/now`

**URL template:** `https://api-web.nhle.com/v1/edge/skater-shot-speed-detail/{playerId}/now`

**Path parameters:**
|name     |regex |
|:--------|:-----|
|playerId |NA    |

**Query parameters (documented):** (none)

---

### edge_skater_shot_speed_top_10
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/skater-shot-speed-top-10/{positions}/{sortBy}/{season}/{gameType}`

**URL template:** `https://api-web.nhle.com/v1/edge/skater-shot-speed-top-10/{positions}/{sortBy}/{season}/{gameType}`

**Path parameters:**
|name      |regex      |
|:---------|:----------|
|positions |NA         |
|sortBy    |NA         |
|season    |[0-9]{8}   |
|gameType  |[0-9]{1,2} |

**Query parameters (documented):** (none)

---

### edge_skater_shot_speed_top_10_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/skater-shot-speed-top-10/{positions}/{sortBy}/now`

**URL template:** `https://api-web.nhle.com/v1/edge/skater-shot-speed-top-10/{positions}/{sortBy}/now`

**Path parameters:**
|name      |regex |
|:---------|:-----|
|positions |NA    |
|sortBy    |NA    |

**Query parameters (documented):** (none)

---

### edge_skater_skating_speed_detail
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/skater-skating-speed-detail/{playerId}/{season}/{gameType}`

**URL template:** `https://api-web.nhle.com/v1/edge/skater-skating-speed-detail/{playerId}/{season}/{gameType}`

**Path parameters:**
|name     |regex      |
|:--------|:----------|
|playerId |NA         |
|season   |[0-9]{8}   |
|gameType |[0-9]{1,2} |

**Query parameters (documented):** (none)

---

### edge_skater_skating_speed_detail_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/skater-skating-speed-detail/{playerId}/now`

**URL template:** `https://api-web.nhle.com/v1/edge/skater-skating-speed-detail/{playerId}/now`

**Path parameters:**
|name     |regex |
|:--------|:-----|
|playerId |NA    |

**Query parameters (documented):** (none)

---

### edge_skater_speed_top_10
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/skater-speed-top-10/{positions}/{sortBy}/{season}/{gameType}`

**URL template:** `https://api-web.nhle.com/v1/edge/skater-speed-top-10/{positions}/{sortBy}/{season}/{gameType}`

**Path parameters:**
|name      |regex      |
|:---------|:----------|
|positions |NA         |
|sortBy    |NA         |
|season    |[0-9]{8}   |
|gameType  |[0-9]{1,2} |

**Query parameters (documented):** (none)

---

### edge_skater_speed_top_10_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/edge/skater-speed-top-10/{positions}/{sortBy}/now`

**URL template:** `https://api-web.nhle.com/v1/edge/skater-speed-top-10/{positions}/{sortBy}/now`

**Path parameters:**
|name      |regex |
|:---------|:-----|
|positions |NA    |
|sortBy    |NA    |

**Query parameters (documented):** (none)

---

### gamecenter_boxscore
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/gamecenter/{gameId}/boxscore`

**URL template:** `https://api-web.nhle.com/v1/gamecenter/{gameId}/boxscore`

**Path parameters:**
|name   |regex |
|:------|:-----|
|gameId |\d+   |

**Query parameters (documented):** (none)

---

### gamecenter_landing
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/gamecenter/{gameId}/landing`

**URL template:** `https://api-web.nhle.com/v1/gamecenter/{gameId}/landing`

**Path parameters:**
|name   |regex |
|:------|:-----|
|gameId |\d+   |

**Query parameters (documented):** (none)

---

### gamecenter_play_by_play
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/gamecenter/{gameId}/play-by-play`

**URL template:** `https://api-web.nhle.com/v1/gamecenter/{gameId}/play-by-play`

**Path parameters:**
|name   |regex |
|:------|:-----|
|gameId |\d+   |

**Query parameters (documented):** (none)

---

### gamecenter_right_rail
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/gamecenter/{gameId}/right-rail`

**URL template:** `https://api-web.nhle.com/v1/gamecenter/{gameId}/right-rail`

**Path parameters:**
|name   |regex |
|:------|:-----|
|gameId |\d+   |

**Query parameters (documented):** (none)

---

### goalie_stats_leaders
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/goalie-stats-leaders/{season}/{gameType}`

**URL template:** `https://api-web.nhle.com/v1/goalie-stats-leaders/{season}/{gameType}`

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

**URL template:** `https://api-web.nhle.com/v1/goalie-stats-leaders/current`

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

**URL template:** `https://api-web.nhle.com/v1/location`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### meta
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/meta`

**URL template:** `https://api-web.nhle.com/v1/meta`

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

**URL template:** `https://api-web.nhle.com/v1/meta/game/{gameId}`

**Path parameters:**
|name   |regex |
|:------|:-----|
|gameId |\d+   |

**Query parameters (documented):** (none)

---

### meta_playoff_series
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/meta/playoff-series/{year}/{series_letter}`

**URL template:** `https://api-web.nhle.com/v1/meta/playoff-series/{year}/{series_letter}`

**Path parameters:**
|name          |regex |
|:-------------|:-----|
|year          |NA    |
|series_letter |NA    |

**Query parameters (documented):** (none)

---

### model_v1_openapi.json
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `model/v1/openapi.json`

**URL template:** `https://api-web.nhle.com/model/v1/openapi.json`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### network_tv_schedule
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/network/tv-schedule/{date}`

**URL template:** `https://api-web.nhle.com/v1/network/tv-schedule/{date}`

**Path parameters:**
|name |regex                      |
|:----|:--------------------------|
|date |[0-9]{4}-[0-9]{2}-[0-9]{2} |

**Query parameters (documented):** (none)

---

### network_tv_schedule_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/network/tv-schedule/now`

**URL template:** `https://api-web.nhle.com/v1/network/tv-schedule/now`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### partner_game_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/partner-game/{countryCode}/now`

**URL template:** `https://api-web.nhle.com/v1/partner-game/{countryCode}/now`

**Path parameters:**
|name        |regex |
|:-----------|:-----|
|countryCode |NA    |

**Query parameters (documented):** (none)

---

### player_game_log
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/player/{player}/game-log/{season}/{gameType}`

**URL template:** `https://api-web.nhle.com/v1/player/{player}/game-log/{season}/{gameType}`

**Path parameters:**
|name     |regex      |
|:--------|:----------|
|player   |NA         |
|season   |[0-9]{8}   |
|gameType |[0-9]{1,2} |

**Query parameters (documented):** (none)

---

### player_game_log_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/player/{player}/game-log/now`

**URL template:** `https://api-web.nhle.com/v1/player/{player}/game-log/now`

**Path parameters:**
|name   |regex |
|:------|:-----|
|player |NA    |

**Query parameters (documented):** (none)

---

### player_landing
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/player/{player}/landing`

**URL template:** `https://api-web.nhle.com/v1/player/{player}/landing`

**Path parameters:**
|name   |regex |
|:------|:-----|
|player |NA    |

**Query parameters (documented):** (none)

---

### player_spotlight
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/player-spotlight`

**URL template:** `https://api-web.nhle.com/v1/player-spotlight`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### playoff_bracket
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/playoff-bracket/{year}`

**URL template:** `https://api-web.nhle.com/v1/playoff-bracket/{year}`

**Path parameters:**
|name |regex    |
|:----|:--------|
|year |[0-9]{4} |

**Query parameters (documented):** (none)

---

### playoff_series_carousel
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/playoff-series/carousel/{season}`

**URL template:** `https://api-web.nhle.com/v1/playoff-series/carousel/{season}`

**Path parameters:**
|name   |regex    |
|:------|:--------|
|season |[0-9]{8} |

**Query parameters (documented):** (none)

---

### postal_lookup
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/postal-lookup/{postalCode}`

**URL template:** `https://api-web.nhle.com/v1/postal-lookup/{postalCode}`

**Path parameters:**
|name       |regex |
|:----------|:-----|
|postalCode |NA    |

**Query parameters (documented):** (none)

---

### ppt_replay
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/ppt-replay/{gameId}/{eventNumber}`

**URL template:** `https://api-web.nhle.com/v1/ppt-replay/{gameId}/{eventNumber}`

**Path parameters:**
|name        |regex |
|:-----------|:-----|
|gameId      |NA    |
|eventNumber |NA    |

**Query parameters (documented):** (none)

---

### ppt_replay_goal
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/ppt-replay/goal/{gameId}/{eventNumber}`

**URL template:** `https://api-web.nhle.com/v1/ppt-replay/goal/{gameId}/{eventNumber}`

**Path parameters:**
|name        |regex |
|:-----------|:-----|
|gameId      |NA    |
|eventNumber |NA    |

**Query parameters (documented):** (none)

---

### prospects
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/prospects/{team}`

**URL template:** `https://api-web.nhle.com/v1/prospects/{team}`

**Path parameters:**
|name |regex |
|:----|:-----|
|team |\w{3} |

**Query parameters (documented):** (none)

---

### roster
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/roster/{team}/{season}`

**URL template:** `https://api-web.nhle.com/v1/roster/{team}/{season}`

**Path parameters:**
|name   |regex    |
|:------|:--------|
|team   |\w{3}    |
|season |[0-9]{8} |

**Query parameters (documented):** (none)

---

### roster_current
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/roster/{team}/current`

**URL template:** `https://api-web.nhle.com/v1/roster/{team}/current`

**Path parameters:**
|name |regex |
|:----|:-----|
|team |\w{3} |

**Query parameters (documented):** (none)

---

### roster_season
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/roster-season/{team}`

**URL template:** `https://api-web.nhle.com/v1/roster-season/{team}`

**Path parameters:**
|name |regex |
|:----|:-----|
|team |\w{3} |

**Query parameters (documented):** (none)

---

### schedule
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/schedule/{date}`

**URL template:** `https://api-web.nhle.com/v1/schedule/{date}`

**Path parameters:**
|name |regex                      |
|:----|:--------------------------|
|date |[0-9]{4}-[0-9]{2}-[0-9]{2} |

**Query parameters (documented):** (none)

---

### schedule_calendar
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/schedule-calendar/{date}`

**URL template:** `https://api-web.nhle.com/v1/schedule-calendar/{date}`

**Path parameters:**
|name |regex                      |
|:----|:--------------------------|
|date |[0-9]{4}-[0-9]{2}-[0-9]{2} |

**Query parameters (documented):** (none)

---

### schedule_calendar_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/schedule-calendar/now`

**URL template:** `https://api-web.nhle.com/v1/schedule-calendar/now`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### schedule_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/schedule/now`

**URL template:** `https://api-web.nhle.com/v1/schedule/now`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### schedule_playoff_series
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/schedule/playoff-series/{season}/{seriesLetter}`

**URL template:** `https://api-web.nhle.com/v1/schedule/playoff-series/{season}/{seriesLetter}`

**Path parameters:**
|name         |regex    |
|:------------|:--------|
|season       |[0-9]{8} |
|seriesLetter |\w       |

**Query parameters (documented):** (none)

---

### score
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/score/{date}`

**URL template:** `https://api-web.nhle.com/v1/score/{date}`

**Path parameters:**
|name |regex                      |
|:----|:--------------------------|
|date |[0-9]{4}-[0-9]{2}-[0-9]{2} |

**Query parameters (documented):** (none)

---

### score_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/score/now`

**URL template:** `https://api-web.nhle.com/v1/score/now`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### scoreboard
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/scoreboard/{date}`

**URL template:** `https://api-web.nhle.com/v1/scoreboard/{date}`

**Path parameters:**
|name |regex                      |
|:----|:--------------------------|
|date |[0-9]{4}-[0-9]{2}-[0-9]{2} |

**Query parameters (documented):** (none)

---

### scoreboard_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/scoreboard/now`

**URL template:** `https://api-web.nhle.com/v1/scoreboard/now`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### scoreboard_team_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/scoreboard/{team}/now`

**URL template:** `https://api-web.nhle.com/v1/scoreboard/{team}/now`

**Path parameters:**
|name |regex |
|:----|:-----|
|team |\w{3} |

**Query parameters (documented):** (none)

---

### season
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/season`

**URL template:** `https://api-web.nhle.com/v1/season`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_stats_leaders
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/skater-stats-leaders/{season}/{gameType}`

**URL template:** `https://api-web.nhle.com/v1/skater-stats-leaders/{season}/{gameType}`

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

**URL template:** `https://api-web.nhle.com/v1/skater-stats-leaders/current`

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

**URL template:** `https://api-web.nhle.com/v1/smartlinks`

**Path parameters:** (none)

**Query parameters (documented):**
|name   |type   |
|:------|:------|
|handle |string |

---

### standings
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/standings/{date}`

**URL template:** `https://api-web.nhle.com/v1/standings/{date}`

**Path parameters:**
|name |regex                      |
|:----|:--------------------------|
|date |[0-9]{4}-[0-9]{2}-[0-9]{2} |

**Query parameters (documented):** (none)

---

### standings_now
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/standings/now`

**URL template:** `https://api-web.nhle.com/v1/standings/now`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### standings_season
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/standings-season`

**URL template:** `https://api-web.nhle.com/v1/standings-season`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### where_to_watch
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/where-to-watch`

**URL template:** `https://api-web.nhle.com/v1/where-to-watch`

**Path parameters:** (none)

**Query parameters (documented):**
|name    |type   |
|:-------|:------|
|include |string |

---

### wsc_game_story
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/wsc/game-story/{gameId}`

**URL template:** `https://api-web.nhle.com/v1/wsc/game-story/{gameId}`

**Path parameters:**
|name   |regex |
|:------|:-----|
|gameId |\d+   |

**Query parameters (documented):** (none)

---

### wsc_play_by_play
**Base URL:** `https://api-web.nhle.com/`

**Path template:** `v1/wsc/play-by-play/{gameId}`

**URL template:** `https://api-web.nhle.com/v1/wsc/play-by-play/{gameId}`

**Path parameters:**
|name   |regex |
|:------|:-----|
|gameId |\d+   |

**Query parameters (documented):** (none)

---

***

## `api.nhle.com/stats/rest`

### db_componentSeason
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/componentSeason`

**URL template:** `https://api.nhle.com/stats/rest/{lang}/componentSeason`

**Path parameters:**
|name |regex |
|:----|:-----|
|lang |NA    |

**Query parameters (documented):** (none)

---

### db_config
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/config`

**URL template:** `https://api.nhle.com/stats/rest/{lang}/config`

**Path parameters:**
|name |regex |
|:----|:-----|
|lang |NA    |

**Query parameters (documented):** (none)

---

### db_content_module
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/content/module/{templateKey}`

**URL template:** `https://api.nhle.com/stats/rest/{lang}/content/module/{templateKey}`

**Path parameters:**
|name        |regex |
|:-----------|:-----|
|lang        |NA    |
|templateKey |NA    |

**Query parameters (documented):** (none)

---

### db_country
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/country`

**URL template:** `https://api.nhle.com/stats/rest/{lang}/country`

**Path parameters:**
|name |regex |
|:----|:-----|
|lang |NA    |

**Query parameters (documented):** (none)

---

### db_draft
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/draft`

**URL template:** `https://api.nhle.com/stats/rest/{lang}/draft`

**Path parameters:**
|name |regex |
|:----|:-----|
|lang |NA    |

**Query parameters (documented):** (none)

---

### db_franchise
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/franchise`

**URL template:** `https://api.nhle.com/stats/rest/{lang}/franchise`

**Path parameters:**
|name |regex |
|:----|:-----|
|lang |NA    |

**Query parameters (documented):** (none)

---

### db_game
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/game`

**URL template:** `https://api.nhle.com/stats/rest/{lang}/game`

**Path parameters:**
|name |regex |
|:----|:-----|
|lang |NA    |

**Query parameters (documented):** (none)

---

### db_glossary
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/glossary`

**URL template:** `https://api.nhle.com/stats/rest/{lang}/glossary`

**Path parameters:**
|name |regex |
|:----|:-----|
|lang |NA    |

**Query parameters (documented):** (none)

---

### db_goalie
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/goalie/{report}`

**URL template:** `https://api.nhle.com/stats/rest/{lang}/goalie/{report}`

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

**URL template:** `https://api.nhle.com/stats/rest/{lang}/leaders/goalies/{attribute}`

**Path parameters:**
|name      |regex |
|:---------|:-----|
|lang      |NA    |
|attribute |NA    |

**Query parameters (documented):** (none)

---

### db_leaders_skaters
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/leaders/skaters/{attribute}`

**URL template:** `https://api.nhle.com/stats/rest/{lang}/leaders/skaters/{attribute}`

**Path parameters:**
|name      |regex |
|:---------|:-----|
|lang      |NA    |
|attribute |NA    |

**Query parameters (documented):** (none)

---

### db_milestones_goalies
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/milestones/goalies`

**URL template:** `https://api.nhle.com/stats/rest/{lang}/milestones/goalies`

**Path parameters:**
|name |regex |
|:----|:-----|
|lang |NA    |

**Query parameters (documented):** (none)

---

### db_milestones_skaters
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/milestones/skaters`

**URL template:** `https://api.nhle.com/stats/rest/{lang}/milestones/skaters`

**Path parameters:**
|name |regex |
|:----|:-----|
|lang |NA    |

**Query parameters (documented):** (none)

---

### db_ping
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `ping`

**URL template:** `https://api.nhle.com/stats/rest/ping`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### db_players
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/players`

**URL template:** `https://api.nhle.com/stats/rest/{lang}/players`

**Path parameters:**
|name |regex |
|:----|:-----|
|lang |NA    |

**Query parameters (documented):** (none)

---

### db_season
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/season`

**URL template:** `https://api.nhle.com/stats/rest/{lang}/season`

**Path parameters:**
|name |regex |
|:----|:-----|
|lang |NA    |

**Query parameters (documented):** (none)

---

### db_shiftcharts
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/shiftcharts`

**URL template:** `https://api.nhle.com/stats/rest/{lang}/shiftcharts`

**Path parameters:**
|name |regex |
|:----|:-----|
|lang |NA    |

**Query parameters (documented):** (none)

---

### db_skater
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/skater/{report}`

**URL template:** `https://api.nhle.com/stats/rest/{lang}/skater/{report}`

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

**URL template:** `https://api.nhle.com/stats/rest/{lang}/team`

**Path parameters:**
|name |regex |
|:----|:-----|
|lang |NA    |

**Query parameters (documented):** (none)

---

### db_team_id
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/team/id/{id}`

**URL template:** `https://api.nhle.com/stats/rest/{lang}/team/id/{id}`

**Path parameters:**
|name |regex |
|:----|:-----|
|lang |NA    |
|id   |NA    |

**Query parameters (documented):** (none)

---

### db_team_report
**Base URL:** `https://api.nhle.com/stats/rest/`

**Path template:** `{lang}/team/{report}`

**URL template:** `https://api.nhle.com/stats/rest/{lang}/team/{report}`

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

**URL template:** `https://records.nhl.com/site/api/all-star-coach-career-stats`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### all_star_goaltender_career_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `all-star-goaltender-career-stats`

**URL template:** `https://records.nhl.com/site/api/all-star-goaltender-career-stats`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### all_star_goaltender_game_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `all-star-goaltender-game-stats`

**URL template:** `https://records.nhl.com/site/api/all-star-goaltender-game-stats`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### all_star_goaltender_period_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `all-star-goaltender-period-stats`

**URL template:** `https://records.nhl.com/site/api/all-star-goaltender-period-stats`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### all_star_skater_career_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `all-star-skater-career-stats`

**URL template:** `https://records.nhl.com/site/api/all-star-skater-career-stats`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### all_star_skater_game_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `all-star-skater-game-stats`

**URL template:** `https://records.nhl.com/site/api/all-star-skater-game-stats`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### all_star_skater_period_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `all-star-skater-period-stats`

**URL template:** `https://records.nhl.com/site/api/all-star-skater-period-stats`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### all_star_team_game_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `all-star-team-game-stats`

**URL template:** `https://records.nhl.com/site/api/all-star-team-game-stats`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### all_star_team_period_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `all-star-team-period-stats`

**URL template:** `https://records.nhl.com/site/api/all-star-team-period-stats`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### all_star_team_position_leaders
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `all_star_team_position_leaders`

**URL template:** `https://records.nhl.com/site/api/all_star_team_position_leaders`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### all_time_record_vs_franchise
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `all-time-record-vs-franchise`

**URL template:** `https://records.nhl.com/site/api/all-time-record-vs-franchise`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### attendance
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `attendance`

**URL template:** `https://records.nhl.com/site/api/attendance`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### award_details
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `award-details`

**URL template:** `https://records.nhl.com/site/api/award-details`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### award_details_franchiseId
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `award-details/{franchiseId}`

**URL template:** `https://records.nhl.com/site/api/award-details/{franchiseId}`

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

**URL template:** `https://records.nhl.com/site/api/award-details/trophy/{trophyId}/season/{seasonId}`

**Path parameters:**
|name     |regex |
|:--------|:-----|
|trophyId |NA    |
|seasonId |NA    |

**Query parameters (documented):** (none)

---

### away_team_record
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `away-team-record`

**URL template:** `https://records.nhl.com/site/api/away-team-record`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach`

**URL template:** `https://records.nhl.com/site/api/coach`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_career_records
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-career-records`

**URL template:** `https://records.nhl.com/site/api/coach-career-records`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_career_records_id
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-career-records/{id}`

**URL template:** `https://records.nhl.com/site/api/coach-career-records/{id}`

**Path parameters:**
|name |regex |
|:----|:-----|
|id   |NA    |

**Query parameters (documented):** (none)

---

### coach_career_records_regular_plus_playoffs
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-career-records-regular-plus-playoffs`

**URL template:** `https://records.nhl.com/site/api/coach-career-records-regular-plus-playoffs`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_fewest_games_to_100_playoff_wins
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-fewest-games-to-100-playoff-wins`

**URL template:** `https://records.nhl.com/site/api/coach-fewest-games-to-100-playoff-wins`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_fewest_games_to_100_wins
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-fewest-games-to-100-wins`

**URL template:** `https://records.nhl.com/site/api/coach-fewest-games-to-100-wins`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_fewest_games_to_1000_wins
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-fewest-games-to-1000-wins`

**URL template:** `https://records.nhl.com/site/api/coach-fewest-games-to-1000-wins`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_fewest_games_to_150_playoff_wins
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-fewest-games-to-150-playoff-wins`

**URL template:** `https://records.nhl.com/site/api/coach-fewest-games-to-150-playoff-wins`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_fewest_games_to_200_wins
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-fewest-games-to-200-wins`

**URL template:** `https://records.nhl.com/site/api/coach-fewest-games-to-200-wins`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_fewest_games_to_300_wins
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-fewest-games-to-300-wins`

**URL template:** `https://records.nhl.com/site/api/coach-fewest-games-to-300-wins`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_fewest_games_to_400_wins
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-fewest-games-to-400-wins`

**URL template:** `https://records.nhl.com/site/api/coach-fewest-games-to-400-wins`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_fewest_games_to_50_playoff_wins
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-fewest-games-to-50-playoff-wins`

**URL template:** `https://records.nhl.com/site/api/coach-fewest-games-to-50-playoff-wins`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_fewest_games_to_500_wins
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-fewest-games-to-500-wins`

**URL template:** `https://records.nhl.com/site/api/coach-fewest-games-to-500-wins`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_fewest_games_to_600_wins
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-fewest-games-to-600-wins`

**URL template:** `https://records.nhl.com/site/api/coach-fewest-games-to-600-wins`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_fewest_games_to_700_wins
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-fewest-games-to-700-wins`

**URL template:** `https://records.nhl.com/site/api/coach-fewest-games-to-700-wins`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_fewest_games_to_800_wins
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-fewest-games-to-800-wins`

**URL template:** `https://records.nhl.com/site/api/coach-fewest-games-to-800-wins`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_fewest_games_to_900_wins
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-fewest-games-to-900-wins`

**URL template:** `https://records.nhl.com/site/api/coach-fewest-games-to-900-wins`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_first_game
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-first-game`

**URL template:** `https://records.nhl.com/site/api/coach-first-game`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_first_series_win
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-first-series-win`

**URL template:** `https://records.nhl.com/site/api/coach-first-series-win`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_first_stanley_cup_win
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-first-stanley-cup-win`

**URL template:** `https://records.nhl.com/site/api/coach-first-stanley-cup-win`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_first_win
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-first-win`

**URL template:** `https://records.nhl.com/site/api/coach-first-win`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_franchise_records
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-franchise-records`

**URL template:** `https://records.nhl.com/site/api/coach-franchise-records`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_franchise_records_id
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-franchise-records/{id}`

**URL template:** `https://records.nhl.com/site/api/coach-franchise-records/{id}`

**Path parameters:**
|name |regex |
|:----|:-----|
|id   |NA    |

**Query parameters (documented):** (none)

---

### coach_franchise_records_regular_plus_playoffs
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-franchise-records-regular-plus-playoffs`

**URL template:** `https://records.nhl.com/site/api/coach-franchise-records-regular-plus-playoffs`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_franchise_season_records
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-franchise-season-records`

**URL template:** `https://records.nhl.com/site/api/coach-franchise-season-records`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_franchise_season_records_id
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-franchise-season-records/{id}`

**URL template:** `https://records.nhl.com/site/api/coach-franchise-season-records/{id}`

**Path parameters:**
|name |regex |
|:----|:-----|
|id   |NA    |

**Query parameters (documented):** (none)

---

### coach_game_seven_career
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-game-seven-career`

**URL template:** `https://records.nhl.com/site/api/coach-game-seven-career`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_game_seven_franchise
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-game-seven-franchise`

**URL template:** `https://records.nhl.com/site/api/coach-game-seven-franchise`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_game_seven_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-game-seven-streak`

**URL template:** `https://records.nhl.com/site/api/coach-game-seven-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_id
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach/{id}`

**URL template:** `https://records.nhl.com/site/api/coach/{id}`

**Path parameters:**
|name |regex |
|:----|:-----|
|id   |NA    |

**Query parameters (documented):** (none)

---

### coach_most_wins_100_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-most-wins-100-games`

**URL template:** `https://records.nhl.com/site/api/coach-most-wins-100-games`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_most_wins_100_playoff_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-most-wins-100-playoff-games`

**URL template:** `https://records.nhl.com/site/api/coach-most-wins-100-playoff-games`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_most_wins_1000_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-most-wins-1000-games`

**URL template:** `https://records.nhl.com/site/api/coach-most-wins-1000-games`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_most_wins_150_playoff_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-most-wins-150-playoff-games`

**URL template:** `https://records.nhl.com/site/api/coach-most-wins-150-playoff-games`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_most_wins_200_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-most-wins-200-games`

**URL template:** `https://records.nhl.com/site/api/coach-most-wins-200-games`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_most_wins_200_playoff_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-most-wins-200-playoff-games`

**URL template:** `https://records.nhl.com/site/api/coach-most-wins-200-playoff-games`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_most_wins_300_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-most-wins-300-games`

**URL template:** `https://records.nhl.com/site/api/coach-most-wins-300-games`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_most_wins_400_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-most-wins-400-games`

**URL template:** `https://records.nhl.com/site/api/coach-most-wins-400-games`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_most_wins_50_playoff_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-most-wins-50-playoff-games`

**URL template:** `https://records.nhl.com/site/api/coach-most-wins-50-playoff-games`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_most_wins_500_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-most-wins-500-games`

**URL template:** `https://records.nhl.com/site/api/coach-most-wins-500-games`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_most_wins_600_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-most-wins-600-games`

**URL template:** `https://records.nhl.com/site/api/coach-most-wins-600-games`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_most_wins_700_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-most-wins-700-games`

**URL template:** `https://records.nhl.com/site/api/coach-most-wins-700-games`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_most_wins_800_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-most-wins-800-games`

**URL template:** `https://records.nhl.com/site/api/coach-most-wins-800-games`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_most_wins_900_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-most-wins-900-games`

**URL template:** `https://records.nhl.com/site/api/coach-most-wins-900-games`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_playoff_series_totals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-playoff-series-totals`

**URL template:** `https://records.nhl.com/site/api/coach-playoff-series-totals`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_playoff_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-playoff-streak`

**URL template:** `https://records.nhl.com/site/api/coach-playoff-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_stanley_cup_consecutive_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-stanley-cup-consecutive-streak`

**URL template:** `https://records.nhl.com/site/api/coach-stanley-cup-consecutive-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_stanley_cup_final_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-stanley-cup-final-streak`

**URL template:** `https://records.nhl.com/site/api/coach-stanley-cup-final-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### coach_stanley_cup_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `coach-stanley-cup-streak`

**URL template:** `https://records.nhl.com/site/api/coach-stanley-cup-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### combine
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `combine`

**URL template:** `https://records.nhl.com/site/api/combine`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### comeback_franchise_three_goal_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `comeback-franchise-three-goal-games`

**URL template:** `https://records.nhl.com/site/api/comeback-franchise-three-goal-games`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### comeback_franchise_wins
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `comeback-franchise-wins`

**URL template:** `https://records.nhl.com/site/api/comeback-franchise-wins`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### comeback_league_wins
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `comeback-league-wins`

**URL template:** `https://records.nhl.com/site/api/comeback-league-wins`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### component_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `component-season`

**URL template:** `https://records.nhl.com/site/api/component-season`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### consecutive_100_point_seasons
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `consecutive-100-point-seasons`

**URL template:** `https://records.nhl.com/site/api/consecutive-100-point-seasons`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### consecutive_20_goal_seasons
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `consecutive-20-goal-seasons`

**URL template:** `https://records.nhl.com/site/api/consecutive-20-goal-seasons`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### consecutive_30_goal_seasons
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `consecutive-30-goal-seasons`

**URL template:** `https://records.nhl.com/site/api/consecutive-30-goal-seasons`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### consecutive_30_win_seasons
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `consecutive-30-win-seasons`

**URL template:** `https://records.nhl.com/site/api/consecutive-30-win-seasons`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### consecutive_40_goal_seasons
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `consecutive-40-goal-seasons`

**URL template:** `https://records.nhl.com/site/api/consecutive-40-goal-seasons`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### consecutive_40_win_seasons
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `consecutive-40-win-seasons`

**URL template:** `https://records.nhl.com/site/api/consecutive-40-win-seasons`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### consecutive_50_goal_seasons
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `consecutive-50-goal-seasons`

**URL template:** `https://records.nhl.com/site/api/consecutive-50-goal-seasons`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### consecutive_60_goal_seasons
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `consecutive-60-goal-seasons`

**URL template:** `https://records.nhl.com/site/api/consecutive-60-goal-seasons`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### content_module_
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `{franchiseTricode}/content/module/{templateKey}`

**URL template:** `https://records.nhl.com/site/api/{franchiseTricode}/content/module/{templateKey}`

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

**URL template:** `https://records.nhl.com/site/api/content-module-by-season/{templateKey}/{seasonId}`

**Path parameters:**
|name        |regex |
|:-----------|:-----|
|templateKey |NA    |
|seasonId    |NA    |

**Query parameters (documented):** (none)

---

### draft
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `draft`

**URL template:** `https://records.nhl.com/site/api/draft`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### draft_amateurTeams
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `draft/amateurTeams`

**URL template:** `https://records.nhl.com/site/api/draft/amateurTeams`

**Path parameters:** (none)

**Query parameters (documented):**
|name      |type |
|:---------|:----|
|draftYear |int  |

---

### draft_byTeam
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `draft/byTeam/{teamId}`

**URL template:** `https://records.nhl.com/site/api/draft/byTeam/{teamId}`

**Path parameters:**
|name   |regex |
|:------|:-----|
|teamId |NA    |

**Query parameters (documented):** (none)

---

### draft_countries
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `draft/countries`

**URL template:** `https://records.nhl.com/site/api/draft/countries`

**Path parameters:** (none)

**Query parameters (documented):**
|name      |type |
|:---------|:----|
|draftYear |int  |

---

### draft_id
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `draft/{id}`

**URL template:** `https://records.nhl.com/site/api/draft/{id}`

**Path parameters:**
|name |regex |
|:----|:-----|
|id   |NA    |

**Query parameters (documented):** (none)

---

### draft_lottery_odds
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `draft-lottery-odds`

**URL template:** `https://records.nhl.com/site/api/draft-lottery-odds`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### draft_lottery_odds_all_time
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `draft-lottery-odds-all-time`

**URL template:** `https://records.nhl.com/site/api/draft-lottery-odds-all-time`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### draft_lottery_picks
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `draft-lottery-picks`

**URL template:** `https://records.nhl.com/site/api/draft-lottery-picks`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### draft_master
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `draft-master`

**URL template:** `https://records.nhl.com/site/api/draft-master`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### draft_prospect
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `draft-prospect`

**URL template:** `https://records.nhl.com/site/api/draft-prospect`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### draft_prospect_id
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `draft-prospect/{id}`

**URL template:** `https://records.nhl.com/site/api/draft-prospect/{id}`

**Path parameters:**
|name |regex |
|:----|:-----|
|id   |NA    |

**Query parameters (documented):** (none)

---

### draft_roundNumbers
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `draft/roundNumbers`

**URL template:** `https://records.nhl.com/site/api/draft/roundNumbers`

**Path parameters:** (none)

**Query parameters (documented):**
|name      |type |
|:---------|:----|
|draftYear |int  |

---

### draft_teams
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `draft/teams`

**URL template:** `https://records.nhl.com/site/api/draft/teams`

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

**URL template:** `https://records.nhl.com/site/api/expansion-draft-picks`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### expansion_draft_rules
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `expansion-draft-rules`

**URL template:** `https://records.nhl.com/site/api/expansion-draft-rules`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### fastest_2_goals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `fastest-2-goals`

**URL template:** `https://records.nhl.com/site/api/fastest-2-goals`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### fastest_2_goals_both_teams
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `fastest-2-goals-both-teams`

**URL template:** `https://records.nhl.com/site/api/fastest-2-goals-both-teams`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### fastest_2_goals_from_period_start_both_teams
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `fastest-2-goals-from-period-start-both-teams`

**URL template:** `https://records.nhl.com/site/api/fastest-2-goals-from-period-start-both-teams`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### fastest_2_goals_from_period_start_one_skater
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `fastest-2-goals-from-period-start-one-skater`

**URL template:** `https://records.nhl.com/site/api/fastest-2-goals-from-period-start-one-skater`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### fastest_2_goals_from_period_start_one_team
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `fastest-2-goals-from-period-start-one-team`

**URL template:** `https://records.nhl.com/site/api/fastest-2-goals-from-period-start-one-team`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### fastest_2_goals_one_team
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `fastest-2-goals-one-team`

**URL template:** `https://records.nhl.com/site/api/fastest-2-goals-one-team`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### fastest_3_assists
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `fastest-3-assists`

**URL template:** `https://records.nhl.com/site/api/fastest-3-assists`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### fastest_3_goals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `fastest-3-goals`

**URL template:** `https://records.nhl.com/site/api/fastest-3-goals`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### fastest_3_goals_both_teams
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `fastest-3-goals-both-teams`

**URL template:** `https://records.nhl.com/site/api/fastest-3-goals-both-teams`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### fastest_3_goals_from_period_start_both_teams
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `fastest-3-goals-from-period-start-both-teams`

**URL template:** `https://records.nhl.com/site/api/fastest-3-goals-from-period-start-both-teams`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### fastest_3_goals_from_period_start_one_team
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `fastest-3-goals-from-period-start-one-team`

**URL template:** `https://records.nhl.com/site/api/fastest-3-goals-from-period-start-one-team`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### fastest_3_goals_one_team
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `fastest-3-goals-one-team`

**URL template:** `https://records.nhl.com/site/api/fastest-3-goals-one-team`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### fastest_4_goals_both_teams
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `fastest-4-goals-both-teams`

**URL template:** `https://records.nhl.com/site/api/fastest-4-goals-both-teams`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### fastest_4_goals_one_team
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `fastest-4-goals-one-team`

**URL template:** `https://records.nhl.com/site/api/fastest-4-goals-one-team`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### fastest_5_goals_both_teams
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `fastest-5-goals-both-teams`

**URL template:** `https://records.nhl.com/site/api/fastest-5-goals-both-teams`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### fastest_5_goals_one_team
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `fastest-5-goals-one-team`

**URL template:** `https://records.nhl.com/site/api/fastest-5-goals-one-team`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### fastest_6_goals_both_teams
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `fastest-6-goals-both-teams`

**URL template:** `https://records.nhl.com/site/api/fastest-6-goals-both-teams`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### fastest_goals_start_of_period
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `fastest-goals-start-of-period`

**URL template:** `https://records.nhl.com/site/api/fastest-goals-start-of-period`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### franchise
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `franchise`

**URL template:** `https://records.nhl.com/site/api/franchise`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### franchise_all_time_game_7_record
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `franchise-all-time-game-7-record`

**URL template:** `https://records.nhl.com/site/api/franchise-all-time-game-7-record`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### franchise_all_time_overtime_record
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `franchise-all-time-overtime-record`

**URL template:** `https://records.nhl.com/site/api/franchise-all-time-overtime-record`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### franchise_detail
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `franchise-detail`

**URL template:** `https://records.nhl.com/site/api/franchise-detail`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### franchise_home_point_streak_vs_franchise
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `franchise-home-point-streak-vs-franchise`

**URL template:** `https://records.nhl.com/site/api/franchise-home-point-streak-vs-franchise`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### franchise_home_win_streak_vs_franchise
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `franchise-home-win-streak-vs-franchise`

**URL template:** `https://records.nhl.com/site/api/franchise-home-win-streak-vs-franchise`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### franchise_playoff_appearances
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `franchise-playoff-appearances`

**URL template:** `https://records.nhl.com/site/api/franchise-playoff-appearances`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### franchise_playoff_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `franchise-playoff-streak`

**URL template:** `https://records.nhl.com/site/api/franchise-playoff-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### franchise_point_streak_vs_franchise
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `franchise-point-streak-vs-franchise`

**URL template:** `https://records.nhl.com/site/api/franchise-point-streak-vs-franchise`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### franchise_road_point_streak_vs_franchise
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `franchise-road-point-streak-vs-franchise`

**URL template:** `https://records.nhl.com/site/api/franchise-road-point-streak-vs-franchise`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### franchise_road_win_streak_vs_franchise
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `franchise-road-win-streak-vs-franchise`

**URL template:** `https://records.nhl.com/site/api/franchise-road-win-streak-vs-franchise`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### franchise_season_opener_standings
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `franchise-season-opener-standings`

**URL template:** `https://records.nhl.com/site/api/franchise-season-opener-standings`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### franchise_season_results
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `franchise-season-results`

**URL template:** `https://records.nhl.com/site/api/franchise-season-results`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### franchise_stanley_cup_final_appearance_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `franchise-stanley-cup-final-appearance-streak`

**URL template:** `https://records.nhl.com/site/api/franchise-stanley-cup-final-appearance-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### franchise_stanley_cup_final_win_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `franchise-stanley-cup-final-win-streak`

**URL template:** `https://records.nhl.com/site/api/franchise-stanley-cup-final-win-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### franchise_team_totals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `franchise-team-totals`

**URL template:** `https://records.nhl.com/site/api/franchise-team-totals`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### franchise_totals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `franchise-totals`

**URL template:** `https://records.nhl.com/site/api/franchise-totals`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### franchise_win_streak_vs_franchise
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `franchise-win-streak-vs-franchise`

**URL template:** `https://records.nhl.com/site/api/franchise-win-streak-vs-franchise`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### game_winning_goals_stanley_cup
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `game-winning-goals-stanley-cup`

**URL template:** `https://records.nhl.com/site/api/game-winning-goals-stanley-cup`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### games_played_active_streak_skaters
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `games-played-active-streak-skaters`

**URL template:** `https://records.nhl.com/site/api/games-played-active-streak-skaters`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### games_played_streak_goalies
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `games-played-streak-goalies`

**URL template:** `https://records.nhl.com/site/api/games-played-streak-goalies`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### games_played_streak_skaters
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `games-played-streak-skaters`

**URL template:** `https://records.nhl.com/site/api/games-played-streak-skaters`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### games_shutout_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `games-shutout-streak`

**URL template:** `https://records.nhl.com/site/api/games-shutout-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### general_manager
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `general-manager`

**URL template:** `https://records.nhl.com/site/api/general-manager`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### general_manager_career_records
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `general-manager-career-records`

**URL template:** `https://records.nhl.com/site/api/general-manager-career-records`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### general_manager_career_records_regular_plus_playoffs
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `general-manager-career-records-regular-plus-playoffs`

**URL template:** `https://records.nhl.com/site/api/general-manager-career-records-regular-plus-playoffs`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### general_manager_franchise_records
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `general-manager-franchise-records`

**URL template:** `https://records.nhl.com/site/api/general-manager-franchise-records`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### general_manager_franchise_records_regular_plus_playoffs
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `general-manager-franchise-records-regular-plus-playoffs`

**URL template:** `https://records.nhl.com/site/api/general-manager-franchise-records-regular-plus-playoffs`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### general_manager_franchise_season_records
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `general-manager-franchise-season-records`

**URL template:** `https://records.nhl.com/site/api/general-manager-franchise-season-records`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### general_manager_id
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `general-manager/{id}`

**URL template:** `https://records.nhl.com/site/api/general-manager/{id}`

**Path parameters:**
|name |regex |
|:----|:-----|
|id   |NA    |

**Query parameters (documented):** (none)

---

### general_manager_playoff_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `general-manager-playoff-streak`

**URL template:** `https://records.nhl.com/site/api/general-manager-playoff-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### general_manager_stanley_cup_final_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `general-manager-stanley-cup-final-streak`

**URL template:** `https://records.nhl.com/site/api/general-manager-stanley-cup-final-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_career_scoring
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-career-scoring`

**URL template:** `https://records.nhl.com/site/api/goalie-career-scoring`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_career_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-career-stats`

**URL template:** `https://records.nhl.com/site/api/goalie-career-stats`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_career_stats_incl_playoffs
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie_career_stats_incl_playoffs`

**URL template:** `https://records.nhl.com/site/api/goalie_career_stats_incl_playoffs`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_career_totals_by_franchise
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-career-totals-by-franchise`

**URL template:** `https://records.nhl.com/site/api/goalie-career-totals-by-franchise`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_game_scoring
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-game-scoring`

**URL template:** `https://records.nhl.com/site/api/goalie-game-scoring`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_game_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-game-stats`

**URL template:** `https://records.nhl.com/site/api/goalie-game-stats`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_home_point_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-home-point-streak`

**URL template:** `https://records.nhl.com/site/api/goalie-home-point-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_home_win_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-home-win-streak`

**URL template:** `https://records.nhl.com/site/api/goalie-home-win-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_outdoor_totals_career
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-outdoor-totals-career`

**URL template:** `https://records.nhl.com/site/api/goalie-outdoor-totals-career`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_outdoor_totals_game
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-outdoor-totals-game`

**URL template:** `https://records.nhl.com/site/api/goalie-outdoor-totals-game`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_outdoor_totals_period
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-outdoor-totals-period`

**URL template:** `https://records.nhl.com/site/api/goalie-outdoor-totals-period`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_playoff_clinching_game
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-playoff-clinching-game`

**URL template:** `https://records.nhl.com/site/api/goalie-playoff-clinching-game`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_playoff_clinching_game_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-playoff-clinching-game-season`

**URL template:** `https://records.nhl.com/site/api/goalie-playoff-clinching-game-season`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_playoff_clinching_game_series
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-playoff-clinching-game-series`

**URL template:** `https://records.nhl.com/site/api/goalie-playoff-clinching-game-series`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_playoff_clinching_game_totals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-playoff-clinching-game-totals`

**URL template:** `https://records.nhl.com/site/api/goalie-playoff-clinching-game-totals`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_playoff_elimination_game
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-playoff-elimination-game`

**URL template:** `https://records.nhl.com/site/api/goalie-playoff-elimination-game`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_playoff_elimination_game_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-playoff-elimination-game-season`

**URL template:** `https://records.nhl.com/site/api/goalie-playoff-elimination-game-season`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_playoff_elimination_game_series
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-playoff-elimination-game-series`

**URL template:** `https://records.nhl.com/site/api/goalie-playoff-elimination-game-series`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_playoff_elimination_game_totals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-playoff-elimination-game-totals`

**URL template:** `https://records.nhl.com/site/api/goalie-playoff-elimination-game-totals`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_playoff_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-playoff-streak`

**URL template:** `https://records.nhl.com/site/api/goalie-playoff-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_playoff_win_streak_multiple_seasons
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-playoff-win-streak-multiple-seasons`

**URL template:** `https://records.nhl.com/site/api/goalie-playoff-win-streak-multiple-seasons`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_point_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-point-streak`

**URL template:** `https://records.nhl.com/site/api/goalie-point-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_road_point_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-road-point-streak`

**URL template:** `https://records.nhl.com/site/api/goalie-road-point-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_road_win_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-road-win-streak`

**URL template:** `https://records.nhl.com/site/api/goalie-road-win-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_scf_career
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-scf-career`

**URL template:** `https://records.nhl.com/site/api/goalie-scf-career`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_scf_game
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-scf-game`

**URL template:** `https://records.nhl.com/site/api/goalie-scf-game`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_scf_period
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-scf-period`

**URL template:** `https://records.nhl.com/site/api/goalie-scf-period`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_scf_series
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-scf-series`

**URL template:** `https://records.nhl.com/site/api/goalie-scf-series`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_scf_series_shutout_sequence
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-scf-series-shutout-sequence`

**URL template:** `https://records.nhl.com/site/api/goalie-scf-series-shutout-sequence`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_scf_series_shutout_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-scf-series-shutout-streak`

**URL template:** `https://records.nhl.com/site/api/goalie-scf-series-shutout-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_scf_shutout_sequence_multiple_seasons
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-scf-shutout-sequence-multiple-seasons`

**URL template:** `https://records.nhl.com/site/api/goalie-scf-shutout-sequence-multiple-seasons`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_scf_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-scf-streak`

**URL template:** `https://records.nhl.com/site/api/goalie-scf-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_scf_win_streak_multiple_seasons
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-scf-win-streak-multiple-seasons`

**URL template:** `https://records.nhl.com/site/api/goalie-scf-win-streak-multiple-seasons`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_season_scoring
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-season-scoring`

**URL template:** `https://records.nhl.com/site/api/goalie-season-scoring`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_season_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-season-stats`

**URL template:** `https://records.nhl.com/site/api/goalie-season-stats`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_season_stats_incl_playoffs
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie_season_stats_incl_playoffs`

**URL template:** `https://records.nhl.com/site/api/goalie_season_stats_incl_playoffs`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_shutout_games_streak_playoffs
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-shutout-games-streak-playoffs`

**URL template:** `https://records.nhl.com/site/api/goalie-shutout-games-streak-playoffs`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_shutout_games_streak_regular_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-shutout-games-streak-regular-season`

**URL template:** `https://records.nhl.com/site/api/goalie-shutout-games-streak-regular-season`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_shutout_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-shutout-streak`

**URL template:** `https://records.nhl.com/site/api/goalie-shutout-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-stats`

**URL template:** `https://records.nhl.com/site/api/goalie-stats`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_undefeated_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-undefeated-streak`

**URL template:** `https://records.nhl.com/site/api/goalie-undefeated-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_undefeated_streak_first_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-undefeated-streak-first-season`

**URL template:** `https://records.nhl.com/site/api/goalie-undefeated-streak-first-season`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_win_plateaus
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-win-plateaus`

**URL template:** `https://records.nhl.com/site/api/goalie-win-plateaus`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_win_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-win-streak`

**URL template:** `https://records.nhl.com/site/api/goalie-win-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_youngest_shutouts
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-youngest-shutouts`

**URL template:** `https://records.nhl.com/site/api/goalie-youngest-shutouts`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### goalie_youngest_winners
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `goalie-youngest-winners`

**URL template:** `https://records.nhl.com/site/api/goalie-youngest-winners`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### hof_office
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `hof/office`

**URL template:** `https://records.nhl.com/site/api/hof/office`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### hof_office_officeId
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `hof/office/{officeId}`

**URL template:** `https://records.nhl.com/site/api/hof/office/{officeId}`

**Path parameters:**
|name     |regex |
|:--------|:-----|
|officeId |NA    |

**Query parameters (documented):** (none)

---

### hof_players
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `hof/players`

**URL template:** `https://records.nhl.com/site/api/hof/players`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### hof_players_officeId
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `hof/players/{officeId}`

**URL template:** `https://records.nhl.com/site/api/hof/players/{officeId}`

**Path parameters:**
|name     |regex |
|:--------|:-----|
|officeId |NA    |

**Query parameters (documented):** (none)

---

### home_team_record
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `home-team-record`

**URL template:** `https://records.nhl.com/site/api/home-team-record`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### international_both_teams_game_record
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-both-teams-game-record`

**URL template:** `https://records.nhl.com/site/api/international-both-teams-game-record`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### international_both_teams_period_record
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-both-teams-period-record`

**URL template:** `https://records.nhl.com/site/api/international-both-teams-period-record`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### international_fastest_skater_goals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-fastest-skater-goals`

**URL template:** `https://records.nhl.com/site/api/international-fastest-skater-goals`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### international_fastest_three_goals_both_teams
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-fastest-three-goals-both-teams`

**URL template:** `https://records.nhl.com/site/api/international-fastest-three-goals-both-teams`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### international_fastest_three_goals_one_skater
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-fastest-three-goals-one-skater`

**URL template:** `https://records.nhl.com/site/api/international-fastest-three-goals-one-skater`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### international_fastest_three_goals_one_team
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-fastest-three-goals-one-team`

**URL template:** `https://records.nhl.com/site/api/international-fastest-three-goals-one-team`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### international_fastest_two_goals_both_teams
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-fastest-two-goals-both-teams`

**URL template:** `https://records.nhl.com/site/api/international-fastest-two-goals-both-teams`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### international_fastest_two_goals_one_skater
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-fastest-two-goals-one-skater`

**URL template:** `https://records.nhl.com/site/api/international-fastest-two-goals-one-skater`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### international_fastest_two_goals_one_team
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-fastest-two-goals-one-team`

**URL template:** `https://records.nhl.com/site/api/international-fastest-two-goals-one-team`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### international_goaltender_career_record
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-goaltender-career-record`

**URL template:** `https://records.nhl.com/site/api/international-goaltender-career-record`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### international_goaltender_game_record
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-goaltender-game-record`

**URL template:** `https://records.nhl.com/site/api/international-goaltender-game-record`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### international_goaltender_period_record
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-goaltender-period-record`

**URL template:** `https://records.nhl.com/site/api/international-goaltender-period-record`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### international_goaltender_tournament_record
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-goaltender-tournament-record`

**URL template:** `https://records.nhl.com/site/api/international-goaltender-tournament-record`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### international_playoff_series_details
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-playoff-series-details`

**URL template:** `https://records.nhl.com/site/api/international-playoff-series-details`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### international_skater_career_record
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-skater-career-record`

**URL template:** `https://records.nhl.com/site/api/international-skater-career-record`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### international_skater_game_record
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-skater-game-record`

**URL template:** `https://records.nhl.com/site/api/international-skater-game-record`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### international_skater_penalty_shots
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-skater-penalty-shots`

**URL template:** `https://records.nhl.com/site/api/international-skater-penalty-shots`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### international_skater_period_record
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-skater-period-record`

**URL template:** `https://records.nhl.com/site/api/international-skater-period-record`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### international_skater_short_handed_goals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-skater-short-handed-goals`

**URL template:** `https://records.nhl.com/site/api/international-skater-short-handed-goals`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### international_skater_tournament_record
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-skater-tournament-record`

**URL template:** `https://records.nhl.com/site/api/international-skater-tournament-record`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### international_team_all_time_record
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-team-all-time-record`

**URL template:** `https://records.nhl.com/site/api/international-team-all-time-record`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### international_team_game_record
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-team-game-record`

**URL template:** `https://records.nhl.com/site/api/international-team-game-record`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### international_team_period_record
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-team-period-record`

**URL template:** `https://records.nhl.com/site/api/international-team-period-record`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### international_team_tournament_record
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-team-tournament-record`

**URL template:** `https://records.nhl.com/site/api/international-team-tournament-record`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### international_tournament_winner
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `international-tournament-winner`

**URL template:** `https://records.nhl.com/site/api/international-tournament-winner`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### league_playoff_year_totals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `league-playoff-year-totals`

**URL template:** `https://records.nhl.com/site/api/league-playoff-year-totals`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### logo
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `logo`

**URL template:** `https://records.nhl.com/site/api/logo`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### media_three_star
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `media-three-star`

**URL template:** `https://records.nhl.com/site/api/media-three-star`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### menu
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `{franchiseTricode}/menu`

**URL template:** `https://records.nhl.com/site/api/{franchiseTricode}/menu`

**Path parameters:**
|name             |regex |
|:----------------|:-----|
|franchiseTricode |NA    |

**Query parameters (documented):** (none)

---

### meta_data
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `meta-data/{path}`

**URL template:** `https://records.nhl.com/site/api/meta-data/{path}`

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

**URL template:** `https://records.nhl.com/site/api/milestone-100-point-season`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### milestone_100_point_season_id
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `milestone-100-point-season/{id}`

**URL template:** `https://records.nhl.com/site/api/milestone-100-point-season/{id}`

**Path parameters:**
|name |regex |
|:----|:-----|
|id   |NA    |

**Query parameters (documented):** (none)

---

### milestone_1000_point_career
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `milestone-1000-point-career`

**URL template:** `https://records.nhl.com/site/api/milestone-1000-point-career`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### milestone_1000_point_career_id
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `milestone-1000-point-career/{id}`

**URL template:** `https://records.nhl.com/site/api/milestone-1000-point-career/{id}`

**Path parameters:**
|name |regex |
|:----|:-----|
|id   |NA    |

**Query parameters (documented):** (none)

---

### milestone_5_goal_game
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `milestone-5-goal-game`

**URL template:** `https://records.nhl.com/site/api/milestone-5-goal-game`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### milestone_5_goal_game_id
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `milestone-5-goal-game/{id}`

**URL template:** `https://records.nhl.com/site/api/milestone-5-goal-game/{id}`

**Path parameters:**
|name |regex |
|:----|:-----|
|id   |NA    |

**Query parameters (documented):** (none)

---

### milestone_50_goal_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `milestone-50-goal-season`

**URL template:** `https://records.nhl.com/site/api/milestone-50-goal-season`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### milestone_50_goal_season_id
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `milestone-50-goal-season/{id}`

**URL template:** `https://records.nhl.com/site/api/milestone-50-goal-season/{id}`

**Path parameters:**
|name |regex |
|:----|:-----|
|id   |NA    |

**Query parameters (documented):** (none)

---

### milestone_500_goal_career
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `milestone-500-goal-career`

**URL template:** `https://records.nhl.com/site/api/milestone-500-goal-career`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### milestone_500_goal_career_id
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `milestone-500-goal-career/{id}`

**URL template:** `https://records.nhl.com/site/api/milestone-500-goal-career/{id}`

**Path parameters:**
|name |regex |
|:----|:-----|
|id   |NA    |

**Query parameters (documented):** (none)

---

### milestone_tracker
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `milestone-tracker`

**URL template:** `https://records.nhl.com/site/api/milestone-tracker`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### neutral_site_standings
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `neutral-site-standings`

**URL template:** `https://records.nhl.com/site/api/neutral-site-standings`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### non_shutout_streak_incl_playoffs
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `non-shutout-streak-incl-playoffs`

**URL template:** `https://records.nhl.com/site/api/non-shutout-streak-incl-playoffs`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### officials
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `officials`

**URL template:** `https://records.nhl.com/site/api/officials`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### officials_type
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `officials/{type}`

**URL template:** `https://records.nhl.com/site/api/officials/{type}`

**Path parameters:**
|name |regex |
|:----|:-----|
|type |NA    |

**Query parameters (documented):** (none)

---

### penalty_shots
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `penalty-shots`

**URL template:** `https://records.nhl.com/site/api/penalty-shots`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### phwa_all_star_team
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `phwa-all-star-team`

**URL template:** `https://records.nhl.com/site/api/phwa-all-star-team`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### ping
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `ping`

**URL template:** `https://records.nhl.com/site/api/ping`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### player
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `player`

**URL template:** `https://records.nhl.com/site/api/player`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### player_byTeam
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `player/byTeam/{teamId}`

**URL template:** `https://records.nhl.com/site/api/player/byTeam/{teamId}`

**Path parameters:**
|name   |regex |
|:------|:-----|
|teamId |NA    |

**Query parameters (documented):** (none)

---

### player_game_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `player-game-stats`

**URL template:** `https://records.nhl.com/site/api/player-game-stats`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### player_id
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `player/{id}`

**URL template:** `https://records.nhl.com/site/api/player/{id}`

**Path parameters:**
|name |regex |
|:----|:-----|
|id   |NA    |

**Query parameters (documented):** (none)

---

### player_stanley_cup_wins
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `player-stanley-cup-wins`

**URL template:** `https://records.nhl.com/site/api/player-stanley-cup-wins`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### player_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `player-stats`

**URL template:** `https://records.nhl.com/site/api/player-stats`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### playoff_captains
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `playoff-captains`

**URL template:** `https://records.nhl.com/site/api/playoff-captains`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### playoff_franchise_game_by_game_records
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `playoff-franchise-game-by-game-records`

**URL template:** `https://records.nhl.com/site/api/playoff-franchise-game-by-game-records`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### playoff_franchise_vs_team
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `playoff-franchise-vs-team`

**URL template:** `https://records.nhl.com/site/api/playoff-franchise-vs-team`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### playoff_game_overtime_scoring
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `playoff-game-overtime-scoring`

**URL template:** `https://records.nhl.com/site/api/playoff-game-overtime-scoring`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### playoff_goalie_series_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `playoff-goalie-series-stats`

**URL template:** `https://records.nhl.com/site/api/playoff-goalie-series-stats`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### playoff_round_robin_game
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `playoff-round-robin-game`

**URL template:** `https://records.nhl.com/site/api/playoff-round-robin-game`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### playoff_series
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `playoff-series`

**URL template:** `https://records.nhl.com/site/api/playoff-series`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### playoff_series_byFinal
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `playoff-series/byFinal`

**URL template:** `https://records.nhl.com/site/api/playoff-series/byFinal`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### playoff_series_bySeason
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `playoff-series/bySeason/{seasonId}`

**URL template:** `https://records.nhl.com/site/api/playoff-series/bySeason/{seasonId}`

**Path parameters:**
|name     |regex |
|:--------|:-----|
|seasonId |NA    |

**Query parameters (documented):** (none)

---

### playoff_series_bySeries
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `playoff-series/bySeries/{seriesLetter}`

**URL template:** `https://records.nhl.com/site/api/playoff-series/bySeries/{seriesLetter}`

**Path parameters:**
|name         |regex |
|:------------|:-----|
|seriesLetter |NA    |

**Query parameters (documented):** (none)

---

### playoff_skater_series_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `playoff-skater-series-stats`

**URL template:** `https://records.nhl.com/site/api/playoff-skater-series-stats`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### playoff_team_series_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `playoff-team-series-stats`

**URL template:** `https://records.nhl.com/site/api/playoff-team-series-stats`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### playoff_team_series_stats_both_teams
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `playoff-team-series-stats-both-teams`

**URL template:** `https://records.nhl.com/site/api/playoff-team-series-stats-both-teams`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### record_category
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `record-category`

**URL template:** `https://records.nhl.com/site/api/record-category`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### record_detail
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `{franchiseTricode}/record-detail`

**URL template:** `https://records.nhl.com/site/api/{franchiseTricode}/record-detail`

**Path parameters:**
|name             |regex |
|:----------------|:-----|
|franchiseTricode |NA    |

**Query parameters (documented):** (none)

---

### record_meta_details
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `record-meta-details/{path}`

**URL template:** `https://records.nhl.com/site/api/record-meta-details/{path}`

**Path parameters:**
|name |regex |
|:----|:-----|
|path |.*    |

**Query parameters (documented):** (none)

---

### record_video_detail
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `record-video-detail`

**URL template:** `https://records.nhl.com/site/api/record-video-detail`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### scf_appearances_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `scf-appearances-streak`

**URL template:** `https://records.nhl.com/site/api/scf-appearances-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### scf_franchise_totals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `scf-franchise-totals`

**URL template:** `https://records.nhl.com/site/api/scf-franchise-totals`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### scf_situational_records
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `scf-situational-records`

**URL template:** `https://records.nhl.com/site/api/scf-situational-records`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### scf_team_totals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `scf-team-totals`

**URL template:** `https://records.nhl.com/site/api/scf-team-totals`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### scoring_plateaus
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `scoring-plateaus`

**URL template:** `https://records.nhl.com/site/api/scoring-plateaus`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### season_event
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `season/event`

**URL template:** `https://records.nhl.com/site/api/season/event`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### season_event_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `season/event/games`

**URL template:** `https://records.nhl.com/site/api/season/event/games`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### season_event_offseason_games_outside_north_america
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `season/event/offseason-games-outside-north-america`

**URL template:** `https://records.nhl.com/site/api/season/event/offseason-games-outside-north-america`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### season_event_preseason_games_outside_north_america
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `season/event/preseason-games-outside-north-america`

**URL template:** `https://records.nhl.com/site/api/season/event/preseason-games-outside-north-america`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### series_situational_records
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `series-situational-records`

**URL template:** `https://records.nhl.com/site/api/series-situational-records`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### shootout_goalie_career
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `shootout-goalie-career`

**URL template:** `https://records.nhl.com/site/api/shootout-goalie-career`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### shootout_goalie_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `shootout-goalie-season`

**URL template:** `https://records.nhl.com/site/api/shootout-goalie-season`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### shootout_skaters_career
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `shootout-skaters-career`

**URL template:** `https://records.nhl.com/site/api/shootout-skaters-career`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### shootout_skaters_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `shootout-skaters-season`

**URL template:** `https://records.nhl.com/site/api/shootout-skaters-season`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_assist_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-assist-streak`

**URL template:** `https://records.nhl.com/site/api/skater-assist-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_assist_streak_start_of_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-assist-streak-start-of-season`

**URL template:** `https://records.nhl.com/site/api/skater-assist-streak-start-of-season`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_career_scoring_by_position
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-career-scoring-by-position`

**URL template:** `https://records.nhl.com/site/api/skater-career-scoring-by-position`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_career_scoring_playoffs
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-career-scoring-playoffs`

**URL template:** `https://records.nhl.com/site/api/skater-career-scoring-playoffs`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_career_scoring_regular_plus_playoffs
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-career-scoring-regular-plus-playoffs`

**URL template:** `https://records.nhl.com/site/api/skater-career-scoring-regular-plus-playoffs`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_career_scoring_regular_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-career-scoring-regular-season`

**URL template:** `https://records.nhl.com/site/api/skater-career-scoring-regular-season`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_first_game_scoring
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-first-game-scoring`

**URL template:** `https://records.nhl.com/site/api/skater-first-game-scoring`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_first_season_game_scoring
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-first-season-game-scoring`

**URL template:** `https://records.nhl.com/site/api/skater-first-season-game-scoring`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_franchise_totals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-franchise-totals`

**URL template:** `https://records.nhl.com/site/api/skater-franchise-totals`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_game_assists
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-game-assists`

**URL template:** `https://records.nhl.com/site/api/skater-game-assists`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_game_goals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-game-goals`

**URL template:** `https://records.nhl.com/site/api/skater-game-goals`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_game_penalties
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-game-penalties`

**URL template:** `https://records.nhl.com/site/api/skater-game-penalties`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_game_penalty_minutes
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-game-penalty-minutes`

**URL template:** `https://records.nhl.com/site/api/skater-game-penalty-minutes`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_game_points
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-game-points`

**URL template:** `https://records.nhl.com/site/api/skater-game-points`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_game_power_play_goals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-game-power-play-goals`

**URL template:** `https://records.nhl.com/site/api/skater-game-power-play-goals`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_game_shorthanded_goals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-game-shorthanded-goals`

**URL template:** `https://records.nhl.com/site/api/skater-game-shorthanded-goals`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_game_shots
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-game-shots`

**URL template:** `https://records.nhl.com/site/api/skater-game-shots`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_goal_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-goal-streak`

**URL template:** `https://records.nhl.com/site/api/skater-goal-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_latest_game_tying_goal
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-latest-game-tying-goal`

**URL template:** `https://records.nhl.com/site/api/skater-latest-game-tying-goal`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_latest_go_ahead_goal
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-latest-go-ahead-goal`

**URL template:** `https://records.nhl.com/site/api/skater-latest-go-ahead-goal`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_latest_goals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-latest-goals`

**URL template:** `https://records.nhl.com/site/api/skater-latest-goals`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_latest_series_clinching_goal
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-latest-series-clinching-goal`

**URL template:** `https://records.nhl.com/site/api/skater-latest-series-clinching-goal`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_most_goals_1st_50_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-most-goals-1st-50-games`

**URL template:** `https://records.nhl.com/site/api/skater-most-goals-1st-50-games`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_multi_assist_games_career
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-multi-assist-games-career`

**URL template:** `https://records.nhl.com/site/api/skater-multi-assist-games-career`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_multi_assist_games_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-multi-assist-games-season`

**URL template:** `https://records.nhl.com/site/api/skater-multi-assist-games-season`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_multi_goal_games_career
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-multi-goal-games-career`

**URL template:** `https://records.nhl.com/site/api/skater-multi-goal-games-career`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_multi_goal_games_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-multi-goal-games-season`

**URL template:** `https://records.nhl.com/site/api/skater-multi-goal-games-season`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_multi_point_games_career
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-multi-point-games-career`

**URL template:** `https://records.nhl.com/site/api/skater-multi-point-games-career`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_multi_point_games_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-multi-point-games-season`

**URL template:** `https://records.nhl.com/site/api/skater-multi-point-games-season`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_multipoint_games_career_by_position
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-multipoint-games-career-by-position`

**URL template:** `https://records.nhl.com/site/api/skater-multipoint-games-career-by-position`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_outdoor_fastest_goal_from_period_start
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-outdoor-fastest-goal-from-period-start`

**URL template:** `https://records.nhl.com/site/api/skater-outdoor-fastest-goal-from-period-start`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_outdoor_totals_career
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-outdoor-totals-career`

**URL template:** `https://records.nhl.com/site/api/skater-outdoor-totals-career`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_outdoor_totals_game
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-outdoor-totals-game`

**URL template:** `https://records.nhl.com/site/api/skater-outdoor-totals-game`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_outdoor_totals_period
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-outdoor-totals-period`

**URL template:** `https://records.nhl.com/site/api/skater-outdoor-totals-period`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_period_penalties
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-period-penalties`

**URL template:** `https://records.nhl.com/site/api/skater-period-penalties`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_period_scoring
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-period-scoring`

**URL template:** `https://records.nhl.com/site/api/skater-period-scoring`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_period_shots
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-period-shots`

**URL template:** `https://records.nhl.com/site/api/skater-period-shots`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_playoff_clinching_game
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-playoff-clinching-game`

**URL template:** `https://records.nhl.com/site/api/skater-playoff-clinching-game`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_playoff_clinching_game_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-playoff-clinching-game-season`

**URL template:** `https://records.nhl.com/site/api/skater-playoff-clinching-game-season`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_playoff_clinching_game_series
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-playoff-clinching-game-series`

**URL template:** `https://records.nhl.com/site/api/skater-playoff-clinching-game-series`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_playoff_clinching_game_totals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-playoff-clinching-game-totals`

**URL template:** `https://records.nhl.com/site/api/skater-playoff-clinching-game-totals`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_playoff_elimination_game
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-playoff-elimination-game`

**URL template:** `https://records.nhl.com/site/api/skater-playoff-elimination-game`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_playoff_elimination_game_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-playoff-elimination-game-season`

**URL template:** `https://records.nhl.com/site/api/skater-playoff-elimination-game-season`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_playoff_elimination_game_series
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-playoff-elimination-game-series`

**URL template:** `https://records.nhl.com/site/api/skater-playoff-elimination-game-series`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_playoff_elimination_game_totals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-playoff-elimination-game-totals`

**URL template:** `https://records.nhl.com/site/api/skater-playoff-elimination-game-totals`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_playoff_scoring
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-playoff-scoring`

**URL template:** `https://records.nhl.com/site/api/skater-playoff-scoring`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_playoff_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-playoff-streak`

**URL template:** `https://records.nhl.com/site/api/skater-playoff-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_point_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-point-streak`

**URL template:** `https://records.nhl.com/site/api/skater-point-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_point_streak_multiple_playoffs
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-point-streak-multiple-playoffs`

**URL template:** `https://records.nhl.com/site/api/skater-point-streak-multiple-playoffs`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_point_streak_start_of_career
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-point-streak-start-of-career`

**URL template:** `https://records.nhl.com/site/api/skater-point-streak-start-of-career`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_real_time_stats_career
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-real-time-stats-career`

**URL template:** `https://records.nhl.com/site/api/skater-real-time-stats-career`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_real_time_stats_game_blocked_shots
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-real-time-stats-game-blocked-shots`

**URL template:** `https://records.nhl.com/site/api/skater-real-time-stats-game-blocked-shots`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_real_time_stats_game_faceoffs
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-real-time-stats-game-faceoffs`

**URL template:** `https://records.nhl.com/site/api/skater-real-time-stats-game-faceoffs`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_real_time_stats_game_giveaways
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-real-time-stats-game-giveaways`

**URL template:** `https://records.nhl.com/site/api/skater-real-time-stats-game-giveaways`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_real_time_stats_game_hits
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-real-time-stats-game-hits`

**URL template:** `https://records.nhl.com/site/api/skater-real-time-stats-game-hits`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_real_time_stats_game_missed_shots
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-real-time-stats-game-missed-shots`

**URL template:** `https://records.nhl.com/site/api/skater-real-time-stats-game-missed-shots`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_real_time_stats_game_shifts
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-real-time-stats-game-shifts`

**URL template:** `https://records.nhl.com/site/api/skater-real-time-stats-game-shifts`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_real_time_stats_game_takeaways
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-real-time-stats-game-takeaways`

**URL template:** `https://records.nhl.com/site/api/skater-real-time-stats-game-takeaways`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_real_time_stats_game_time_on_ice
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-real-time-stats-game-time-on-ice`

**URL template:** `https://records.nhl.com/site/api/skater-real-time-stats-game-time-on-ice`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_real_time_stats_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-real-time-stats-season`

**URL template:** `https://records.nhl.com/site/api/skater-real-time-stats-season`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_regular_plus_playoff_scoring
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-regular-plus-playoff-scoring`

**URL template:** `https://records.nhl.com/site/api/skater-regular-plus-playoff-scoring`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_regular_season_scoring
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-regular-season-scoring`

**URL template:** `https://records.nhl.com/site/api/skater-regular-season-scoring`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_rookie_game_scoring
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-rookie-game-scoring`

**URL template:** `https://records.nhl.com/site/api/skater-rookie-game-scoring`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_scf_career_scoring
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-scf-career-scoring`

**URL template:** `https://records.nhl.com/site/api/skater-scf-career-scoring`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_scf_game_scoring
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-scf-game-scoring`

**URL template:** `https://records.nhl.com/site/api/skater-scf-game-scoring`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_scf_series_scoring
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-scf-series-scoring`

**URL template:** `https://records.nhl.com/site/api/skater-scf-series-scoring`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_scf_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-scf-streak`

**URL template:** `https://records.nhl.com/site/api/skater-scf-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_youngest_3_point_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-youngest-3-point-games`

**URL template:** `https://records.nhl.com/site/api/skater-youngest-3-point-games`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_youngest_4_point_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-youngest-4-point-games`

**URL template:** `https://records.nhl.com/site/api/skater-youngest-4-point-games`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_youngest_5_point_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-youngest-5-point-games`

**URL template:** `https://records.nhl.com/site/api/skater-youngest-5-point-games`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### skater_youngest_goal_scorers
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `skater-youngest-goal-scorers`

**URL template:** `https://records.nhl.com/site/api/skater-youngest-goal-scorers`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### special_event
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `special-event`

**URL template:** `https://records.nhl.com/site/api/special-event`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team`

**URL template:** `https://records.nhl.com/site/api/team`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_affiliate
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-affiliate`

**URL template:** `https://records.nhl.com/site/api/team-affiliate`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_all_time_shootout_records
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-all-time-shootout-records`

**URL template:** `https://records.nhl.com/site/api/team-all-time-shootout-records`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_by_game_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-by-game-stats`

**URL template:** `https://records.nhl.com/site/api/team-by-game-stats`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_consecutive_series_won
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-consecutive-series-won`

**URL template:** `https://records.nhl.com/site/api/team-consecutive-series-won`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_game_consecutive_goals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-game-consecutive-goals`

**URL template:** `https://records.nhl.com/site/api/team-game-consecutive-goals`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_game_record_and_scoring
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-game-record-and-scoring`

**URL template:** `https://records.nhl.com/site/api/team-game-record-and-scoring`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_game_record_and_scoring_both_teams
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-game-record-and-scoring-both-teams`

**URL template:** `https://records.nhl.com/site/api/team-game-record-and-scoring-both-teams`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_non_shutout_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-non-shutout-streak`

**URL template:** `https://records.nhl.com/site/api/team-non-shutout-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_outdoor_fastest_2_goals_from_period_start_one_team
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-outdoor-fastest-2-goals-from-period-start-one-team`

**URL template:** `https://records.nhl.com/site/api/team-outdoor-fastest-2-goals-from-period-start-one-team`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_outdoor_fastest_2_goals_one_team
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-outdoor-fastest-2-goals-one-team`

**URL template:** `https://records.nhl.com/site/api/team-outdoor-fastest-2-goals-one-team`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_outdoor_totals_career
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-outdoor-totals-career`

**URL template:** `https://records.nhl.com/site/api/team-outdoor-totals-career`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_outdoor_totals_game_both_teams
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-outdoor-totals-game-both-teams`

**URL template:** `https://records.nhl.com/site/api/team-outdoor-totals-game-both-teams`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_outdoor_totals_game_one_team
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-outdoor-totals-game-one-team`

**URL template:** `https://records.nhl.com/site/api/team-outdoor-totals-game-one-team`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_outdoor_totals_period_both_teams
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-outdoor-totals-period-both-teams`

**URL template:** `https://records.nhl.com/site/api/team-outdoor-totals-period-both-teams`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_outdoor_totals_period_one_team
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-outdoor-totals-period-one-team`

**URL template:** `https://records.nhl.com/site/api/team-outdoor-totals-period-one-team`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_period_penalties
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-period-penalties`

**URL template:** `https://records.nhl.com/site/api/team-period-penalties`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_period_scoring
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-period-scoring`

**URL template:** `https://records.nhl.com/site/api/team-period-scoring`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_period_scoring_both_teams
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-period-scoring-both-teams`

**URL template:** `https://records.nhl.com/site/api/team-period-scoring-both-teams`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_playoff_clinching_game
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-playoff-clinching-game`

**URL template:** `https://records.nhl.com/site/api/team-playoff-clinching-game`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_playoff_clinching_game_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-playoff-clinching-game-season`

**URL template:** `https://records.nhl.com/site/api/team-playoff-clinching-game-season`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_playoff_clinching_game_series
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-playoff-clinching-game-series`

**URL template:** `https://records.nhl.com/site/api/team-playoff-clinching-game-series`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_playoff_clinching_game_totals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-playoff-clinching-game-totals`

**URL template:** `https://records.nhl.com/site/api/team-playoff-clinching-game-totals`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_playoff_elimination_game
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-playoff-elimination-game`

**URL template:** `https://records.nhl.com/site/api/team-playoff-elimination-game`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_playoff_elimination_game_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-playoff-elimination-game-season`

**URL template:** `https://records.nhl.com/site/api/team-playoff-elimination-game-season`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_playoff_elimination_game_series
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-playoff-elimination-game-series`

**URL template:** `https://records.nhl.com/site/api/team-playoff-elimination-game-series`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_playoff_elimination_game_totals
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-playoff-elimination-game-totals`

**URL template:** `https://records.nhl.com/site/api/team-playoff-elimination-game-totals`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_playoff_ot_period_scoring_both_teams
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-playoff-ot-period-scoring-both-teams`

**URL template:** `https://records.nhl.com/site/api/team-playoff-ot-period-scoring-both-teams`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_playoff_ot_period_scoring_one_team
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-playoff-ot-period-scoring-one-team`

**URL template:** `https://records.nhl.com/site/api/team-playoff-ot-period-scoring-one-team`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_playoff_ot_shot_totals_both_teams
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-playoff-ot-shot-totals-both-teams`

**URL template:** `https://records.nhl.com/site/api/team-playoff-ot-shot-totals-both-teams`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_playoff_ot_shot_totals_one_team
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-playoff-ot-shot-totals-one-team`

**URL template:** `https://records.nhl.com/site/api/team-playoff-ot-shot-totals-one-team`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_playoff_streak_multiple_seasons
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-playoff-streak-multiple-seasons`

**URL template:** `https://records.nhl.com/site/api/team-playoff-streak-multiple-seasons`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_playoff_win_streak_one_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-playoff-win-streak-one-season`

**URL template:** `https://records.nhl.com/site/api/team-playoff-win-streak-one-season`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_record_april
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-record-april`

**URL template:** `https://records.nhl.com/site/api/team-record-april`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_record_by_month
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-record-by-month`

**URL template:** `https://records.nhl.com/site/api/team-record-by-month`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_record_december
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-record-december`

**URL template:** `https://records.nhl.com/site/api/team-record-december`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_record_february
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-record-february`

**URL template:** `https://records.nhl.com/site/api/team-record-february`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_record_january
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-record-january`

**URL template:** `https://records.nhl.com/site/api/team-record-january`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_record_march
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-record-march`

**URL template:** `https://records.nhl.com/site/api/team-record-march`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_record_november
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-record-november`

**URL template:** `https://records.nhl.com/site/api/team-record-november`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_record_october
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-record-october`

**URL template:** `https://records.nhl.com/site/api/team-record-october`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_home_loss_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-home-loss-streak`

**URL template:** `https://records.nhl.com/site/api/team-season-home-loss-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_home_loss_streak_start_of_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-home-loss-streak-start-of-season`

**URL template:** `https://records.nhl.com/site/api/team-season-home-loss-streak-start-of-season`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_home_point_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-home-point-streak`

**URL template:** `https://records.nhl.com/site/api/team-season-home-point-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_home_point_streak_start_of_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-home-point-streak-start-of-season`

**URL template:** `https://records.nhl.com/site/api/team-season-home-point-streak-start-of-season`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_home_undefeated_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-home-undefeated-streak`

**URL template:** `https://records.nhl.com/site/api/team-season-home-undefeated-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_home_undefeated_streak_incl_playoffs
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-home-undefeated-streak-incl-playoffs`

**URL template:** `https://records.nhl.com/site/api/team-season-home-undefeated-streak-incl-playoffs`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_home_undefeated_streak_start_of_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-home-undefeated-streak-start-of-season`

**URL template:** `https://records.nhl.com/site/api/team-season-home-undefeated-streak-start-of-season`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_home_win_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-home-win-streak`

**URL template:** `https://records.nhl.com/site/api/team-season-home-win-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_home_win_streak_incl_playoffs
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-home-win-streak-incl-playoffs`

**URL template:** `https://records.nhl.com/site/api/team-season-home-win-streak-incl-playoffs`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_home_win_streak_start_of_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-home-win-streak-start-of-season`

**URL template:** `https://records.nhl.com/site/api/team-season-home-win-streak-start-of-season`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_home_winless_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-home-winless-streak`

**URL template:** `https://records.nhl.com/site/api/team-season-home-winless-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_home_winless_streak_start_of_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-home-winless-streak-start-of-season`

**URL template:** `https://records.nhl.com/site/api/team-season-home-winless-streak-start-of-season`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_loss_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-loss-streak`

**URL template:** `https://records.nhl.com/site/api/team-season-loss-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_loss_streak_start_of_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-loss-streak-start-of-season`

**URL template:** `https://records.nhl.com/site/api/team-season-loss-streak-start-of-season`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_overtime_games
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-overtime-games`

**URL template:** `https://records.nhl.com/site/api/team-season-overtime-games`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_point_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-point-streak`

**URL template:** `https://records.nhl.com/site/api/team-season-point-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_point_streak_start_of_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-point-streak-start-of-season`

**URL template:** `https://records.nhl.com/site/api/team-season-point-streak-start-of-season`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_record_and_scoring
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-record-and-scoring`

**URL template:** `https://records.nhl.com/site/api/team-season-record-and-scoring`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_road_loss_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-road-loss-streak`

**URL template:** `https://records.nhl.com/site/api/team-season-road-loss-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_road_loss_streak_start_of_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-road-loss-streak-start-of-season`

**URL template:** `https://records.nhl.com/site/api/team-season-road-loss-streak-start-of-season`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_road_point_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-road-point-streak`

**URL template:** `https://records.nhl.com/site/api/team-season-road-point-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_road_point_streak_start_of_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-road-point-streak-start-of-season`

**URL template:** `https://records.nhl.com/site/api/team-season-road-point-streak-start-of-season`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_road_undefeated_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-road-undefeated-streak`

**URL template:** `https://records.nhl.com/site/api/team-season-road-undefeated-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_road_undefeated_streak_incl_playoffs
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-road-undefeated-streak-incl-playoffs`

**URL template:** `https://records.nhl.com/site/api/team-season-road-undefeated-streak-incl-playoffs`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_road_undefeated_streak_start_of_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-road-undefeated-streak-start-of-season`

**URL template:** `https://records.nhl.com/site/api/team-season-road-undefeated-streak-start-of-season`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_road_win_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-road-win-streak`

**URL template:** `https://records.nhl.com/site/api/team-season-road-win-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_road_win_streak_incl_playoffs
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-road-win-streak-incl-playoffs`

**URL template:** `https://records.nhl.com/site/api/team-season-road-win-streak-incl-playoffs`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_road_win_streak_start_of_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-road-win-streak-start-of-season`

**URL template:** `https://records.nhl.com/site/api/team-season-road-win-streak-start-of-season`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_road_winless_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-road-winless-streak`

**URL template:** `https://records.nhl.com/site/api/team-season-road-winless-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_road_winless_streak_start_of_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-road-winless-streak-start-of-season`

**URL template:** `https://records.nhl.com/site/api/team-season-road-winless-streak-start-of-season`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_shootout_records
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-shootout-records`

**URL template:** `https://records.nhl.com/site/api/team-season-shootout-records`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_shutout_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-shutout-streak`

**URL template:** `https://records.nhl.com/site/api/team-season-shutout-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_undefeated_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-undefeated-streak`

**URL template:** `https://records.nhl.com/site/api/team-season-undefeated-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_undefeated_streak_incl_playoffs
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-undefeated-streak-incl-playoffs`

**URL template:** `https://records.nhl.com/site/api/team-season-undefeated-streak-incl-playoffs`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_undefeated_streak_start_of_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-undefeated-streak-start-of-season`

**URL template:** `https://records.nhl.com/site/api/team-season-undefeated-streak-start-of-season`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_win_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-win-streak`

**URL template:** `https://records.nhl.com/site/api/team-season-win-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_win_streak_incl_playoffs
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-win-streak-incl-playoffs`

**URL template:** `https://records.nhl.com/site/api/team-season-win-streak-incl-playoffs`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_win_streak_start_of_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-win-streak-start-of-season`

**URL template:** `https://records.nhl.com/site/api/team-season-win-streak-start-of-season`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_winless_streak
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-winless-streak`

**URL template:** `https://records.nhl.com/site/api/team-season-winless-streak`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_season_winless_streak_start_of_season
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-season-winless-streak-start-of-season`

**URL template:** `https://records.nhl.com/site/api/team-season-winless-streak-start-of-season`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### team_stats
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `team-stats`

**URL template:** `https://records.nhl.com/site/api/team-stats`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### three_or_more_goal_games_career
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `three-or-more-goal-games-career`

**URL template:** `https://records.nhl.com/site/api/three-or-more-goal-games-career`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### trophy
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `trophy`

**URL template:** `https://records.nhl.com/site/api/trophy`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### trophy_franchise_trophy_categories
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `trophy/franchise-trophy-categories`

**URL template:** `https://records.nhl.com/site/api/trophy/franchise-trophy-categories`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### trophy_trophy_categories
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `trophy/trophy-categories`

**URL template:** `https://records.nhl.com/site/api/trophy/trophy-categories`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### trophy_trophy_categories_franchiseId
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `trophy/trophy-categories/{franchiseId}`

**URL template:** `https://records.nhl.com/site/api/trophy/trophy-categories/{franchiseId}`

**Path parameters:**
|name        |regex |
|:-----------|:-----|
|franchiseId |NA    |

**Query parameters (documented):** (none)

---

### venue
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `venue`

**URL template:** `https://records.nhl.com/site/api/venue`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

### yearly_playoff_series_details
**Base URL:** `https://records.nhl.com/site/api/`

**Path template:** `yearly-playoff-series-details`

**URL template:** `https://records.nhl.com/site/api/yearly-playoff-series-details`

**Path parameters:** (none)

**Query parameters (documented):** (none)

---

***

