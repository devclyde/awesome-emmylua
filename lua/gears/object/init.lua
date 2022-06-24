--- ### Description
--- The object oriented programming base class used by various Awesome widgets and components.
---
--- It provide basic observer pattern, signaling and dynamic properties.
--- ### Information
--- - **Copyright**: 2010 Uli Schlachter
--- - **Originally authored by**: Uli Schlachter
---
--- [See all contributors on GitHub](https://github.com/awesomeWM/awesome/graphs/contributors)
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.object.html)
--- @module "gears.object"
local GObject = {}

--- ### Description
--- Creates an AwesomeWM object.
--- You can call
--- [`:emit_signal()`](https://awesomewm.org/apidoc/utility_libraries/gears.object.html#emit_signal),
--- [`:disconnect_signal()`](https://awesomewm.org/apidoc/utility_libraries/gears.object.html#disconnect_signal) and
--- [`:connect_signal()`](https://awesomewm.org/apidoc/utility_libraries/gears.object.html#connect_signal)
--- on the resulting object.
--- ### Parameters
--- @param args ObjectDescriptor The arguments.
--- ### Returns
--- @return Object result A new object.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.object.html#gears.object)
GObject.object = function(args) end

--- @class Object
local Object = {}

--- ### Description
--- Connect to a signal.
--- ### Parameters
--- @param name string The name of the signal.
--- @param action function The callback to call when the signal is emitted.
--- ### Usage
--- ```
--- local my_object = gears.object({})
---
--- -- Function can be attached to signals
--- local function slot(obj, a, b, c)
---     print('In slot', obj, a, b, c)
--- end
---
--- my_object:connect_signal('my_signal', slot)
---
--- -- Emitting can be done without arguments. In that case, the object will be
--- -- implicitly added as an argument.
--- my_object:emit_signal('my_signal')
---
--- -- It is also possible to add as many random arguments are required.
--- my_object:emit_signal('my_signal', 'foo', 'bar', 42)
---
--- -- Finally, to allow the object to be garbage collected (the memory freed), it
--- -- is necessary to disconnect the signal or use weak_connect_signal
--- my_object:disconnect_signal('my_signal', slot)
---
--- -- This time, the slot wont be called as it is no longer connected.
--- my_object:emit_signal('my_signal')
--- ```
--- #### Output
--- ```
--- In slot [obj]   nil nil nil
--- In slot [obj]   foo bar 42
--- ```
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.object.html#connect_signal)
function Object:connect_signal(name, action) end

--- ### Description
--- Connect to a signal weakly.
---
--- This allows the callback function to be garbage collected and automatically disconnects the signal when that happens.
--- ### Parameters
--- @param name string The name of the signal.
--- @param action function The callback to call when the signal is emitted.
--- ### Warnings
--- > Only use this function if you really, really, really know what you are doing.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.object.html#weak_connect_signal)
function Object:weak_connect_signal(name, action) end

--- ### Description
--- Disconnect from a signal.
--- ### Parameters
--- @param name string The name of the signal.
--- @param action function The callback that should be disconnected.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.object.html#disconnect_signal)
function Object:disconnect_signal(name, action) end

--- ### Description
--- Emit a signal.
--- ### Parameters
--- @param name string The name of the signal.
--- @param ... any Extra arguments for the callback functions. Each connected function receives the object as first argument and then any extra arguments that are given to [`emit_signal()`](https://awesomewm.org/apidoc/utility_libraries/gears.object.html#emit_signal).
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.object.html#emit_signal)
function Object:emit_signal(name, ...) end

return GObject.object
