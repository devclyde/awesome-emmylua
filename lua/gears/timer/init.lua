--- ### Description
--- Timer objects and functions.
--- ### Information
--- - **Copyright**: 2014 Uli Schlachter
--- - **Originally authored by**: Uli Schlachter
---
--- [See all contributors on GitHub](https://github.com/awesomeWM/awesome/graphs/contributors)
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.protected_call.html)
--- @module "gears.timer"
local GTiming = {
  timer = {
    --- ### Description
    --- Create a simple timer for calling the `callback` function continuously.
    ---
    --- This is a small wrapper around [`gears.timer`](https://awesomewm.org/apidoc/core_components/gears.timer.html#), that creates a timer based on callback.
    --- The timer will run continuously and call callback every [`timeout`](https://awesomewm.org/apidoc/core_components/gears.timer.html#timeout) seconds.
    --- It is stopped when `callback` returns false,
    --- when `callback` throws an error or when the `:stop()`
    --- method is called on the return value.
    --- ### Parameters
    --- @param timeout number Timeout in seconds.
    --- @param callback function Function to run.
    --- ### Returns
    --- @return Timer timer The new timer object.
    ---
    --- [View documents](https://awesomewm.org/apidoc/core_components/gears.timer.html#start_new)
    start_new = function(timeout, callback) end,

    --- ### Description
    --- Create a simple timer for calling the `callback` function continuously.
    ---
    --- This function is almost identical to [`gears.timer.start_new`](https://awesomewm.org/apidoc/core_components/gears.timer.html#start_new).
    --- The only difference is that this does not prevent the callback function from being garbage collected.
    --- In addition to the conditions in [`gears.timer.start_new`](https://awesomewm.org/apidoc/core_components/gears.timer.html#start_new),
    --- this timer will also stop if `callback` was garbage collected since the previous run.
    --- ### Parameters
    --- @param timeout number Timeout in seconds.
    --- @param callback function Function to run.
    --- ### Returns
    --- @return Timer timer The new timer object.
    ---
    --- [View documents](https://awesomewm.org/apidoc/core_components/gears.timer.html#weak_start_new)
    weak_start_new = function(timeout, callback) end,

    --- ### Description
    --- Run all pending delayed calls now.
    --- This function should best not be used at all, because it means that less batching happens and the delayed calls run prematurely.
    ---
    --- [View documents](https://awesomewm.org/apidoc/core_components/gears.timer.html#run_delayed_calls_now)
    run_delayed_calls_now = function() end,

    --- ### Description
    --- Call the given function at the end of the current GLib event loop iteration.
    --- ### Parameters
    --- @param callback function The function that should be called.
    --- @param ... any Arguments to the callback function
    ---
    --- [View documents](https://awesomewm.org/apidoc/core_components/gears.timer.html#delayed_call)
    delayed_call = function(callback, ...) end,
  },
}

--- ### Description
--- Create a new timer object.
---
--- `call_now` only takes effect when a `callback` is provided. `single_shot`, on the other hand, also stops signals connected to the [`timeout`](https://awesomewm.org/apidoc/core_components/gears.timer.html#timeout) signal.
---
--- Specifying a function `func` as `args.callback` is equivalent to calling `:connect_signal(func)` on the timer object.
--- ### Parameters
--- @param args TimerDescriptor The arguments.
--- ### Returns
--- @return Timer timer A new timer.
---
--- [View documents](https://awesomewm.org/apidoc/core_components/gears.timer.html#gears.timer)
GTiming.timer = function(args) end

--- @class Timer : Object
--- @field started boolean The timer is started.
--- @field timeout TimerPropertyTimeout The timer timeout value.
local Timer = {}

--- ### Description
--- Connect to a signal.
--- ### Parameters
--- @param name TimerSignal The name of the signal.
--- @param action function The callback to call when the signal is emitted.
--- ### Inherits
--- - [`Object`](https://awesomewm.org/apidoc/utility_libraries/gears.object.html#gears.object) from [`gears.object`](https://awesomewm.org/apidoc/utility_libraries/gears.object.html).
---
--- [View documents](https://awesomewm.org/apidoc/core_components/gears.timer.html#connect_signal)
function Timer:connect_signal(name, action) end

--- ### Description
--- Connect to a signal weakly.
--- ### Parameters
--- @param name TimerSignal The name of the signal.
--- @param action function The callback to call when the signal is emitted.
--- ### Inherits
--- - [`Object`](https://awesomewm.org/apidoc/utility_libraries/gears.object.html#gears.object) from [`gears.object`](https://awesomewm.org/apidoc/utility_libraries/gears.object.html).
---
--- [View documents](https://awesomewm.org/apidoc/core_components/gears.timer.html#weak_connect_signal)
function Timer:weak_connect_signal(name, action) end

--- ### Description
--- Emit a signal.
--- ### Parameters
--- @param name TimerSignal The name of the signal.
--- @param ... any Extra arguments for the callback functions. Each connected function receives the object as first argument and then any extra arguments that are given to [`emit_signal()`](https://awesomewm.org/apidoc/core_components/gears.timer.html#emit_signal).
--- ### Inherits
--- - [`Object`](https://awesomewm.org/apidoc/utility_libraries/gears.object.html#gears.object) from [`gears.object`](https://awesomewm.org/apidoc/utility_libraries/gears.object.html).
---
--- [View documents](https://awesomewm.org/apidoc/core_components/gears.timer.html#emit_signal)
function Timer:emit_signal(name, ...) end

--- ### Description
--- Start the timer.
--- ### Emit Signals
--- ```
--- -- When the timer starts.
--- start()
--- ```
---
--- [View documents](https://awesomewm.org/apidoc/core_components/gears.timer.html#start)
function Timer:start() end

--- ### Description
--- Stop the timer.
---
--- Does nothing if the timer isn't running.
--- ### Emit Signals
--- ```
--- -- When the timer stops.
--- stop()
--- ```
---
--- [View documents](https://awesomewm.org/apidoc/core_components/gears.timer.html#stop)
function Timer:stop() end

--- ### Description
--- Restart the timer.
--- This is equivalent to stopping the timer if it is running and then starting it.
--- ### Emit Signals
--- ```
--- -- When the timer starts.
--- start()
--- -- When the timer stops.
--- stop()
--- ```
---
--- [View documents](https://awesomewm.org/apidoc/core_components/gears.timer.html#again)
function Timer:again() end

return GTiming.timer
