---@meta
---Based on 1.18 (there were changes to methods and types later!)

---@class advancedPeripherals.MEBridge
---The ME Bridge is able to interact with Applied Energistics 2. 
---You can retrieve items, craft items, get all items as a list and more. 
---The ME Bridge uses one channel.
-------
---[Official Documentation](https://docs.advanced-peripherals.de/0.7/peripherals/me_bridge/)
MEBridge = {}


---Tries to craft the provided item. If a craftingCpu's name is provided then it will use that cpu to craft the item.
---@param item advancedPeripherals.ItemFilter The item and count to craft.
---@param craftingCpu string? Crafting cpu to use.
---@return boolean success
---@return string? err
function MEBridge.craftItem(item, craftingCpu) end

---Tries to craft the provided fluid. If a craftingCpu's name is provided then it will use that cpu to craft the fluid.
---@param fluid advancedPeripherals.ItemFilter The fluid and count to craft.
---@param craftingCpu string? Crafting cpu to use.
---@return boolean success
---@return string? err
function MEBridge.craftFluid(fluid, craftingCpu) end

---Returns a table with information about the item type in the system.
---@param item advancedPeripherals.ItemFilter The item filter.
---@return advancedPeripherals.MEItem item A list of items or an error message.
---@return string? err An error message.
------
---[Official Documentation](https://docs.advanced-peripherals.de/0.7/peripherals/me_bridge/#getitem)
function MEBridge.getItem(item) end

---Imports an item from a container in the direction to the ME System.\
---Returns the number of the item imported into the system.
---@param item advancedPeripherals.ItemFilter The item filter.
---@param direction string Direction of container.
---You can now use both relative (right, left, front, back, top, bottom) and cardinal (north, south, east, west, up, down) directions for the direction argument.
---@return number count Number of items imported. 
---@return string? err An error message.
function MEBridge.importItem(item, direction) end

---Exports an item to a container in the direction from the ME bridge block.\
---Returns the number of the item exported into the container.
---@param item advancedPeripherals.ItemFilter The item filter.
---@param direction string Direction of container.
---You can now use both relative (right, left, front, back, top, bottom) and cardinal (north, south, east, west, up, down) directions for the direction argument.
---@return number count Number of items exported. 
---@return string? err An error message.
function MEBridge.exportItem(item, direction) end

---Similar to importItem() it imports an item from a container which is connected to the peripheral network.\
---`container` should be the exact name of the container peripheral on the network.\
---Returns the number of the item imported from the container.
---@param item advancedPeripherals.ItemFilter The item filter.
---@param container string The exact name of the container peripheral on the network.
---@return number count The number of the item imported from the container.
---@return string? err An error message.
function MEBridge.importItemFromPeripheral(item, container) end

---Similar to exportItem() it exports an item to a container which is connected to the peripheral network.
---container should be the exact name of the container peripheral on the network.
---Returns the number of the item exported into the container.
---@param item advancedPeripherals.ItemFilter The item filter.
---@param container string The exact name of the container peripheral on the network.
---@return number count The number of the item exported into the container.
---@return string? err An error message.
------
---[Official Documentation](https://docs.advanced-peripherals.de/0.7/peripherals/me_bridge/#exportitemtoperipheral)
function MEBridge.exportItemToPeripheral(item, container) end

---Returns the stored energy of the whole ME System in AE.
---@return number number
---@return string? err
function  MEBridge.getEnergyStorage() end

---Returns the maximum energy storage capacity of the whole ME system in AE.
---@return number number
---@return string? err
function  MEBridge.getMaxEnergyStorage() end

---Returns the energy usage of the whole ME System in AE/t.
---@return number number
---@return string? err
function  MEBridge.getEnergyUsage() end

---Returns a list of all connected crafting cpus.
---@return advancedPeripherals.CraftingCpu[] cpus A list of crafting CPUs.
---@return string? err An error message.
function MEBridge.getCraftingCPUs() end

---Returns true if a crafting job for the item exists. If a craftingCpu's name is provided then it will check only if that cpu is crafting the item.
---@param item advancedPeripherals.MEItem The item
---@param craftingCpu string? Crafting CPU name
---@return boolean return
---@return string? err
function MEBridge.isItemCrafting(item, craftingCpu) end

---Returns true if the item is craftable.
---@param item advancedPeripherals.MEItem The item
---@return boolean return
---@return string? err
function MEBridge.isItemCraftable(item) end

---Returns a list of information about all craftable items.
---@return advancedPeripherals.MEItem[] items A list of items.
---@return string? err An error message.
function MEBridge.listCraftableItems() end

---Returns a list of information about all craftable fluids
---@return advancedPeripherals.MEItem[] items A list of items.
---@return string? err An error message.
function MEBridge.listCraftableFluid() end

---Gets a list of information about all items in the ME System.
---@return advancedPeripherals.MEItem[] items A list of items.
---@return string? err An error message.
------
---[Official Documentation](https://docs.advanced-peripherals.de/0.7/peripherals/me_bridge/#listitems)
function MEBridge.listItems() end

---Returns a list of information about all fluids in the ME System.
---@return advancedPeripherals.MEItem[] items A list of items.
---@return string? err An error message.
function MEBridge.listFluid() end

---Returns a list of information about all gases (Applied Mekanistics) in the ME System.
---@return advancedPeripherals.MEItem[] items A list of items.
---@return string? err An error message.
function MEBridge.listGas() end

---Returns a list of information about all cells in the disk drives of the ME System.
---@return advancedPeripherals.MECell[] cells A list of cells.
---@return string? err An error message.
---Added in version 1.18.2-0.7.24r | 1.19.2-0.7.23b
function MEBridge.listCells() end

---Returns how much total item storage the system offers.
---@return number number
---@return string? err
---Added in version 1.18.2-0.7.24r | 1.19.2-0.7.23b
function MEBridge.getTotalItemStorage() end

---Returns how much total fluid storage the system offers.
---@return number number
---@return string? err
---Added in version 1.18.2-0.7.24r | 1.19.2-0.7.23b
function MEBridge.getTotalFluidStorage() end

---Returns how much item storage is used.
---@return number number
---@return string? err
---Added in version 1.18.2-0.7.24r | 1.19.2-0.7.23b
function MEBridge.getUsedItemStorage() end

---Returns how much fluid storage is used.
---@return number number
---@return string? err
---Added in version 1.18.2-0.7.24r | 1.19.2-0.7.23b
function MEBridge.getUsedFluidStorage() end

---Returns how much item storage is available.
---@return number number
---@return string? err
---Added in version 1.18.2-0.7.24r | 1.19.2-0.7.23b
function MEBridge.getAvailableItemStorage() end

---Returns how much fluid storage is available.
---@return number number
---@return string? err
---Added in version 1.18.2-0.7.24r | 1.19.2-0.7.23b
function MEBridge.getAvailableFluidStorage() end
