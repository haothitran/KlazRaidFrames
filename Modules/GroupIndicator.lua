--------------------------------------------------------------------------------
-- // MODULES / GROUPS INDICATOR
--------------------------------------------------------------------------------

-- hide party tag
hooksecurefunc('CompactPartyFrame_Generate', function ()
  if CompactPartyFrame and CompactPartyFrame.title then
    CompactPartyFrame.title:Hide()
  end
end)

-- hide group number
hooksecurefunc('CompactRaidGroup_InitializeForGroup', function (f)
  if f then
    f.title:Hide()
  end
end)
