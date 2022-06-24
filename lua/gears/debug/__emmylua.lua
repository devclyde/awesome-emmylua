--- ### Description
--- This file contains the EmmyLua based annotations for `gears.debug`, you should not use `require` in this file.
--- @module "gears.debug.__emmylua"

--#region DebugDeprecateDescriptor Definition

--- @class DebugDeprecateDescriptor
--- @field raw boolean Print the message as-is without the automatic context.
--- @field deprecate_in integer Print the message only when Awesome's version is equal to or greater than `deprecated_in`.
