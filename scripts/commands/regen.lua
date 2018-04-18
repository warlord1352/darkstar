---------------------------------------------------------------------------------------------------
-- func: regen
-- desc: Toggles refresh/regen mode on the player.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
    if (player:getVar("Regen") == 0) then
        -- Toggle Regen on..
        player:setVar("Regen", 1);

        -- Add bonus effects to the player..
        player:addStatusEffect(EFFECT_REFRESH,4,0,0);
        player:addStatusEffect(EFFECT_REGEN,20,0,0);
		player:addStatusEffect(EFFECT_REGAIN,1,0,0);

    else
        -- Toggle Regen off..
        player:setVar("Regen", 0);

        player:delStatusEffect(EFFECT_REFRESH);
        player:delStatusEffect(EFFECT_REGEN);
        player:delStatusEffect(EFFECT_REGAIN);


    end
end