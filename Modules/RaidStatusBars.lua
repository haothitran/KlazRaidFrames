--------------------------------------------------------------------------------
-- // MODULES / RAID STATUS BARS
--------------------------------------------------------------------------------

hooksecurefunc('DefaultCompactUnitFrameSetup', function (f)
  f.healthBar:SetStatusBarTexture(.75, .75, .75)
end)

hooksecurefunc('CompactUnitFrame_SetUnit', function (f)
  f.healthBar:SetStatusBarTexture(.75, .75, .75)
end)
