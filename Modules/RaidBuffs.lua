--------------------------------------------------------------------------------
-- // MODULES / RAID BUFFS
--------------------------------------------------------------------------------

-- buffs
hooksecurefunc('CompactUnitFrame_UpdateBuffs', function (f)
  if not f.buffFrames then return end
  for i = 1, #f.buffFrames do
    local buff = f.buffFrames[i]
    if buff and buff:IsShown() then
      buff:SetScale(1)
      -- flat icon
      buff.icon:SetTexCoord(.07, .93, .07, .93)
    end
  end
end)

-- debuffs
hooksecurefunc('CompactUnitFrame_UpdateDebuffs', function (f)
  if not f.debuffFrames then return end
  for i = 1, #f.debuffFrames do
    local debuff = f.debuffFrames[i]
    if debuff and debuff:IsShown() then
      debuff:SetScale(1.2)
      -- flat icon
      debuff.icon:SetTexCoord(.07, .93, .07, .93)
    end
  end
end)
