---@meta

---@class mekanism.BaseFilter
---@field enabled boolean Whether the filter is enabled when added to a device
---@field private type mekanism.FilterType The type of filter in this structure.

---@class mekanism.ItemStack
---@field count number The count of items in the stack
---@field name string  	The Item's registered name
---@field nbt string|nil Any NBT of the item, in Command JSON format

---@class mekanism.LargeResourceStack: mekanism.ItemStack
