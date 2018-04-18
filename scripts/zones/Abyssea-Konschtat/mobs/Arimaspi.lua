-----------------------------------
-- Area: Abyssea - Konschtat
--  MOB: Arimaspi
-- ID: 16838993
-----------------------------------
package.loaded["scripts/zones/Abyssea-Konschtat/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/status");
require("scripts/zones/Abyssea-Konschtat/TextIDs");
-----------------------------------

function onMobInitialize(mob)
end;

function onMobSpawn(mob)
end;

function onMobFight(mob, target)
end;

function onCriticalHit(mob)

    if (math.random(100) < 20 and mob:AnimationSub() == 0) then  -- 20% change to break that horn on crit
        mob:AnimationSub(1);
    end
end;

function onMobDeath(mob, player, Killer)

		player:addCurrency("Cruor",500);
		player:messageSpecial(CRUOR_OBTAINED, 500);
end;
