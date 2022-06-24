--- ### Description
--- Extra sorting algorithms.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.sort.html)
local GSort = {}

--- ### Description
--- A topological sorting class.
---
--- The object returned by this function allows to create simple dependency graphs.
--- It can be used for decision making or ordering of complex sequences.
--- ### Returns
--- @return GSortTopological result A topological sorting class.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.sort.html#topological)
GSort.topological = function() end

--- @class GSortTopological
local Topological = {}

--- ### Description
--- Ensure that `node` appears after all `dependencies`.
--- ### Parameters
--- @param node any The node that edges are added to.
--- @param dependencies table List of nodes that have to appear before `node`.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.sort.html#append)
function Topological:append(node, dependencies) end

--- ### Description
--- Ensure that `node` appears before all `subordinates`.
--- ### Parameters
--- @param node any The node that edges are added to.
--- @param surbodinates table List of nodes that have to appear after `node`.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.sort.html#prepend)
function Topological:prepend(node, surbodinates) end

--- ### Description
--- Create a copy of this topological sort.
--- This is useful to backup it before adding elements that can potentially have circular dependencies and thus render the original useless.
--- ### Returns
--- @return GSortTopological result Undocumented!
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.sort.html#clone)
function Topological:clone() end

--- ### Description
--- Remove a node from the topological map.
--- ### Parameters
--- @param node any The node.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.sort.html#remove)
function Topological:remove(node) end

--- ### Description
--- Try to sort the nodes.
--- ### Returns
--- @return table result A sorted list of nodes.
--- @return nil result Undocumented!
--- @return any result A node around which a loop exists
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.sort.html#sort)
function Topological:sort() end

return GSort
