---@meta

---@class mekanism.Oredictionificator: mekanism.MachinewithSideConfigurationComponent
---Methods for Mekanism's Oredictionificator.
------
---[Official Documentation](https://mekanism.github.io/computer_data/10.7.0.html)
---[Repository](https://github.com/mekanism/Mekanism)
Oredictionificator = {}

---Adds a filter.
---@param filter mekanism.OredictionificatorItemFilter Filter to add
---@return boolean success Indicates if the filter was successfully added
function Oredictionificator.addFilter(filter) end

---Gets a collection of filters.
---@return mekanism.OredictionificatorItemFilter[] filters
function Oredictionificator.getFilters() end

---Get the contents of the input slot.
---@return mekanism.LargeResourceStack item 
function Oredictionificator.getInputItem() end

---Get the contents of the output slot.
---@return mekanism.LargeResourceStack item 
function Oredictionificator.getOutputItem() end

---Removes a filter.
---@param filter mekanism.OredictionificatorItemFilter The filter to remove
---@return boolean success Indicates if the filter was successfully removed
function Oredictionificator.removeFilter(filter) end
