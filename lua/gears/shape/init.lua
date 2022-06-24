--- ### Description
--- Module dedicated to gather common shape painters.
---
--- It adds the concept of "shape" to Awesome.
--- A shape can be applied to a background, a margin, a mask or a drawable shape bounding.
---
--- The functions exposed by this module always take a cairo context as first parameter followed by a width and height.
--- Individual functions may take additional parameters for their specific implementions.
---
--- The functions provided by this module only create a path in the content.
--- To actually draw the content, use `cairo:fill()`, `cairo:mask()`, `cairo:clip()` or `cairo:stroke()`.
---
--- In many case, it is necessary to apply the shape using a transformation such as a rotation.
--- The preferred way to do this is to wrap the function in another function calling `cairo:rotate()` (or any other transformation matrix).
---
--- To specialize a shape where the API doesn't allows extra arguments to be passed, it is possible to wrap the shape function like:
--- ```
--- local new_shape = function(cairo, width, height)
---   gears.shape.rounded_rect(cairo, width, height, 2)
--- end
--- ```
--- Many elements can be shaped. This include:
--- - [Client](https://awesomewm.org/apidoc/core_components/client.html#)s (See [`gears.surface.apply_shape_bounding`](https://awesomewm.org/apidoc/libraries/gears.surface.html#apply_shape_bounding))
--- - [Wibox](https://awesomewm.org/apidoc/popups_and_bars/wibox.html#)es (See [`wibox.shape`](https://awesomewm.org/apidoc/popups_and_bars/wibox.html#shape))
--- - All widgets (See [`wibox.container.background`](https://awesomewm.org/apidoc/widget_containers/wibox.container.background.html#))
--- - The progressbar (See [`wibox.widget.progressbar.bar_shape`](https://awesomewm.org/apidoc/widgets/wibox.widget.progressbar.html#bar_shape))
--- - The graph (See [`wibox.widget.graph.step_shape`](https://awesomewm.org/apidoc/widgets/wibox.widget.graph.html#step_shape))
--- - The checkboxes (See [`wibox.widget.checkbox.check_shape`](https://awesomewm.org/apidoc/widgets/wibox.widget.checkbox.html#check_shape))
--- - Images (See [`wibox.widget.imagebox.clip_shape`](https://awesomewm.org/apidoc/widgets/wibox.widget.imagebox.html#clip_shape))
--- - The taglist tags (See [`awful.widget.taglist`](https://awesomewm.org/apidoc/widgets/awful.widget.taglist.html#))
--- - The tasklist clients (See [`awful.widget.tasklist`](https://awesomewm.org/apidoc/widgets/awful.widget.tasklist.html#))
--- - The tooltips (See [`awful.tooltip`](https://awesomewm.org/apidoc/popups_and_bars/awful.tooltip.html#))
--- ### Information
--- - **Copyright**: 2011-2016 Emmanuel Lepage Vallee
--- - **Originally authored by**: Emmanuel Lepage Vallee
---
--- [See all contributors on GitHub](https://github.com/awesomeWM/awesome/graphs/contributors)
---
--- [View documents](https://awesomewm.org/apidoc/theme_related_libraries/gears.shape.html)
local GShape = {}

--- ### Description
--- Add a squircle shape with only some of the corner are "circled" to the current path. The squircle is not exactly as the definition.
--- It will expand to the shape's width and height, kinda like an ellipse.
--- ### Parameters
--- @param cairo any A cairo context.
--- @param width number The shape width.
--- @param height number The shape height.
--- @param top_left boolean If the top left corner is rounded.
--- @param top_right boolean If the top right corner is rounded.
--- @param bottom_right boolean If the bottom right corner is rounded.
--- @param bottom_left boolean If the bottom left corner is rounded.
--- @param rate number The "squareness" of the squircle, should be greater than 1.
--- @param delta number The "smoothness" of the shape, delta must be greater than 0.01 and will be reset to 0.01 if not.
--- ### Usage
--- ```
--- shape.partial_squircle(cairo, 70, 70, false, true)
--- shape.partial_squircle(cairo, 70, 70, true, false, true)
--- shape.partial_squircle(cairo, 70, 70, true, false, true, true)
--- ```
---
--- [View documents](https://awesomewm.org/apidoc/theme_related_libraries/gears.shape.html#partial_squircle)
GShape.partial_squircle = function(cairo, width, height, top_left, top_right, bottom_right, bottom_left, rate, delta) end

--- ### Description
--- Add a squircle shape to the current path. This will behave the same as [`partial_squircle`](https://awesomewm.org/apidoc/theme_related_libraries/gears.shape.html#partial_squircle).
--- ### Parameters
--- @param cairo any A cairo context.
--- @param width number The shape width.
--- @param height number The shape height.
--- @param rate number The "squareness" of the squircle, should be greater than 1.
--- @param delta number The "smoothness" of the shape, delta must be greater than 0.01 and will be reset to 0.01 if not.
--- ### Usage
--- ```
--- shape.squircle(cairo, 70, 70, 2)
--- shape.squircle(cairo, 70, 70, 8)
--- shape.squircle(cairo, 70, 70, 1.5)
--- ```
---
--- [View documents](https://awesomewm.org/apidoc/theme_related_libraries/gears.shape.html#squircle)
GShape.squircle = function(cairo, width, height, rate, delta) end

--- ### Description
--- Add a star shape to the current path. The star size will be the minimum of the given width and weight.
--- ### Parameters
--- @param cairo any A cairo context.
--- @param width number The shape width.
--- @param height number The shape height.
--- @param number? integer Number of grams. It is 5 by default.
--- ### Usage
--- ```
--- shape.star(cairo, 70, 70, 4)
--- shape.star(cairo, 70, 70, 9)
--- shape.transform(shape.star):translate(70 / 2, 70 / 2):rotate(math.pi):scale(0.5, 0.75):translate(-70 / 2, -70 / 2)(cr, 70, 70)
--- ```
---
--- [View documents](https://awesomewm.org/apidoc/theme_related_libraries/gears.shape.html#start)
GShape.star = function(cairo, width, height, number) end

--- ### Description
--- Add a rounded rectangle to the current path. Note: If the radius is bigger than either half side, it will be reduced.
--- ### Parameters
--- @param cairo any A cairo context.
--- @param width number The shape width.
--- @param height number The shape height.
--- @param radius number The corner radius.
--- ### Usage
--- ```
--- shape.rounded_rect(cairo, 70, 70, 10)
--- shape.rounded_rect(cairo, 20, 70, 5)
--- shape.transform(shape.rounded_rect):translate(0, 25)(cairo, 70, 20, 5)
--- ```
---
--- [View documents](https://awesomewm.org/apidoc/theme_related_libraries/gears.shape.html#rounded_rect)
GShape.rounded_rect = function(cairo, width, height, radius) end

--- ### Description
--- Add a rectangle delimited by 2 180 degree arcs to the path.
--- ### Parameters
--- @param cairo any A cairo context.
--- @param width number The shape width.
--- @param height number The shape height.
--- ### Usage
--- ```
--- shape.rounded_bar(cairo, 70, 70)
--- shape.rounded_bar(cairo, 20, 70)
--- shape.rounded_bar(cairo, 70, 20)
--- ```
---
--- [View documents](https://awesomewm.org/apidoc/theme_related_libraries/gears.shape.html#rounded_bar)
GShape.rounded_bar = function(cairo, width, height) end

--- ### Description
--- A rounded rect with only some of the corners rounded.
--- ### Parameters
--- @param cairo any A cairo context.
--- @param width number The shape width.
--- @param height number The shape height.
--- @param top_left boolean If the top left corner is rounded.
--- @param top_right boolean If the top right corner is rounded.
--- @param bottom_right boolean If the bottom right corner is rounded.
--- @param bottom_left boolean If the bottom left corner is rounded.
--- @param radius number The corner radius.
--- ### Usage
--- ```
--- shape.partially_rounded_rect(cairo, 70, 70)
--- shape.partially_rounded_rect(cairo, 70, 70, true)
--- shape.partially_rounded_rect(cairo, 70, 70, true, true, false, true, 30)
--- ```
---
--- [View documents](https://awesomewm.org/apidoc/theme_related_libraries/gears.shape.html#partially_rounded_rect)
GShape.partially_rounded_rect = function(cairo, width, height, top_left, top_right, bottom_right, bottom_left, radius) end

--- ### Description
--- A rounded rectangle with a triangle at the top.
--- ### Parameters
--- @param cairo any A cairo context.
--- @param width number The shape width.
--- @param height number The shape height.
--- @param corner_radius? number The corner radius. It is 5 by default.
--- @param arrow_size? number The width and height of the arrow. It is 10 by default.
--- @param arrow_position? number The position of the arrow. It is `width / 2 - arrow_size / 2` by default.
--- ### Usage
--- ```
--- shape.infobubble(cairo, 70, 70)
--- shape.transform(shape.infobubble):translate(0, 20):rotate_at(35, 35, math.pi)(cairo, 70, 20, 10, 5, 35 - 5)
--- shape.transform(shape.infobubble):rotate_at(35, 35, 3 * math.pi / 2)(cairo, 70, 70, nil, nil, 40)
--- ```
---
--- [View documents](https://awesomewm.org/apidoc/theme_related_libraries/gears.shape.html#infobubble)
GShape.infobubble = function(cairo, width, height, corner_radius, arrow_size, arrow_position) end

--- ### Description
--- A rectangle terminated by an arrow.
--- ### Parameters
--- @param cairo any A cairo context.
--- @param width number The shape width.
--- @param height number The shape height.
--- @param arrow_length? number The length of the arrow part. It is `height / 2` by default.
--- ### Usage
--- ```
--- shape.rectangular_tag(cairo, 70, 70)
--- shape.transform(shape.rectangular_tag):translate(0, 30)(cairo, 70, 10, 10)
--- shape.transform(shape.rectangular_tag):translate(0, 30)(cairo, 70, 10, -10)
--- ```
---
--- [View documents](https://awesomewm.org/apidoc/theme_related_libraries/gears.shape.html#rectangular_tag)
GShape.rectangular_tag = function(cairo, width, height, arrow_length) end

--- ### Description
--- A simple arrow shape.
--- ### Parameters
--- @param cairo any A cairo context.
--- @param width number The shape width.
--- @param height number The shape height.
--- @param head_width? number The width of the head of the arrow. It is `head_width` by default.
--- @param shaft_width? number The width of the shaft of the arrow. It is `width / 2` by default.
--- @param shaft_length? number The `head_length` of the shaft. It is `height / 2` by default.
--- ### Usage
--- ```
--- shape.arrow(cairo, 70, 70)
--- shape.arrow(cairo, 70, 70, 30, 10, 60)
--- shape.transform(shape.arrow):rotate_at(35, 35, math.pi / 2)(cairo, 70, 70)
--- ```
---
--- [View documents](https://awesomewm.org/apidoc/theme_related_libraries/gears.shape.html#arrow)
GShape.arrow = function(cairo, width, height, head_width, shaft_width, shaft_length) end

--- ### Description
--- A squeezed hexagon filling the rectangle.
--- ### Parameters
--- @param cairo any A cairo context.
--- @param width number The shape width.
--- @param height number The shape height.
--- ### Usage
--- ```
--- shape.hexagon(cairo, 70, 70)
--- shape.transform(shape.hexagon):translate(0, 15)(cairo, 70, 20)
--- shape.transform(shape.hexagon):rotate_at(35, 35, math.pi / 2)(cairo, 70, 40)
--- ```
---
--- [View documents](https://awesomewm.org/apidoc/theme_related_libraries/gears.shape.html#hexagon)
GShape.hexagon = function(cairo, width, height) end

--- @type ShapeFn
--- ### Description
--- Double arrow popularized by the `vim-powerline` module.
--- ### Parameters
--- @param cairo any A cairo context.
--- @param width number The shape width.
--- @param height number The shape height.
--- @param arrow_depth? number The width of the arrow part of the shape. It is `height / 2` by default.
--- ### Usage
--- ```
--- shape.powerline(cairo, 70, 70)
--- shape.transform(shape.powerline):translate(0, 25)(cairo, 70, 20)
--- shape.transform(shape.powerline):translate(0, 25)(cairo, 70, 20, -20)
--- ```
---
--- [View documents](https://awesomewm.org/apidoc/theme_related_libraries/gears.shape.html#powerline)
GShape.powerline = function(cairo, width, height, arrow_depth) end

--- ### Description
--- An isosceles triangle.
--- ### Parameters
--- @param cairo any A cairo context.
--- @param width number The shape width.
--- @param height number The shape height.
--- ### Usage
--- ```
--- shape.isosceles_triangle(cairo, 70, 70)
--- shape.isosceles_triangle(cairo, 20, 70)
--- shape.transform(shape.isosceles_triangle):rotate_at(35, 35, math.pi / 2)(cairo, 70, 70)
--- ```
---
--- [View documents](https://awesomewm.org/apidoc/theme_related_libraries/gears.shape.html#isosceles_triangle)
GShape.isosceles_triangle = function(cairo, width, height) end

--- ### Description
--- A cross (+) symbol.
--- ### Parameters
--- @param cairo any A cairo context.
--- @param width number The shape width.
--- @param height number The shape height.
--- @param thickness? number The cross section thickness. It is `width / 3` by default.
--- ### Usage
--- ```
--- shape.cross(cairo, 70, 70)
--- shape.cross(cairo, 20, 70)
--- shape.transform(shape.cross):scale(0.5, 1)(cairo, 70, 70)
--- ```
---
--- [View documents](https://awesomewm.org/apidoc/theme_related_libraries/gears.shape.html#cross)
GShape.cross = function(cairo, width, height, thickness) end

--- ### Description
--- A similar shape to the [`rounded_rect`](https://awesomewm.org/apidoc/theme_related_libraries/gears.shape.html#rounded_rect), but with sharp corners.
--- ### Parameters
--- @param cairo any A cairo context.
--- @param width number The shape width.
--- @param height number The shape height.
--- @param corner_radius number Undocumented!
--- ### Usage
--- ```
--- shape.circle(cairo, 70, 70)
--- shape.circle(cairo, 20, 70)
--- shape.transform(shape.circle):scale(0.5, 1)(cairo, 70, 70)
--- ```
---
--- [View documents](https://awesomewm.org/apidoc/theme_related_libraries/gears.shape.html#octogon)
GShape.octogon = function(cairo, width, height, corner_radius) end

--- ### Description
--- A circle shape.
--- ### Parameters
--- @param cairo any A cairo context.
--- @param width number The shape width.
--- @param height number The shape height.
--- @param radius? number The radius.
--- ### Usage
--- ```
--- shape.circle(cairo, 70, 70)
--- shape.circle(cairo, 20, 70)
--- shape.transform(shape.circle):scale(0.5, 1)(cairo, 70, 70)
--- ```
---
--- [View documents](https://awesomewm.org/apidoc/theme_related_libraries/gears.shape.html#circle)
GShape.circle = function(cairo, width, height, radius) end

--- ### Description
--- A simple rectangle.
--- ### Parameters
--- @param cairo any A cairo context.
--- @param width number The shape width.
--- @param height number The shape height.
--- ### Usage
--- ```
--- shape.rectangle(cr, 70, 70)
--- shape.rectangle(cr, 20, 70)
--- shape.transform(shape.rectangle):scale(0.5, 1)(cr, 70, 70)
--- ```
---
--- [View documents](https://awesomewm.org/apidoc/theme_related_libraries/gears.shape.html#rectangle)
GShape.rectangle = function(cairo, width, height) end

--- ### Description
--- A diagonal parallelogram with the bottom left corner at `x = 0` and top right at `x = width`.
--- ### Parameters
--- @param cairo any A cairo context.
---@param width number The shape width.
---@param height number The shape height.
---@param base_width? number The parallelogram base width. It is `width / 3` by default.
--- ### Usage
--- ```
--- shape.parallelogram(cairo, 70, 70)
--- shape.parallelogram(cairo, 70, 20)
--- shape.transform(shape.parallelogram):scale(0.5, 1)(cairo, 70, 70)
--- ```
---
--- [View documents](https://awesomewm.org/apidoc/theme_related_libraries/gears.shape.html#parallelogram)
GShape.parallelogram = function(cairo, width, height, base_width) end

--- ### Description
--- A losange
--- ### Parameters
--- @param cairo any A cairo context.
--- @param width number The shape width.
--- @param height number The shape height.
--- ### Usage
--- ```
--- shape.losange(cairo, 70, 70)
--- shape.losange(cairo, 20, 70)
--- shape.transform(shape.losange):scale(0.5, 1)(cairo, 70, 70)
--- ```
---
--- [View documents](https://awesomewm.org/apidoc/theme_related_libraries/gears.shape.html#losange)
GShape.losange = function(cairo, width, height) end

--- ### Description
--- A pie.
---
--- The pie center is the center of the area.
--- ### Parameters
--- @param cairo any A cairo context.
---@param width number The shape width.
---@param height number The shape height.
---@param start_angle? number The start angle (in radians). It is 0 by default.
---@param end_angle? number The end angle (in radians). It is `math.pi / 2` by default.
---@param radius number? Undocumented!
--- ### Usage
--- ```
--- shape.pie(cairo, 70, 70)
--- shape.pie(cairo, 70, 70, 1.0471975511966, 4.1887902047864)
--- shape.pie(cairo, 70, 70, 0, 2 * math.pi, 10)
--- ```
---
--- [View documents](https://awesomewm.org/apidoc/theme_related_libraries/gears.shape.html#pie)
GShape.pie = function(cairo, width, height, start_angle, end_angle, radius) end

--- ### Description
--- A rounded arc.
--- ### Parameters
--- @param cairo any A cairo context.
--- @param width number The shape width.
--- @param height number The shape height.
--- @param thickness? number The arc thichness.
--- @param start_angle? number The start angle (in radians). It is 0 by default.
--- @param end_angle? number The end angle (in radians). It is `math.pi / 2` by default.
--- @param start_rounded? boolean If the arc start rounded. It is false by default.
--- @param end_rounded? boolean If the arc end rounded. It is false by default.
--- ### Usage
--- ```
--- shape.arc(cairo, 70, 70, 10)
--- shape.arc(cairo, 70, 70, 10, nil, nil, true, true)
--- shape.arc(cairo, 70, 70, nil, 0, 2 * math.pi)
--- ```
---
--- [View documents](https://awesomewm.org/apidoc/theme_related_libraries/gears.shape.html#arc)
GShape.arc = function(cairo, width, height, thickness, start_angle, end_angle, start_rounded, end_rounded) end

--- ### Description
--- A partial rounded bar. How much of the rounded bar is visible depends on the given percentage value.
---
--- Note that this shape is not closed and thus filling it doesn't make much sense.
--- ### Parameters
--- @param cairo any A cairo context.
--- @param width number The shape width.
--- @param height number The shape height.
--- @param percent number The progressbar percent.
--- @param hide_left? boolean Do not draw the left side of the shape.
--- ### Usage
--- ```
--- shape.radial_progress(cairo, 70, 20, 0.3)
--- shape.radial_progress(cairo, 70, 20, 0.6)
--- shape.radial_progress(cairo, 70, 20, 0.9)
--- ```
---
--- [View documents](https://awesomewm.org/apidoc/theme_related_libraries/gears.shape.html#radial_progress)
GShape.radial_progress = function(cairo, width, height, percent, hide_left) end

--- ### Description
--- Adjust the shape using a transformation object.
--- Apply various transformations to the shape.
--- ### Parameters
--- @param shape ShapeFn A shape function.
--- ### Returns
--- @return function handle A transformation handle, also act as a shape function
--- ### Usage
--- ```
--- gears.shape.transform(gears.shape.rounded_bar):rotate(math.pi / 2):translate(10, 10)
--- ```
---
--- [View documents](https://awesomewm.org/apidoc/theme_related_libraries/gears.shape.html#transform)
GShape.transform = function(shape) end

return GShape
