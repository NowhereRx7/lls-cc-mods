---@meta

---@class mekanism.QuantumEntangloporter
QuantumEntangloporter = {}

---Requires frequency to not already exist and for it to be public so that it can make it as the player who owns the block. Also sets the frequency after creation
---@param name string
function QuantumEntangloporter.createFrequency(name) end

---Get the contents of the chemical buffer.
---@return mekanism.LargeResourceStack return Table (LargeResourceStack)
function QuantumEntangloporter.getBufferChemical() end

---Get the capacity of the chemical buffer.
---@return number return Number (long)
function QuantumEntangloporter.getBufferChemicalCapacity() end

---Get the filled percentage of the chemical buffer.
---@return number return Number (double)
function QuantumEntangloporter.getBufferChemicalFilledPercentage() end

---Get the amount needed to fill the chemical buffer.
---@return number return Number (long)
function QuantumEntangloporter.getBufferChemicalNeeded() end

---Get the contents of the fluid buffer.
---@return mekanism.LargeResourceStack return Table (LargeResourceStack)
function QuantumEntangloporter.getBufferFluid() end

---Get the capacity of the fluid buffer.
---@return number return Number (long)
function QuantumEntangloporter.getBufferFluidCapacity() end

---Get the filled percentage of the fluid buffer.
---@return number return Number (double)
function QuantumEntangloporter.getBufferFluidFilledPercentage() end

---Get the amount needed to fill the fluid buffer.
---@return number return Number (long)
function QuantumEntangloporter.getBufferFluidNeeded() end

---Get the contents of the buffer slot.
---@return mekanism.LargeResourceStack return Table (LargeResourceStack)
function QuantumEntangloporter.getBufferItem() end

---May not be accurate if there is no frequency
---@return number return Number (double)
function QuantumEntangloporter.getEnvironmentalLoss() end

---Lists public frequencies
---@return InventoryFrequency[] return List (Table (InventoryFrequency))
function QuantumEntangloporter.getFrequencies() end

---Requires a frequency to be selected
---@return InventoryFrequency return Table (InventoryFrequency)
function QuantumEntangloporter.getFrequency() end

---Get the heat capacity of the frequency in Joules per Kelvin. This number can be thought of as the specific heat of the handler (specific heat x mass of the handler).
---@return number return Number (double)
function QuantumEntangloporter.getHeatCapacity() end

---Get the temperature of the frequency in Kelvin.
---@return number return Number (double)
function QuantumEntangloporter.getTemperature() end

---May not be accurate if there is no frequency
---@return number return Number (double)
function QuantumEntangloporter.getTransferLoss() end

---@return boolean return boolean
function QuantumEntangloporter.hasFrequency() end

---Requires a public frequency to exist
---@param name string
function QuantumEntangloporter.setFrequency(name) end