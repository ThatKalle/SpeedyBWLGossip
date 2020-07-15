-- File: SpeedyBWLGossip.lua
-- Name: SpeedyBWLGossip
-- Author: ThatKalle
-- Description: Automate BWL gossip.
-- Version: 1.0.0

local E = CreateFrame("Frame")
E:RegisterEvent("GOSSIP_SHOW")
E:SetScript("OnEvent", function(self, event, ...)
    return self[event] and self[event](self, ...)
end)

function E:GOSSIP_SHOW()
    if IsControlKeyDown() then return end
    local npcGuid = UnitGUID("npc") or nil
    if npcGuid then
        local void, void, void, void, void, npcID = strsplit("-", npcGuid)
        if (not npcID) then return end
        -- Orb of Command
        if npcID == "179879" then
            SelectGossipOption(1)
        end
        -- Vaelastrasz the Corrupt
        if npcID == "13020" then
            SelectGossipOption(1)
        end
        -- Lord Victor Nefarius
        if npcID == "10162" then
            SelectGossipOption(1)
        end
    end
end
