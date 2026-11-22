---@meta

---@class mekanism.MachinewithSideConfigurationComponent
MachinewithSideConfigurationComponent = {}

---@param type mekanism.TransmissionType
---@return boolean return boolean
function MachinewithSideConfigurationComponent.canEject(type) end

---@param type mekanism.TransmissionType
---@param side string (RelativeSide)
function MachinewithSideConfigurationComponent.decrementMode(type, side) end

---@return mekanism.TransmissionType[] return List (string (TransmissionType))
function MachinewithSideConfigurationComponent.getConfigurableTypes() end

---@param type string (TransmissionType)
---@param side string (RelativeSide)
---@return string (DataType) return string (DataType)
function MachinewithSideConfigurationComponent.getMode(type, side) end

---@param type string (TransmissionType)
---@return string[] (string (DataType)) return List (string (DataType))
function MachinewithSideConfigurationComponent.getSupportedModes(type) end

---@param type string (TransmissionType)
---@param side string (RelativeSide)
function MachinewithSideConfigurationComponent.incrementMode(type, side) end

---@param type string (TransmissionType)
---@return boolean return boolean
function MachinewithSideConfigurationComponent.isEjecting(type) end

---@param type string (TransmissionType)
---@param ejecting boolean
function MachinewithSideConfigurationComponent.setEjecting(type, ejecting) end

---@param type string (TransmissionType)
---@param side string (RelativeSide)
---@param mode string (DataType)
function MachinewithSideConfigurationComponent.setMode(type, side, mode) end