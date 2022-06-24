--- ### Description
--- Table module for gears.
--- ### Examples
--- Using [`cycle_value`](https://awesomewm.org/apidoc/utility_libraries/gears.table.html#cycle_value), you can cycle through values in a table.
--- When the end of the table is reached, [`cycle_value`](https://awesomewm.org/apidoc/utility_libraries/gears.table.html#cycle_value) loops around to the beginning.
--- ```
--- local res = { 'a', 'b', 'c', 'd', 'e' }
--- for i = 1, #res do
---   local k = res[i]
---   local v = gears.table.cycle_value(res, k, 1)
---   print(v)
--- end
--- ```
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.table.html)
local GTable = {}

--- ### Description
--- Join all tables given as arguments.
--- This will iterate over all tables and insert their entries into a new table.
--- ### Parameters
--- @param ... table Tables to join.
--- ### Returns
--- @return table result A new table containing all entries from the arguments.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.table.html#join)
GTable.join = function(...) end

--- ### Description
--- Override elements in the target table with values from the source table.
---
--- Note that this method doesn't copy entries found in `__index`. Nested tables are copied by reference and not recursed into.
--- ### Parameters
--- @param target table The target table. Values from `source` will be copied into this table.
--- @param source table The source table. Its values will be copied into `target`.
--- @param raw? boolean If true, values will be assigned with [`rawset`](https://www.lua.org/manual/5.3/manual.html#pdf-rawset). This will bypass metamethods on target. It is false by default.
--- ### Returns
--- @return table result The target table.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.table.html#crush)
GTable.crush = function(target, source, raw) end

--- ### Description
--- Pack all elements with an integer key into a new table.
--- While both Lua and LuaJIT implement `__len` over sparse tables, the standard defines it as an implementation detail.
---
--- This function removes any entries with non-numeric keys.
--- ### Parameters
--- @param table table A potentially sparse table.
--- ### Returns
--- @return table A packed table with only numeric keys.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.table.html#from_sparse)
GTable.from_sparse = function(table) end

--- ### Description
--- Check if a table has an item and return its key.
--- ### Parameters
--- @generic V
--- @param table V[] The table.
--- @param item V The item to look for in values of the table.
--- ### Returns
--- @return string | number result The key of the item.
--- @return nil result Returns null if nothing is found
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.table.html#hasitem)
GTable.hasitem = function(table, item) end

--- ### Description
--- Get all matching table keys for a `matcher` function.
--- ### Parameters
--- @generic K, V
--- @param table table<K, V> The table.
--- @param matcher fun(key: K, value: V) A function taking the key and value as arguments and returning a boolean.
--- @param ordered? boolean If true, only look for continuous numeric keys. It is false by default.
--- @param max? number The maximum number of entries to find. It is null by default.
--- ### Returns
--- @return table<K, V> | nil result An ordered table with all the keys or `nil` if none were found.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.table.html#find_keys)
GTable.find_keys = function(table, matcher, ordered, max) end

--- ### Description
--- Find the first key that matches a function.
--- ### Parameters
--- @generic K, V
--- @param table table<K, V> The table.
--- @param matcher fun(key: K, value: V) A function taking the key and value as arguments and returning a boolean.
--- @param ordered? boolean If true, only look for continuous numeric keys. It is false by default.
--- ### Returns
--- @return table<K, V> | nil result The table key or nil.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.table.html#find_first_key)
GTable.find_first_key = function(table, matcher, ordered) end

--- ### Description
--- Get a sorted table with all keys from a table.
--- ### Parameters
--- @param table table The table for which the keys to get.
--- ### Returns
--- @return table result A table with keys.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.table.html#keys)
GTable.keys = function(table) end

--- ### Description
--- Get the number of keys in a table, both integer and string indicies.
---
--- This is functionally equivalent, but faster than [`gears.table.keys`]().
--- ### Parameters
--- @param table table The table for which to count the keys.
--- ### Returns
--- @return number result The number of keys in the table.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.table.html#count_keys)
GTable.count_keys = function(table) end

--- ### Description
--- Filter a table's keys for certain content type.
--- ### Parameters
--- @param table table The table to retrieve the keys for.
--- @param ... string The types to look for.
--- ### Returns
--- @return table result A filtered table.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.table.html#keys_filter)
GTable.keys_filter = function(table, ...) end

--- ### Description
--- Reverse a table.
--- ### Parameters
--- @param table table The table to reverse.
--- ### Returns
--- @return table result A reversed table.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.table.html#reverse)
GTable.reverse = function(table) end

--- ### Description
--- Clone a table.
--- ### Parameters
--- @param table table The table to clone.
--- @param deep boolean If `true`, recurse into nested tables to create a deep clone. It is true by default.
--- ### Returns
--- @return table result A clone of `table`.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.table.html#clone)
GTable.clone = function(table, deep) end

--- ### Description
--- Get the next (or previous) value from a table and cycle if necessary.
---
--- If the table contains the same value multiple type (aka, is not a set), the `first_index` has to be specified.
--- ### Parameters
--- @generic K, V
--- @param table table<K, V> The input table.
--- @param value V The start value. Must be an element of the input table `table`.
--- @param step_size? number The amount to increment the index by. When this is negative, the function will cycle through the table backwards. It is 1 by deafult.
--- @param filter? fun(value: V) n optional filter function. It receives a value from the table as parameter and should return a boolean. If it returns `false`, the value is skipped and [`cycle_value`](https://awesomewm.org/apidoc/utility_libraries/gears.table.html#cycle_value) tries the next one. It is null by default.
--- @param start_at? number Where to start the lookup from. It is 1 by default.
--- ### Returns
--- @return V | nil result The next eligible value. If no value matches, nil is returned.
--- @return number | nil index If a value is found, this is its index within the input table.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.table.html#cycle_value)
GTable.cycle_value = function(table, value, step_size, filter, start_at) end

--- ### Description
--- Iterate over a table.
---
--- Returns an iterator to cycle through all elements of a table that match a given criteria, starting from the first element or the given index.
--- ### Parameters
--- @param table table The table to iterate.
--- @param filter function A function that returns true to indicate a positive match.
--- @param start? integer Index to start iterating from. It is 1 by default.
--- ### Returns
--- @return function result Undocumented!
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.table.html#iterate)
GTable.iterate = function(table, filter, start) end

--- ### Description
--- Merge items from the source table into the target table.
---
--- Note that this only considers the array part of source (same semantics as [`ipairs`](https://www.lua.org/manual/5.3/manual.html#pdf-ipairs)).
--- Nested tables are copied by reference and not recursed into.
--- ### Parameters
--- @param target table The target table. Values from `source` will be copied into this table.
--- @param source table  The source table. Its values will be copied into `target`.
--- ### Returns
--- @return table result The target table.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.table.html#merge)
GTable.merge = function(target, source) end

--- ### Description
--- Update the `target` table with entries from the `new` table.
---
--- Compared to [`gears.table.merge`](https://awesomewm.org/apidoc/utility_libraries/gears.table.html#merge),
--- this version is intended to work using both an `identifier` function and a `merger` function.
--- This works only for indexed tables.
---
--- The main use case is when changing the table reference is not possible or when the `target` contains additional content that must be kept.
---
--- Note that calling this function involve a lot of looping and should not be done often.
--- ### Parameters
--- @param target table The table to modify.
--- @param new table The table which contains the new content.
--- @param identifier function  A function which take the table entry (either from the `target` or `new` table) and return an unique identifier. The identifier type isn't important as long as `==` works to compare them.
--- @param merger? function A function takes the entry to modify as first parameter and the new entry as second. The function must return the merged value. If none is provided, there is no attempt to merge the content.
--- ### Returns
--- @return table output The target table.
--- @return table added The new entries.
--- @return table removed The removed entries.
--- @return table updated The updated entries.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.table.html#diff_merge)
GTable.diff_merge = function(target, new, identifier, merger) end

--- ### Description
--- Map a function to a table.
---
--- The function is applied to each value in the table, returning a modified table.
--- ### Parameters
--- @param action function The function to be applied to each value in the table.
--- @param table table The container table whose values will be operated on.
--- ### Returns
--- @return table result The resulting table
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.table.html#map)
GTable.map = function(action, table) end

return GTable
