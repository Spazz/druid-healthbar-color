function(self, unitId, unitFrame, envTable, modTable)
    local spellIDs = {}
    
    for key,value in pairs(modTable.config) do
        table.insert(spellIDs, key)
    end
    
    envTable.spellIDs = spellIDs
    
end