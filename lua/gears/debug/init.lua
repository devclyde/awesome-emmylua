--- ### Information
--- - **Copyright**: 2010 Uli Schlachter
--- - **Originally authored by**: Uli Schlachter
---
--- [See all contributors on GitHub](https://github.com/awesomeWM/awesome/graphs/contributors)
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.debug.html)
--- @module "gears.debug"
local GDebugging = {}

--- ### Description
--- Inspect the value in data.
--- ### Parameters
--- @generic TArg
--- @generic TValue
--- @param data TArg Value to inspect.
--- @param tag TValue The name of the value.
--- @param depth? integer Depth of recursion.
--- ### Returns
--- @return string result A string that contains the expanded value of data.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.debug.html#dump_return)
GDebugging.dump_return = function(data, tag, depth) end

--- ### Description
--- Print the table (or any other value) to the console.
--- ### Parameters
--- @generic TArg
--- @generic TValue
--- @param data TArg Value to inspect.
--- @param tag TValue The name of the value.
--- @param depth? integer Depth of recursion.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.debug.html#dump)
GDebugging.dump = function(data, tag, depth) end

--- ### Description
--- Print an warning message.
--- ### Parameters
--- @param message string The warning message to print.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.debug.html#print_warning)
GDebugging.print_warning = function(message) end

--- ### Description
--- Print an error message.
--- ### Parameters
--- @param message string The error message to print.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.debug.html#print_error)
GDebugging.print_error = function(message) end

--- ### Description
--- Display a deprecation notice, but only once per traceback.
---
--- This function also emits the `debug::deprecation` signal on the [`awesome`](https://awesomewm.org/apidoc/core_components/awesome.html#) global object.
--- If the deprecated API has been deprecated for more than one API level, it will also send a non-fatal error.
--- ### Parameters
--- @param see? string  The message to a new method / function to use.
--- @param args DebugDeprecateDescriptor Extra arguments.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.debug.html#deprecate)
GDebugging.deprecate = function(see, args) end

--- ### Description
--- Create a class proxy with deprecation messages.
--- This is useful when a class has moved somewhere else.
--- ### Parameters
--- @param fallback table The new class.
--- @param old_name string The old class name.
--- @param new_name string The new class name.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.debug.html#deprecate_class)
GDebugging.deprecate_class = function(fallback, old_name, new_name) end

return GDebugging
