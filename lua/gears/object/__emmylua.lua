--- ### Description
--- This file contains the EmmyLua based annotations for `gears.object`, you should not use `require` in this file.
--- @module "gears.object.__emmylua"

--#region ObjectDescriptor Definition

--- ### Description
--- These are the arguments that will be passed to `gears.object`.
--- @class ObjectDescriptor
--- @field enable_properties? boolean Automatically call getters and setters. It is false by default.
--- @field enable_auto_signals? boolean Generate `property::xxxx` signals when an unknown property is set. It is false by default.
--- @field class? table It is a table that will be used to create the object. It is null by default.

--#endregion
