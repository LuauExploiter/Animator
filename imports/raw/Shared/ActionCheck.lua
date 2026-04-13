-- Script Path: game:GetService("ReplicatedStorage").ActionCheck
-- Took 0.22s to decompile.
-- Executor: Delta (1.0.714.1091)

return {
    Check = function(_, v1, v2) --[[ Line: 3 ]] --[[ Name: Check ]]
        local v3 = v2 or {};
        local v4 = false;
        local v5 = v1:FindFirstChild("Freeze") or v1:FindFirstChild("Slowed");
        if v5 and v1:GetAttribute("InMech") and not v1:FindFirstChild("FinalDeath") and not v1:FindFirstChild("AbsoluteImmortal") and not v1:GetAttribute("Finisherd") and not v1:FindFirstChild("RootAnchor") and not v1:FindFirstChild("CanEscape") and not v5:GetAttribute("Forced") then
            v5 = nil;
        end;
        if v5 and v5.Name == "Freeze" and v5:GetAttribute("OverrideByDeath") and table.find(v3, "Death Blow") then
            v5 = nil;
        end;
        if v5 and v1:FindFirstChild("DoingEmote") and table.find(v3, "Dashh") then
            v5 = nil;
        end;
        local l_ForceField_0 = v1:FindFirstChildOfClass("ForceField");
        if table.find(v3, "Emote") and v5 and l_ForceField_0 and l_ForceField_0:GetAttribute("Emote") then
            v5 = nil;
        end;
        if v5 and not table.find(v3, "FakeRagdoll") then
            return;
        else
            if v1:GetAttribute("NoUp") then
                table.insert(v3, "Ragdoll");
            end;
            if v1:FindFirstChild("Ragdoll") and not table.find(v3, "Ragdoll") or v1.Humanoid.Health == 0 then
                return;
            elseif v1:GetAttribute("Blocking") and not table.find(v3, "Block") then
                return;
            elseif workspace:GetAttribute("NoAttack") and workspace:GetAttribute("VIPServerOwner") ~= v1.Name and not table.find(v3, "Emote") then
                return;
            else
                if workspace:GetAttribute("VIPServer") then
                    local l_Tagged_0 = game:GetService("CollectionService"):GetTagged("NoAttackPS");
                    if not table.find(v3, "Emote") and not table.find(v3, "Run") then
                        if workspace:GetAttribute("RoundOngoing") and workspace:GetAttribute("RoundType") == 2 and not v1:GetAttribute("CanAttack") then
                            v4 = true;
                        end;
                        if #l_Tagged_0 > 0 then
                            for _, v9 in pairs(workspace:GetPartsInPart(v1.PrimaryPart)) do
                                if table.find(l_Tagged_0, v9) then
                                    v4 = true;
                                    break;
                                end;
                            end;
                        end;
                    end;
                end;
                if workspace:GetAttribute("GlobalStun") and not table.find(v3, "Emote") then
                    return;
                elseif v4 then
                    return;
                else
                    local l_Torso_0 = v1:FindFirstChild("Torso");
                    local l_PrimaryPart_0 = v1.PrimaryPart;
                    if l_Torso_0 and l_PrimaryPart_0 and (l_Torso_0.Position - l_PrimaryPart_0.Position).magnitude > 5 then
                        local v12 = true;
                        local l_Humanoid_0 = v1:FindFirstChildOfClass("Humanoid");
                        if l_Humanoid_0 then
                            local v14 = {
                                18182456608, 
                                16065180813, 
                                18182425133, 
                                14901894832, 
                                13632671563, 
                                13633468484, 
                                136370737633649
                            };
                            for _, v16 in pairs(l_Humanoid_0:GetPlayingAnimationTracks()) do
                                local v17 = tonumber((string.match(v16.Animation.AnimationId, "%d+")));
                                if table.find(v14, v17) then
                                    v12 = false;
                                    break;
                                end;
                            end;
                        end;
                        if not v12 then
                            return;
                        end;
                    end;
                    return true;
                end;
            end;
        end;
    end
};
