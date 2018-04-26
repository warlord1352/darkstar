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

	if (player:getMainJob() == JOBS.THF) then

		player:showText(npc,GEKKO_SHOP_DIALOG);
		local stock_1 =
		{
			12073,100000;
			12093,100000      -- Raiders Feet
		}
		showShop(player, STATIC, stock_1);
		
	elseif (player:getMainJob() == JOBS.RDM) then
	
		player:showText(npc,TREASURE_COFFER_DIALOG);
		local stock_2 =
		{
			12012,100000;      -- Estoqueurs Head
			12032,100000;		--Estoqueurs Body
			12092,100000;		--Estoqueur feet
			12052,100000;		--Estoqueur hands
			12072,100000		--Estoqueur legs
		}
		showShop(player, STATIC, stock_2);
		
	end;
end;


function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;