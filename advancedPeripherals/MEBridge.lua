---@meta
---Based on 1.18 (there were changes to methods and types later!)

---@class advancedPeripherals.MEBridge
---The ME Bridge is able to interact with Applied Energistics 2. 
---You can retrieve items, craft items, get all items as a list and more. 
---The ME Bridge uses one channel.
-------
---[Official Documentation](https://docs.advanced-peripherals.de/0.7/peripherals/me_bridge/)
MEBridge = {}

---@class advancedPeripherals.ItemFilter
---@field fingerprint string? A unique fingerprint which identifies the item to craft
---@field name string? The registry name of the item [start with # to search tags]
---@field components table? Component data
---@field fromSlot number? Slot of the source inventory
---@field toSlot number? Slot of the destination inventory
---@field count number? The amount to move

---Similar to exportItem() it exports an item to a container which is connected to the peripheral network.
---container should be the exact name of the container peripheral on the network.
---Returns the number of the item exported into the container.
---@param item advancedPeripherals.ItemFilter The item filter.
---@param container string The exact name of the container peripheral on the network.
---@return number count The number of the item exported into the container.
---@return string err An error message.
------
---[Official Documentation](https://docs.advanced-peripherals.de/0.7/peripherals/me_bridge/#getitem)
function MEBridge.exportItemToPeripheral(item, container) end

---Returns a table with information about the item type in the system.
---@param item advancedPeripherals.ItemFilter The item filter.
---@return advancedPeripherals.MEItem item A list of items or an error message.
---@return string err An error message.
------
---[Official Documentation](https://docs.advanced-peripherals.de/0.7/peripherals/me_bridge/#getitem)
function MEBridge.getitem(item) end

---@class advancedPeripherals.MEItem
---@field fingerprint string|nil A unique fingerprint which identifies the item to craft
---@field name string The registry name of the item
---@field amount number The amount of the item in the system
---@field displayName string The display name for the item
---@field nbt string? NBT to match the item on
---@field tags table A list of all of the item tags
---@field isCraftable boolean Whether the item has a crafting pattern or not

---Gets a list of information about all items in the ME System.
---@return advancedPeripherals.MEItem[] items A list of items or an error message.
---@return string err An error message.
------
---[Official Documentation](https://docs.advanced-peripherals.de/0.7/peripherals/me_bridge/#listitems)
function MEBridge.listItems() end

