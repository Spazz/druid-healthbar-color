function (self, unitId, unitFrame, envTable, modTable)  
    local spellIDs = envTable.spellIDs
    local trackStellar = modTable.config.trackStellar
    local trackShroom = modTable.config.trackShroom
    local trackPVP = modTable.config.trackPVP
    
    local hasmf
    local hassf
    local hasfl
    local hasShroom
    
    
    -- Do nothing if the player isn't in combat
    if(not Plater.IsInCombat() and not trackPVP) then
        return
    end
    -- Do nothing if the unit isn't in combat
    if(not unitFrame.InCombat and not trackPVP) then
        return
    end
    
    -- Only work in PvE
    if(unitFrame.actorType ~= "enemynpc" and not trackPVP) then
        return;
    end
    
    
    
    if (Plater.UnitHasAura(unitFrame, "Moonfire_player")) then
        hasmf = true
    else
        hasmf = false
    end
    
    if (Plater.UnitHasAura(unitFrame, "Sunfire_player")) then
        hassf = true
    else
        hassf = false
    end
    
    if (Plater.UnitHasAura(unitFrame, "Stellar Flare_player")) then
        hasfl = true
    else
        hasfl = false
    end
    
    if (Plater.UnitHasAura(unitFrame, "Fungal Growth_player")) then
        hasShroom = true
    else
        hasShroom = false
    end
    
    -- Sets NamePlate color to missing Moonfire color and stops
    if (not hasmf) then
        Plater.SetNameplateColor (unitFrame, modTable.config.moonfireColor)
        return;
    end
    
    -- Sets NamePlate color to missing Sunfire color and stops
    if (not hassf) then
        Plater.SetNameplateColor (unitFrame, modTable.config.sunfireColor)
        return;
    end
    
    if (not hasfl and trackStellar) then
        Plater.SetNameplateColor (unitFrame, modTable.config.stellarColor)
        return;
    end
    
    if (not hasShroom and trackShroom) then
        Plater.SetNameplateColor (unitFrame, modTable.config.shroomColor)
        return;
    end
end

