function (self, unitId, unitFrame, envTable, modTable)  
    local spells = modTable.spells
    
    -- Do nothing if the player isn't in combat
    if(not Plater.IsInCombat() and not trackPVP) then
        return;
    end
    -- Do nothing if the unit isn't in combat
    if(not unitFrame.InCombat and not trackPVP) then
        return;
    end
    
    -- Only work in PvE
    if(unitFrame.actorType ~= "enemynpc" and not trackPVP) then
        return;
    end
    
    
    -- Check each spell in the spell table and see if it is applied. If it is, set the color.
    for k,v in pairs(spells) do
        if(not Plater.UnitHasAura(unitFrame, v.spellName) and v.trackSpell) then
            modTable.SetColor(unitFrame, v.color)
            break;
        else
            modTable.SetColor(unitFrame)
        end
    end
end