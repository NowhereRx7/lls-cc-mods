---@meta

---@class mekanism.Oredictionificator
---Methods for Mekanism's Oredictionificator.
------
---[Official Documentation](https://mekanism.github.io/computer_data/10.4.0.html)
Oredictionificator = {}

---@alias mekanism.FilterType
---| '"MINER_ITEMSTACK_FILTER"'
---| '"MINER_MODID_FILTER"'
---| '"MINER_TAG_FILTER"'
---| '"OREDICTIONIFICATOR_ITEM_FILTER"'
---| '"QIO_ITEMSTACK_FILTER"'
---| '"QIO_MODID_FILTER"'
---| '"QIO_TAG_FILTER"'
---| '"SORTER_ITEMSTACK_FILTER"'
---| '"SORTER_MODID_FILTER"'
---| '"SORTER_TAG_FILTER"'

---@class mekanism.IFilter
---@field enabled boolean Whether the filter is enabled when added to a device
---@field type mekanism.FilterType The type of filter in this structure.

---@class mekanism.ItemStack
---@field count number The count of items in the stack
---@field name string  	The Item's registered name
---@field nbt string Any NBT of the item, in Command JSON format

---@class mekanism.OredictionificatorItemFilter: mekanism.IFilter
---@field selected string The selected output item's registered name. Optional for adding a filter
---@field target string The target tag to match (input)

---Adds a filter.
---@param filter mekanism.OredictionificatorItemFilter Filter to add
---@return boolean success Indicates if the filter was successfully added
function Oredictionificator.addFilter(filter) end

---Gets a collection of filters.
---@return mekanism.OredictionificatorItemFilter[] filters
function Oredictionificator.getFilters() end

---Get the contents of the input slot.
---@return mekanism.ItemStack item 
function Oredictionificator.getInputItem() end

---Get the contents of the output slot.
---@return mekanism.ItemStack item 
function Oredictionificator.getOutputItem() end

---Removes a filter.
---@param filter mekanism.OredictionificatorItemFilter The filter to remove
---@return boolean success Indicates if the filter was successfully removed
function Oredictionificator.removeFilter(filter) end