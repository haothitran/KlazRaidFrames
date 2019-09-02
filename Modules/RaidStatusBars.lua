--------------------------------------------------------------------------------
-- // MODULES / RAID STATUS BARS
--------------------------------------------------------------------------------

local function update()
  local i, bar = 1
  repeat
    if bar then
      bar:SetStatusBarTexture("Interface\\AddOns\\KlazRaidFrames\\Media\\Raid-Bar-Hp-Fill")
      rbar:SetStatusBarTexture("Interface\\AddOns\\KlazRaidFrames\\Media\\Raid-Bar-Resource-Fill")
    end
    i = i + 1
  until not bar
end

local f = CreateFrame("Frame")
f:SetScript("OnEvent",function(self, event, ...)

  if CompactRaidFrameContainer_AddUnitFrame then
      self:UnregisterAllEvents()
      hooksecurefunc("CompactRaidFrameContainer_AddUnitFrame", update)
      hooksecurefunc("CompactUnitFrame_UpdateAll", update)
      update()
    end
end)
f:RegisterEvent("ADDON_LOADED")
f:RegisterEvent("PLAYER_LOGIN")
