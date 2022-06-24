--- ### Description
--- Helper functions used to compute geometries.
---
--- When this module refer to a geometry table, this assume a table with at least an `x`, `y`, `width` and `height` keys and numeric values.
--- ### Information
--- - **Copyright**: 2008 Julien Danjou
--- - **Originally authored by**: Julien Danjou <julien@danjou.info>
---
--- [See all contributors on GitHub](https://github.com/awesomeWM/awesome/graphs/contributors)
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.geometry.html)
--- @module "gears.geometry"
local GGeometry = {}
local DefRectangle = {}

--- ### Description
--- Get the square distance between a rectangle and a point.
--- ### Parameters
--- @param geometry GoRectangle A rectangle.
--- @param x number X coordinate of point.
--- @param y number Y coordinate of point.
--- ### Returns
--- @return number result The squared distance of the rectangle to the provided point.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.geometry.html#gears.geometry.rectangle.get_square_distance)
DefRectangle.get_square_distance = function(geometry, x, y) end

--- ### Description
--- Return the closest rectangle from `list` for a given point.
--- ### Parameters
--- @param list GoRectangle[] A list of geometry tables.
--- @param x number The X coordinate.
--- @param y number The Y coordinate.
--- ### Returns
--- @return GoRectangle result The key from the closest geometry.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.geometry.html#gears.geometry.rectangle.get_closest_by_coord)
DefRectangle.get_closest_by_coord = function(list, x, y) end

--- ### Description
--- Return the rectangle containing the `[x, y]` point.
---
--- Note that if multiple element from the geometry list contains the point, the returned result is nondeterministic.
--- ### Parameters
--- @param list GoRectangle[] A list of geometry tables.
--- @param x number The X coordinate.
--- @param y number The Y coordinate.
--- ### Returns
--- @return GoRectangle | nil result The key from the closest geometry. In case no result is found, `nil` is returned.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.geometry.html#gears.geometry.rectangle.get_by_coord)
DefRectangle.get_by_coord = function(list, x, y) end

--- ### Description
--- Get the nearest rectangle in the given direction.
--- Every rectangle is specified as a table with `x`, `y`, `width`, `height` keys, the same as client or screen geometries.
--- ### Parameters
--- @param direction GeometryDirection The direction, can be either up, down, left or right.
--- @param list GoRectangle[] A table of rectangle specifications.
--- @param current GoRectangle The current rectangle.
--- ### Returns
--- @return integer index The index for the rectangle in `list` closer to `current` in the given direction. `nil` if none found.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.geometry.html#gears.geometry.rectangle.get_in_direction)
DefRectangle.get_in_direction = function(direction, list, current) end

--- ### Description
--- Return true if the area are exactly identical.
---
--- The areas are table with a `x`, `y`, `width` and `height` keys.
--- ### Parameters
--- @param a GoRectangle The area.
--- @param b GoRectangle The other area.
--- ### Returns
--- @return boolean result If the areas are identical.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.geometry.html#gears.geometry.rectangle.are_equal)
DefRectangle.are_equal = function(a, b) end

--- ### Description
--- Return if rectangle `a` is within rectangle `b`.
---
---  This includes the edges. 100% of `a` area has to be within `b` for this function to return true.
--- If you wish to know if any part of a intersect with `b`,
--- use [`gears.geometry.rectangle.get_intersection`](https://awesomewm.org/apidoc/utility_libraries/gears.geometry.html#gears.geometry.rectangle.get_intersection).
--- ### Parameters
--- @param a GoRectangle The smaller area.
--- @param b GoRectangle The larger area.
--- ### Returns
--- @return boolean result If the areas are identical.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.geometry.html#gears.geometry.rectangle.is_inside)
DefRectangle.is_inside = function(a, b) end

--- ### Description
--- Check if an area intersect another area.
--- ### Parameters
--- @param a GoRectangle The area.
--- @param b GoRectangle The other area.
--- ### Returns
--- @return boolean result True if they intersect, false otherwise.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.geometry.html#gears.geometry.rectangle.area_intersect_area)
DefRectangle.area_intersect_area = function(a, b) end

--- ### Description
--- Get the intersect area between `a` and `b`.
--- ### Parameters
--- @param a GoRectangle The area.
--- @param b GoRectangle The other area.
--- ### Returns
--- @return GoRectangle result The intersect area.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.geometry.html#gears.geometry.rectangle.get_intersection)
DefRectangle.get_intersection = function(a, b) end

--- ### Description
--- Remove an area from a list, splitting the space between several area that can overlap.
--- ### Parameters
--- @param areas GoRectangle[] Table of areas.
--- @param elem GoRectangle Area to remove.
--- ### Returns
--- @return GoRectangle[] result The new area list.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.geometry.html#gears.geometry.rectangle.area_remove)
DefRectangle.area_remove = function(areas, elem) end

GGeometry.rectangle = DefRectangle

return GGeometry
