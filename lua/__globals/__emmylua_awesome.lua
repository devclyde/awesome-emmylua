--- ### Description
--- This file contains the EmmyLua based annotations for `awesome`, you should not use `require` in this file.
--- @module "globals.__emmylua_awesome"

--#region Awesome Signals

--- @alias AwesomeAPISignal
--- | "debug::error" # A call into the Lua code aborted with an error.
--- | "debug::deprecation" # A deprecated Lua function was called.
--- | "debug::index::miss" # An invalid key was read from an object.
--- | "debug::newindex::miss" # An invalid key was written to an object.
--- | "systray::update" # The systray should be updated.
--- | "wallpaper_changed" # The wallpaper has changed.
--- | "xkb::map_changed" # Keyboard map has changed.
--- | "xkb::group_changed" # Keyboard group has changed.
--- | "refresh" # Refresh.
--- | "startup" # AwesomeWM is about to enter the event loop.
--- | "exit" # AwesomeWM is exiting / about to restart.
--- | "screen::change" # The output status of a screen has changed.
--- | "spawn::canceled" # For some reason the application aborted startup.
--- | "spawn::change" #  When one of the fields from the `spawn::initiated` table changes.
--- | "spawn::completed" # An application finished starting.
--- | "spawn::initated" # When a new client is beginning to start.
--- | "spawn::timeout" # An application started a spawn event but didn't start in time.

--#endregion

--#region AwesomeAPI Properties

--- ### Description
--- The AwesomeWM version.
---
--- [View documents](https://awesomewm.org/apidoc/core_components/awesome.html#version)
--- @alias AwesomeAPIPropertyVersion string

--- ### Description
--- The AwesomeWM release name.
---
--- [View documents](https://awesomewm.org/apidoc/core_components/awesome.html#release)
--- @alias AwesomeAPIPropertyRelease string

--- ### Description
--- The AwesomeWM API level.
---
--- By default, this matches the major version (first component of the version).
---
--- API levels are used to allow newer version of AwesomeWM to alter the behavior and subset deprecated APIs.
--- Using an older API level than the current major version allows to use legacy [`rc.lua`](https://awesomewm.org/apidoc/sample%20files/rc.lua.html#) with little porting.
--- However, they won't be able to use all the new features.
--- Attempting to use a newer feature along with an older API level is not and will not be supported, even if it almost works.
--- Keeping up to date with the newer API levels is highly recommended.
---
--- Going the other direction, setting an higher API level allows to take advantage of experimental feature.
--- It will also be much harsher when it comes to deprecation.
--- Setting the API level value beyond `current+3` will treat using APIs currently pending deprecation as fatal errors.
--- All new code submitted to the upstream AwesomeWM codebase is forbidden to use deprecated APIs.
--- Testing your patches with mode and the default config is recommended before submitting a patch.
---
--- You can use the [`-l`](https://awesomewm.org/apidoc/core_components/awesome.html#emit_signal) command line option or `api-level` modeline key to set the API level for your [`rc.lua`](https://awesomewm.org/apidoc/sample%20files/rc.lua.html#).
--- This setting is global and read only, individual modules cannot set their own API level.
---
--- [View documents](https://awesomewm.org/apidoc/core_components/awesome.html#api_level)
--- @alias AwesomeAPIPropertyAPILevel string

--- ### Description
--- The configuration file which has been loaded.
---
--- [View documents](https://awesomewm.org/apidoc/core_components/awesome.html#conffile)
--- @alias AwesomeAPIPropertyConffile string

--- ### Description
--- True if we are still in startup, false otherwise.
---
--- [View documents](https://awesomewm.org/apidoc/core_components/awesome.html#startup)
--- @alias AwesomeAPIPropertyStartup boolean

--- ### Description
--- Error message for errors that occurred during startup.
---
--- [View documents](https://awesomewm.org/apidoc/core_components/awesome.html#startup_errors)
--- @alias AwesomeAPIPropertyStartupErrors string

--- ### Description
--- True if a composite manager is running.
---
--- [View documents](https://awesomewm.org/apidoc/core_components/awesome.html#composite_manager_running)
--- @alias AwesomeAPIPropertyCompositeManagerRunning boolean

--- ### Description
--- Table mapping between signal numbers and signal identifiers.
---
--- [View documents](https://awesomewm.org/apidoc/core_components/awesome.html#unix_signal)
--- @alias AwesomeAPIPropertyUnixSignal table

--- ### Description
--- The hostname of the computer on which we are running.
---
--- [View documents](https://awesomewm.org/apidoc/core_components/awesome.html#hostname)
--- @alias AwesomeAPIPropertyHostname string

--- ### Description
--- The path where themes were installed to.
---
--- [View documents](https://awesomewm.org/apidoc/core_components/awesome.html#themes_path)
--- @alias AwesomeAPIPropertyThemesPath string

--- ### Description
--- The path where icons were installed to.
---
--- [View documents](https://awesomewm.org/apidoc/core_components/awesome.html#icon_path)
--- @alias AwesomeAPIPropertyIconPath string

--#endregion
