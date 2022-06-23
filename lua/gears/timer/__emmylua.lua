--- ### Description
--- This file contains the EmmyLua based annotations for `gears.timer`, you should not use `require` in this file.
--- @module "gears.timer.__emmylua"

--#region TimerDescriptor Definition

--- ### Description
--- These are the arguments that will be passed to `gears.timer`.
--- @class TimerDescriptor
--- @field timeout number Timeout in seconds.
--- @field autostart? boolean Automatically start the timer. It is false by default.
--- @field call_now? boolean Call the callback at timer creation. It is false by default.
--- @field single_shot? boolean Run only once then stop. It is false by default.
--- @field callback? function to connect to the `timeout` signal.

--#endregion

--#region Timer Properties

--- ### Description
--- The timer timeout value.
--- ### Emit Signals
--- ```
--- -- When the timeout value changes.
--- property::timeout(self: Timer, new_value: number)
--- ```
--- @alias TimerPropertyTimeout number

--#endregion

--#region Timer Signals

--- @alias TimerSignal
--- | "start" # Emitted when the timer is started.
--- | "stop" # Emitted when the timer is stopped.
--- | "timeout" # Emitted when [`timeout`](https://awesomewm.org/apidoc/core_components/gears.timer.html#timeout) seconds have elapsed.
--- | "property::timeout" # When the [`timeout`](https://awesomewm.org/apidoc/core_components/gears.timer.html#timeout) value changes.

--#endregion
