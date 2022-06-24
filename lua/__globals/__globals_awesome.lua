--- ### Description
--- AwesomeWM lifecycle API.
---
--- This module contains the functions and signal to manage the lifecycle of the AwesomeWM process.
--- It allows to execute code at specific point from the early initialization all the way to the last events before exiting or restarting.
---
--- Additionally it handles signals for spawn and keyboard related events.
--- ### Inherits
--- - [`Object`](https://awesomewm.org/apidoc/utility_libraries/gears.object.html#gears.object) from [`gears.object`](https://awesomewm.org/apidoc/utility_libraries/gears.object.html).
--- ### Information
--- - **Copyright**: 2008-2009 Julien Danjou
--- - **Originally authored by**: Julien Danjou <julien@danjou.info>
--- @diagnostic disable-next-line: lowercase-global
--- @class AwesomeAPI : Object<AwesomeAPISignal>
--- @field version AwesomeAPIPropertyVersion The AwesomeWM version.
--- @field release AwesomeAPIPropertyRelease The AwesomeWM release name.
--- @field api_level AwesomeAPIPropertyAPILevel The AwesomeWM API level.
--- @field conffile AwesomeAPIPropertyConffile The configuration file which has been loaded.
--- @field startup AwesomeAPIPropertyStartup True if we are still in startup, false otherwise.
--- @field startup_errors AwesomeAPIPropertyStartupErrors Error message for errors that occurred during startup.
--- @field composite_manager_running AwesomeAPIPropertyCompositeManagerRunning True if a composite manager is running.
--- @field unix_signal AwesomeAPIPropertyUnixSignal Table mapping between signal numbers and signal identifiers.
--- @field hostname AwesomeAPIPropertyHostname The hostname of the computer on which we are running.
--- @field themes_path AwesomeAPIPropertyThemesPath The path where themes were installed to.
--- @field icon_path AwesomeAPIPropertyIconPath The path where icons were installed to.
awesome = {}

--- ### Description
--- Connect to a signal.
--- ### Parameters
--- @param name AwesomeAPISignal The name of the signal.
--- @param action function The callback to call when the signal is emitted.
--- ### Inherits
--- - [`Object::connect_signal`](https://awesomewm.org/apidoc/utility_libraries/gears.object.html#connect_signal) from [`gears.object`](https://awesomewm.org/apidoc/utility_libraries/gears.object.html).
---
--- [View documents](https://awesomewm.org/apidoc/core_components/awesome.html#connect_signal)
function awesome:connect_signal(name, action) end

--- ### Description
--- Connect to a signal weakly.
---
--- This allows the callback function to be garbage collected and automatically disconnects the signal when that happens.
--- ### Parameters
--- @param name AwesomeAPISignal The name of the signal.
--- @param action function The callback to call when the signal is emitted.
--- ### Warnings
--- > Only use this function if you really, really, really know what you are doing.
--- ### Inherits
--- - [`Object::weak_connect_signal`](https://awesomewm.org/apidoc/utility_libraries/gears.object.html#weak_connect_signal) from [`gears.object`](https://awesomewm.org/apidoc/utility_libraries/gears.object.html).
---
--- [View documents](https://awesomewm.org/apidoc/core_components/awesome.html#connect_signal)
function awesome:weak_connect_signal(name, action) end

--- ### Description
--- Disconnect from a signal.
--- ### Parameters
--- @param name AwesomeAPISignal The name of the signal.
--- @param action function The callback that should be disconnected.
--- ### Inherits
--- - [`Object::disconnect_signal`](https://awesomewm.org/apidoc/utility_libraries/gears.object.html#disconnect_signal) from [`gears.object`](https://awesomewm.org/apidoc/utility_libraries/gears.object.html).
---
--- [View documents](https://awesomewm.org/apidoc/core_components/awesome.html#disconnect_signal)
function awesome:disconnect_signal(name, action) end

--- ### Description
--- Emit a signal.
--- ### Parameters
--- @param name AwesomeAPISignal The name of the signal.
--- @param ... any Extra arguments for the callback functions. Each connected function receives the object as first argument and then any extra arguments that are given to [`emit_signal()`](https://awesomewm.org/apidoc/utility_libraries/gears.object.html#emit_signal).
--- ### Inherits
--- - [`Object::emit_signal`](https://awesomewm.org/apidoc/utility_libraries/gears.object.html#emit_signal) from [`gears.object`](https://awesomewm.org/apidoc/utility_libraries/gears.object.html).
---
--- [View documents](https://awesomewm.org/apidoc/core_components/awesome.html#emit_signal)
function awesome:emit_signal(name, ...) end

--- ### Description
--- Register a new xproperty.
--- ### Parameters
--- @param name string The name of the X11 property.
--- @param type string One of `string`, `number` or `boolean`.
---
--- [View documents](https://awesomewm.org/apidoc/core_components/awesome.html#register_xproperty)
awesome.register_xproperty = function(name, type) end

--- ### Description
--- Quit awesome.
--- ### Parameters
--- @param code? integer The exit code to use when exiting. It is 0 by default.
---
--- [View documents](https://awesomewm.org/apidoc/core_components/awesome.html#quit)
awesome.quit = function(code) end

--- ### Description
--- Execute another application, probably a window manager, to replace awesome.
--- ### Parameters
--- @param cmd string The command line to execute.
---
--- [View documents](https://awesomewm.org/apidoc/core_components/awesome.html#exec)
awesome.exec = function(cmd) end

--- ### Description
--- Restart awesome.
---
--- [View documents](https://awesomewm.org/apidoc/core_components/awesome.html#restart)
awesome.restart = function() end

--- ### Description
--- Send a signal to a process.
--- ### Parameters
--- @param pid integer Process identifier. 0 and negative values have special meaning.
--- @param signal integer Signal number.
--- ### Returns
--- @return boolean result `true` if the signal was successfully sent, else `false`.
---
--- [View documents](https://awesomewm.org/apidoc/core_components/awesome.html#kill)
awesome.kill = function(pid, signal) end

--- ### Description
--- Synchronize with the X11 server.
--- This is needed in the test suite to avoid some race conditions.
--- You should never need to use this function.
---
--- [View documents](https://awesomewm.org/apidoc/core_components/awesome.html#sync)
awesome.sync = function() end

--- ### Description
--- Translate a GdkPixbuf to a cairo image surface.
--- ### Parameters
--- @param pixbuf any The pixbuf as a light user datum.
--- @param path any The pixbuf origin path.
--- ### Returns
--- @return any result A cairo surface as light user datum.
---
--- [View documents](https://awesomewm.org/apidoc/core_components/awesome.html#pixbuf_to_surface)
awesome.pixbuf_to_surface = function(pixbuf, path) end

--- ### Description
--- Load an image from a given path.
--- ### Parameters
--- @param name string The file name.
--- ### Returns
--- @return any | nil result A cairo surface as light user datum or `nil`.
---
--- [View documents](https://awesomewm.org/apidoc/core_components/awesome.html#load_image)
awesome.load_image = function(name) end

--- ### Description
--- Set the preferred size for client icons.
---
--- The closest equal or bigger size is picked if present, otherwise the closest smaller size is picked.
--- The default is 0 pixels, ie. the smallest icon.
--- ### Parameters
--- @param size number The size of the icons in pixels.
---
--- [View documents](https://awesomewm.org/apidoc/core_components/awesome.html#set_preferred_icon_size)
awesome.set_preferred_icon_size = function(size) end

--- ### Description
--- Spawn a program. The program will be started on the default screen.
--- ### Parameters
--- @param cmd? table The environment to use for the spawned program. Without this the spawned process inherits awesome's environment. It is null by default.
--- @param use_sn? boolean Use startup-notification? It is true by default.
--- @param stdin? boolean Return a fd for stdin? It is false by default.
--- @param stdout? boolean Return a fd for stdout? It is false by default.
--- @param stderr? boolean Return a fd for stderr? It is false by default.
--- @param exit_callback? fun(reason: string, code: integer) Function to call on process exit. The function arguments will be type of exit ("exit" or "signal") and the exit code / the signal number causing process termination. It is null by default.
--- ### Returns
--- @return integer process_id, string startup_notification_id, integer stdin, integer stdout, integer stderr Undocumented!
--- @return string error An error string if an error occurred.
---
--- [View documents](https://awesomewm.org/apidoc/core_components/awesome.html#spawn)
awesome.spawn = function(cmd, use_sn, stdin, stdout, stderr, exit_callback) end

--- ### Description
--- Switch keyboard layout.
--- ### Parameters
--- @param num integer Keyboard layout number, integer from 0 to 3.
---
--- [View documents](https://awesomewm.org/apidoc/core_components/awesome.html#xkb_set_layout_group)
awesome.xkb_set_layout_group = function(num) end

--- ### Description
--- Get current layout number.
--- ### Returns
--- @return integer num Current layout number, integer from 0 to 3.
---
--- [View documents](https://awesomewm.org/apidoc/core_components/awesome.html#xkb_get_layout_group)
awesome.xkb_get_layout_group = function() end

--- ### Description
--- Get layout short names.
--- ### Returns
--- @return string result A string describing the current layout settings.
---
--- [View documents](https://awesomewm.org/apidoc/core_components/awesome.html#xkb_get_group_names)
awesome.xkb_get_group_names = function() end
