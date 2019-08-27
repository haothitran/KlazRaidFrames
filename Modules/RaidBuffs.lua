--------------------------------------------------------------------------------
-- // MODULES / RAID BUFFS
--------------------------------------------------------------------------------

local debuffSize = 20
local buffSize = 16

hooksecurefunc('DefaultCompactUnitFrameSetup', function(f)
  for _, d in ipairs(f.debuffFrames) do
    d.baseSize = debuffSize
  end
  for _, d in ipairs(f.buffFrames) do
    d:SetSize(buffSize, buffSize)
  end
end)
