---@meta

---@class mekanism.OredictionificatorItemFilter: mekanism.BaseFilter
---@field selected string The selected output item's registered name. Optional for adding a filter
---@field target string The target tag to match (input)
OredictionificatorItemFilter = {}

---Gets the filter tag.
---@return string tag The tag string.
function OredictionificatorItemFilter.getFilter() end

---Sets the filter tag.
---@param tag string The tag string.
function OredictionificatorItemFilter.setFilter(tag) end

---Gets the output item ID.
---@return string
function OredictionificatorItemFilter.getSelectedOutput() end

---Sets the output item ID.
---@param item string
function OredictionificatorItemFilter.setSelectedOutput(item) end