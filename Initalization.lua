function (modTable)
    modTable.spells = {
        {
            spellName = "Moonfire_player",
            color = modTable.config.moonfireColor,
            trackSpell = true,
        },
        {
            spellName = "Sunfire_player",
            color = modTable.config.sunfireColor,
            trackSpell = true,
        },
        {
            spellName = "Stellar Flare_player",
            color = modTable.config.stellarColor,
            trackSpell = modTable.config.trackStellar,
        },
        {
            spellName = "Fungal Growth_player",
            color = modTable.config.shroomColor,
            trackSpell = modTable.config.trackShroom,
        }
    }
    
    
    modTable.SetColor =  function (unitFrame, color)        
        
        if (modTable.config.sborder) then
            Plater.SetBorderColor(unitFrame, color)           
        end
        
        if (modTable.config.splate) then        
            Plater.SetNameplateColor(unitFrame, color)
        end
        
        if (modTable.config.sname) then
            local npcName = unitFrame.healthBar.unitName            
            Plater:SetFontColor (npcName, color)
        end
    end
end