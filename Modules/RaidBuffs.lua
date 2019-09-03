--------------------------------------------------------------------------------
-- // MODULES / RAID BUFFS
--------------------------------------------------------------------------------

-- buffs
hooksecurefunc('CompactUnitFrame_UpdateBuffs', function (f)
  if not f.buffFrames then return end
  for i = 1, #f.buffFrames do
    local buff = f.buffFrames[i]
    if buff and buff:IsShown() then
      buff.icon:SetTexCoord(0.07, 0.93, 0.07, 0.93)
      buff:SetScale(1)
    end
  end
end)

-- debuffs
hooksecurefunc('CompactUnitFrame_UpdateDebuffs', function (f)
  if not f.debuffFrames then return end
  for i = 1, #f.debuffFrames do
    local debuff = f.debuffFrames[i]
    if debuff and debuff:IsShown() then
      debuff.icon:SetTexCoord(0.07, 0.93, 0.07, 0.93)
      debuff:SetScale(1.2)
    end
  end
end)
