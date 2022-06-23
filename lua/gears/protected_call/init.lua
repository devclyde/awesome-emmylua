--- ### Description
--- Call a function in protected mode and handle error reports.
--- ### Information
--- - **Copyright**: 2016 Uli Schlachter
--- - **Originally authored by**: Uli Schlachter
---
--- [See all contributors on GitHub](https://github.com/awesomeWM/awesome/graphs/contributors)
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.protected_call.html)
--- @module "gears.protected_call"
local GSafety = {}

--- ### Description
--- Call a function in protected mode and handle error-reporting.
--- If the function call succeeds, all results of the function are returned.
--- Otherwise, an error message is printed and nothing is returned.
--- ### Parameters
--- @param func function The function to call.
--- @param ... any Arguments to the function.
--- ### Returns
--- @return any result The result of the given function, or nothing if an error occurred.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.protected_call.html#gears.protected_call)
GSafety.protected_call = function(func, ...) end

return GSafety
