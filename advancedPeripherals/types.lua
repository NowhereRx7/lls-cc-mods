---@meta

---@alias advancedPeripherals.events: ccTweaked.ccTweaked.os.event
---| '"crafting"' Fires when a crafting job starts or fails. \Values: 1. success: boolean Indicates whether a crafting job has successfully started or not 2. message: string A message about the status of the crafting job. These values are equivalent to the return values of craftItem().

---@class advancedPeripherals.ItemFilter
---@field fingerprint string? A unique fingerprint which identifies the item to craft
---@field name string? The registry name of the item [start with # to search tags]
---@field components table? Component data
---@field fromSlot number? Slot of the source inventory
---@field toSlot number? Slot of the destination inventory
---@field count number? The amount to move

---@class advancedPeripherals.MEItem
---@field fingerprint string|nil A unique fingerprint which identifies the item to craft
---@field name string The registry name of the item
---@field amount number The amount of the item in the system
---@field displayName string The display name for the item
---@field nbt string? NBT to match the item on
---@field tags table A list of all of the item tags
---@field isCraftable boolean Whether the item has a crafting pattern or not

---@class advancedPeripherals.CraftingCpu
---@field storage number The amount of storage the CPU has
---@field coProcessors number The number of coprocessors the CPU has
---@field isBusy boolean If the cpu is currently crafting

---@class advancedPeripherals.MECell
---@field item string The name of the cell. e.g. ae2:64k_storage_cell
---@field cellType string The type of the cell. item or fluid
---@field bytesPerType number The bytes per type
---@field totalBytes number Total available bytes of the cell
