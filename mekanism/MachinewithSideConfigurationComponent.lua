---@meta

---@class mekanism.MachinewithSideConfigurationComponent
MachinewithSideConfigurationComponent = {}

---@param type mekanism.TransmissionType
---@return boolean return boolean
function MachinewithSideConfigurationComponent.canEject(type) end

---@param type mekanism.TransmissionType
---@param side mekanism.RelativeSide
function MachinewithSideConfigurationComponent.decrementMode(type, side) end

---@return mekanism.TransmissionType[] return List (string (TransmissionType))
function MachinewithSideConfigurationComponent.getConfigurableTypes() end

---@param type mekanism.TransmissionType
---@param side mekanism.RelativeSide
---@return mekanism.DataType
function MachinewithSideConfigurationComponent.getMode(type, side) end

---@param type mekanism.TransmissionType
---@return mekanism.DataType[]
function MachinewithSideConfigurationComponent.getSupportedModes(type) end

---@param type mekanism.TransmissionType
---@param side mekanism.RelativeSide
function MachinewithSideConfigurationComponent.incrementMode(type, side) end

---@param type mekanism.TransmissionType
---@return boolean return boolean
function MachinewithSideConfigurationComponent.isEjecting(type) end

---@param type mekanism.TransmissionType
---@param ejecting boolean
function MachinewithSideConfigurationComponent.setEjecting(type, ejecting) end

---@param type mekanism.TransmissionType
---@param side mekanism.RelativeSide
---@param mode mekanism.DataType
function MachinewithSideConfigurationComponent.setMode(type, side, mode) end