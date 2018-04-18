-----------------------------------
-- Area: Port Jeuno
--  NPC: Treasure Coffer
-- AF3 Merchant NPC
-----------------------------------
package.loaded["scripts/zones/Port_Jeuno/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Port_Jeuno/TextIDs");
require("scripts/globals/shop");


function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)

    player:showText(npc,GEKKO_SHOP_DIALOG);
    local stock =
    {
        3195,100000,     -- Raiders seal: Feet
        12093,100000      -- Raiders Feet
    }
    showShop(player, STATIC, stock);
end;

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;
