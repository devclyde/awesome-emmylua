--- ### Description
--- Math module for gears.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.math.html)
local GMath = {}

--- ### Description
--- Return all subsets of a specific set. This function, giving a set, will return all subset it.
--- For example, if we consider a set with value `{ 10, 15, 34 }`,
--- it will return a table containing `2^n` set: `{ }, { 10 }, { 15 }, { 34 }, { 10, 15 }, { 10, 34 }`, etc.
--- ### Parameters
--- @param set table A set.
--- ### Returns
--- @return table result A table with all subset.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.math.html#subsets)
GMath.subsets = function(set) end

--- ### Description
--- Make i cycle.
--- ### Parameters
--- @param t any A length. Must be greater than zero.
--- @param i any      An absolute index to fit into `t`.
--- ### Returns
--- @return integer | nil result An integer in `(1, t)` or `nil` if `t` is less than or equal to zero.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.math.html#cycle)
GMath.cycle = function(t, i) end

--- ### Description
--- Round a number to an integer.
--- ### Parameters
--- @param x integer Undocumented!
--- ### Returns
--- @return integer result Undocumented!
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.math.html#round)
GMath.round = function(x) end

--- ### Description
--- Return the sign of the number `x`.
--- ### Parameters
--- @param x number Undocumented!
--- ### Returns
--- @return integer result Return `1` if `x` is positive, `-1` if negative and `0` if `x` is `0`.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.math.html#sign)
GMath.sign = function(x) end

return GMath
