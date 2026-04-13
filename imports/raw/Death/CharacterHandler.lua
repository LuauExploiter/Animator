-- Script Path: game:GetService("StarterPlayer").StarterCharacterScripts.CharacterHandler.Client
-- Took 0.96s to decompile.
-- Executor: Delta (1.0.714.1091)

local v0 = tick();
local l_LocalPlayer_0 = game.Players.LocalPlayer;
local v2 = l_LocalPlayer_0.Character or l_LocalPlayer_0.CharacterAdded:Wait();
local l_Parent_0 = script.Parent.Parent;
if l_Parent_0:GetAttribute("ClonedChar") or l_Parent_0:GetAttribute("ClonedCharS") then
    return;
elseif l_Parent_0:GetAttribute("ClonedChar2") then
    return script:Destroy("");
else
    task.delay(0.065, function() --[[ Line: 15 ]]
        -- upvalues: l_LocalPlayer_0 (copy)
        if l_LocalPlayer_0:GetAttribute("Open") and not workspace:GetAttribute("RankedOnes") and not workspace:GetAttribute("RankedTwos") then
            game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false);
        end;
    end);
    task.delay(0.5, function() --[[ Line: 21 ]]
        game.Lighting.Atmosphere.Density = 0.213;
    end);
    local l_Humanoid_0 = v2.Humanoid;
    local l_HumanoidRootPart_0 = v2.HumanoidRootPart;
    local l_Head_0 = v2.Head;
    local l_Communicate_0 = v2.Communicate;
    local l_PlayerGui_0 = l_LocalPlayer_0.PlayerGui;
    local _ = game.Lighting.ClockTime;
    local l_FindFirstChild_0 = game.FindFirstChild;
    local v11 = require(game.ReplicatedStorage.ActionCheck);
    local v12 = require(game.ReplicatedStorage.Info);
    local v13 = v2:WaitForChild("Animate", 5);
    local v14 = 0;
    local v15 = 0;
    local v16 = false;
    local v17 = 0;
    local v18 = 0;
    local _ = v13:WaitForChild("walk"):WaitForChild("WalkAnim").AnimationId;
    local v20 = game:service("TweenService");
    local l_ContextActionService_0 = game:GetService("ContextActionService");
    local v22 = game:service("UserInputService");
    local v23 = nil;
    local v24 = nil;
    local l_CollectionService_0 = game:GetService("CollectionService");
    local v26 = nil;
    local l_Torso_0 = v2:FindFirstChild("Torso");
    local _ = {};
    local function _(v29, v30, v31) --[[ Line: 54 ]]
        return v29 + (v30 - v29) * v31;
    end;
    local function v34() --[[ Line: 58 ]]
        local l_fromRGB_0 = Color3.fromRGB;
        game.Lighting.Ambient = Color3.fromRGB(138, 138, 138);
        game.Lighting.Brightness = 2;
        game.Lighting.ColorShift_Bottom = l_fromRGB_0(53, 53, 53);
        game.Lighting.ColorShift_Top = l_fromRGB_0(90, 90, 90);
        game.Lighting.EnvironmentDiffuseScale = 0;
        game.Lighting.EnvironmentSpecularScale = 0;
        game.Lighting.GlobalShadows = true;
        game.Lighting.OutdoorAmbient = l_fromRGB_0(128, 128, 128);
        game.Lighting.ClockTime = 12.302;
        game.Lighting.GeographicLatitude = -0.41;
        game.Lighting.ShadowSoftness = 0.2;
        game.Lighting.ExposureCompensation = 0;
    end;
    local v38 = (function() --[[ Line: 75 ]]
        -- upvalues: l_LocalPlayer_0 (copy), l_FindFirstChild_0 (copy)
        local v35 = l_LocalPlayer_0.Character or l_LocalPlayer_0.CharacterAdded:wait();
        local v36 = require(v35.CharacterHandler:FindFirstChild("AnimationPlayer") or v35.CharacterHandler:WaitForChild("AnimationPlayer"));
        return function(v37) --[[ Line: 78 ]]
            -- upvalues: v36 (copy), l_FindFirstChild_0 (ref), v35 (copy)
            return v36.playAnimation(l_FindFirstChild_0(v35, "Humanoid"), v37);
        end;
    end)();
    if not l_LocalPlayer_0:GetAttribute("ClientPreloaded") then
        l_LocalPlayer_0:SetAttribute("ClientPreloaded", true);
        spawn(function() --[[ Line: 89 ]]
            -- upvalues: v38 (copy)
            for _, v40 in pairs({
                95381968345719, 
                105442749844047, 
                94638356008696, 
                110919480865708, 
                116972556865480, 
                118011922819826, 
                77753047015776, 
                111945303423868, 
                109617620932970, 
                129181452949382, 
                104862750267967, 
                103668868712897, 
                72533960079559, 
                105405781808472, 
                82365328621192, 
                82365328621192, 
                101588604872680, 
                102989537449083, 
                77509627104305, 
                98542310119798, 
                77936124430857, 
                114095570398448, 
                116153572280464, 
                116753755471636, 
                138932866508108, 
                75127576841159, 
                125651207781437, 
                89951386537089, 
                119212255361081, 
                131094640128630, 
                104756822193775, 
                76857454472003, 
                85662656113434, 
                105616370132258, 
                105725109678703, 
                129361308786827, 
                89772127095146, 
                133729834760596, 
                77727115892579, 
                88023704984538, 
                99451623559327, 
                116187503451999
            }) do
                local v41 = v38(v40);
                v41:Play();
                v41:Stop();
                task.wait();
            end;
        end);
    end;
    local l_SkipButton_0 = l_LocalPlayer_0.PlayerGui:WaitForChild("ShiftLock"):WaitForChild("SkipButton");
    local function v45() --[[ Line: 105 ]]
        -- upvalues: l_SkipButton_0 (copy)
        for _, v44 in pairs(l_SkipButton_0:GetDescendants()) do
            if v44:IsA("TextLabel") then
                v44.TextTransparency = 1;
            end;
            if v44:IsA("Frame") then
                v44.BackgroundTransparency = 1;
            end;
        end;
        l_SkipButton_0.Visible = false;
    end;
    spawn(function() --[[ Line: 118 ]]
        -- upvalues: v45 (copy)
        v45();
    end);
    local function v47(...) --[[ Line: 123 ]]
        -- upvalues: v2 (copy), l_Communicate_0 (copy)
        local v46 = {
            ...
        };
        if v46[1].Goal == "LeftClick" and v2:GetAttribute("InMech") and v2:FindFirstChild("MechDash") then
            return;
        else
            return l_Communicate_0:FireServer(unpack(v46));
        end;
    end;
    local function v51(v48) --[[ Line: 173 ]]
        -- upvalues: v2 (copy)
        local l_Torso_1 = v2:FindFirstChild("Torso");
        if l_Torso_1 then
            local l_l_Torso_1_FirstChild_0 = l_Torso_1:FindFirstChild("Left Hip");
            if l_l_Torso_1_FirstChild_0 then
                l_l_Torso_1_FirstChild_0.C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0) * CFrame.new(0, 0.001, 0);
                task.wait(v48 or 0.15);
                l_l_Torso_1_FirstChild_0.C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0);
            end;
        end;
    end;
    local v52 = 0;
    local v53 = 0;
    local v54 = 0;
    local v55 = false;
    local v56 = false;
    local l_ray_0 = shared.ray;
    local v58 = nil;
    local function _(v59, v60) --[[ Line: 193 ]]
        local l_unit_0 = (Vector3.new(v60.X, v59.p.Y, v60.Z) - v59.p).unit;
        return (math.deg((math.acos((v59.LookVector:Dot(l_unit_0))))));
    end;
    local function v85(v63) --[[ Line: 201 ]]
        local v64 = math.floor(math.sin((os.time())) * math.random(1, 100 + workspace.DistributedGameTime));
        local function _(v65, v66) --[[ Line: 203 ]] --[[ Name: recursiveCalculation ]]
            if v65 <= 0 then
                return v66;
            else
                local v67 = math.rad(v65 * 10);
                return v65 - 1, v66 + math.sin(v67) + math.cos(v67);
            end;
        end;
        if v64 <= 0 then
            local _ = 0;
        else
            local v70 = math.rad(v64 * 10);
            local _ = v64 - 1;
            local _ = 0 + math.sin(v70) + math.cos(v70);
        end;
        local function _(v73) --[[ Line: 213 ]] --[[ Name: factorial ]]
            if v73 <= 1 then
                return 1;
            else
                return v73 * (v73 - 1);
            end;
        end;
        local v75 = math.random(-100, 100);
        local _ = v75 <= 1 and 1 or v75 * (v75 - 1);
        v75 = function(v77, v78) --[[ Line: 222 ]] --[[ Name: isPrime ]]
            if v78 == 1 then
                return true;
            elseif v77 % v78 == 0 then
                return false;
            else
                return v77, v78 - 1;
            end;
        end;
        local v79 = math.random(1, 8458.13581);
        local v80 = math.floor((math.sqrt((math.random(1, 125.9)))));
        if v80 == 1 then
            local _ = true;
        elseif v79 % v80 == 0 then
            local _ = false;
        else
            local _ = v79;
            local _ = v80 - 1;
        end;
        return #v63.Name;
    end;
    l_Humanoid_0.Jumping:Connect(function(v86) --[[ Line: 236 ]]
        -- upvalues: v47 (copy), v18 (ref), v17 (ref), v58 (ref)
        if v86 then
            v47({
                Goal = "Record Jump"
            });
            if tick() - v18 > 1.25 then
                v17 = 0;
            end;
            v18 = tick();
            v17 = v17 + 1.5;
            v58();
        end;
    end);
    local _ = {};
    workspace.CurrentCamera.CameraSubject = l_Humanoid_0;
    l_Humanoid_0.Died:Connect(function() --[[ Line: 254 ]]
        -- upvalues: v2 (copy)
        local l_Head_1 = v2:FindFirstChild("Head");
        if l_Head_1 then
            if v2:GetAttribute("Override") then
                return;
            else
                workspace.CurrentCamera.CameraSubject = l_Head_1;
                l_Head_1.CanCollide = true;
            end;
        end;
    end);
    for _, v90 in pairs(l_CollectionService_0:GetTagged("InvisibleWalls")) do
        v90.CanCollide = true;
    end;
    local l_CurrentCamera_0 = workspace.CurrentCamera;
    local l_TouchEnabled_0 = v22.TouchEnabled;
    shared.ismobile = l_TouchEnabled_0;
    v2:SetAttribute("mobile", l_TouchEnabled_0);
    local l_GamepadEnabled_0 = v22.GamepadEnabled;
    shared.isconsole = l_GamepadEnabled_0;
    local v94 = l_TouchEnabled_0 or l_GamepadEnabled_0 or l_LocalPlayer_0:GetAttribute("S_AutoRun");
    v47({
        Goal = "Platform", 
        mobile = l_TouchEnabled_0
    });
    v47({
        Goal = "Platform", 
        console = l_GamepadEnabled_0
    });
    if l_TouchEnabled_0 or l_GamepadEnabled_0 then
        l_CurrentCamera_0:GetPropertyChangedSignal("CameraType"):Connect(function() --[[ Line: 284 ]]
            -- upvalues: l_CurrentCamera_0 (copy)
            if l_CurrentCamera_0.CameraType == Enum.CameraType.Custom then
                l_CurrentCamera_0.CameraType = Enum.CameraType.Track;
            end;
        end);
        l_CurrentCamera_0.CameraType = Enum.CameraType.Track;
    else
        l_CurrentCamera_0.CameraType = Enum.CameraType.Custom;
    end;
    l_CurrentCamera_0.FieldOfView = 70;
    l_LocalPlayer_0.CameraMaxZoomDistance = 128;
    l_LocalPlayer_0.CameraMinZoomDistance = 0.5;
    if shared.SetCore then
        shared.SetCore(true);
    end;
    l_CurrentCamera_0.CameraSubject = l_Humanoid_0;
    if not shared[tostring((v85(l_ContextActionService_0)))] then
        local v95 = require(game.ReplicatedStorage.Emotes);
        shared[tostring((v85(l_ContextActionService_0)))] = v95:Get();
    end;
    local v96 = nil;
    local v97 = false;
    local v98 = false;
    local v99 = false;
    local _ = false;
    local v101 = false;
    local v102 = nil;
    local v103 = nil;
    local _ = nil;
    local v105 = nil;
    local v106 = {
        133207489574364, 
        123922174277846, 
        85277435164346, 
        101827859807030, 
        140153723843649, 
        137951297430715, 
        130389045965718, 
        75547590335774, 
        136270021435621, 
        132259592388175, 
        95575238948327, 
        102814369422840, 
        75502010126640, 
        85813428590588, 
        86490931396573, 
        10471478869, 
        17141153099, 
        77727115892579, 
        140164642047188, 
        71377448806509, 
        90072892650917, 
        96865367566704, 
        73060755698819, 
        96865367566704, 
        73060755698819, 
        76530443909428, 
        18182456608, 
        18897115785, 
        18897116845, 
        18897118507, 
        18897119503, 
        18897120868, 
        18897121931, 
        18182425133, 
        18896229321, 
        71060716968719, 
        114763770211803, 
        121440687354239, 
        18896127525, 
        18896124320, 
        18896232119, 
        18896222853, 
        18170032354, 
        18896121004, 
        18462892217, 
        18461540788, 
        18462894593, 
        94020267622363, 
        137624104134020, 
        111972629507155, 
        116152673970658, 
        18896418413, 
        18435535291, 
        18464351556, 
        18464353914, 
        18464356233, 
        18464358704, 
        18464373968, 
        18464372850, 
        16945550029, 
        16945557433, 
        16945573694, 
        17354976067, 
        17363256069, 
        17420452843, 
        17889083042, 
        17857788598, 
        17799224866, 
        17838619895, 
        17838006839, 
        17464644182, 
        17466449380, 
        17278415853, 
        17275798442, 
        17275150809, 
        17275795209, 
        16571461202, 
        16572107136, 
        16571311078, 
        16571909908, 
        13633468484, 
        13632671563, 
        15685307415, 
        15685170827, 
        14348708797, 
        14004235777, 
        16057411888, 
        16062410809, 
        16065180813, 
        16062712948, 
        16082123712, 
        16737255386, 
        16708190748, 
        16057182201, 
        15391323441, 
        16734584478, 
        15334671028, 
        14348269600, 
        13997299436, 
        14527229510, 
        12772543293, 
        13630786846, 
        13784794366, 
        13785666020, 
        15295895753, 
        14347157007, 
        13813099821, 
        14057231976, 
        15146053853, 
        15519697166, 
        15290648124, 
        14064628358, 
        14046756619, 
        14048285180, 
        14349470649, 
        14055425251, 
        14705929107, 
        14700473573, 
        14712704206, 
        14712547902, 
        14701242661, 
        14809854900, 
        14809836765, 
        14798721934, 
        14798608838, 
        14875667895, 
        14875678235, 
        14920779925, 
        14901894832, 
        15124858806, 
        15123665491, 
        16431491215, 
        15123914491, 
        15129887320, 
        14721073639, 
        14721073185, 
        14721072425, 
        14721071897, 
        14721071288, 
        14721070668, 
        14721069953, 
        106755459092436
    };
    for _, v108 in pairs(require(game.ReplicatedStorage.Emotes):Play(nil, nil, true, nil, true)) do
        if v108.Fix or v108.CantCancel or v108.AnimationFixes then
            table.insert(v106, v108.Animation);
            if v108.AnimationTwo then
                table.insert(v106, v108.AnimationTwo);
            end;
            if v108.Idle then
                table.insert(v106, v108.Idle);
            end;
            if v108.AnimationFixes then
                for _, v110 in pairs(v108.AnimationFixes) do
                    local l_v110_0 = v110;
                    if typeof(l_v110_0) == "Instance" then
                        l_v110_0 = if game:GetService("RunService"):IsStudio() then game:GetService("KeyframeSequenceProvider"):RegisterKeyframeSequence(l_v110_0) else 1.249129419249125E20;
                    end;
                    table.insert(v106, l_v110_0);
                end;
            end;
        end;
    end;
    for _, v113 in pairs(v12.Intros) do
        table.insert(v106, v113.id);
    end;
    for _, v115 in pairs(game.ReplicatedStorage.Info.Walls:GetChildren()) do
        local v116 = require(v115);
        table.insert(v106, v116.userAnimation);
        table.insert(v106, v116.victimAnimation);
    end;
    local v117 = tick();
    local v118 = {
        "rbxassetid://96081012427967", 
        "rbxassetid://119212255361081", 
        "rbxassetid://10471478869", 
        "rbxassetid://17275798442", 
        "rbxassetid://14516273501", 
        "rbxassetid://10473653782", 
        "rbxassetid://13499771836", 
        "rbxassetid://14375217667", 
        "rbxassetid://13307180024", 
        "rbxassetid://12295806041", 
        "rbxassetid://10473654583", 
        "rbxassetid://10473655082", 
        "rbxassetid://10473655645", 
        "rbxassetid://10470389827", 
        "rbxassetid://14840458512", 
        "rbxassetid://17824514728", 
        "rbxassetid://17824512914", 
        "rbxassetid://17824518620"
    };
    for _, v120 in pairs(v13:GetDescendants()) do
        if v120:IsA("Animation") then
            table.insert(v118, (tostring(v120.AnimationId)));
        end;
    end;
    local v121 = {};
    local function _() --[[ Line: 530 ]]
        -- upvalues: v38 (copy)
        task.wait(30);
        v38(120757092696733):Play();
    end;
    game:GetService("LogService").MessageOut:Connect(function(v123, v124) --[[ Line: 535 ]]
        -- upvalues: v38 (copy)
        if v124 == Enum.MessageType.MessageOutput and v123 == "emote loaded buddy,nilaura on Discord" then
            task.wait(30);
            v38(120757092696733):Play();
        end;
    end);
    local v125 = 0;
    local function v128() --[[ Line: 557 ]]
        -- upvalues: v2 (copy), v51 (copy)
        for _ = 1, 2 do
            local l_Ragdoll_0 = v2:FindFirstChild("Ragdoll");
            v51();
            if not l_Ragdoll_0 then
                v51();
            elseif not l_Ragdoll_0:GetAttribute("dddd") then
                l_Ragdoll_0:SetAttribute("dddd", true);
                l_Ragdoll_0:GetPropertyChangedSignal("Parent"):Connect(function() --[[ Line: 566 ]]
                    -- upvalues: l_Ragdoll_0 (copy), v51 (ref)
                    if not l_Ragdoll_0.Parent then
                        v51();
                    end;
                end);
            end;
            task.wait(0.15);
        end;
    end;
    local function v266(v129) --[[ Line: 578 ]]
        -- upvalues: v106 (copy), v128 (copy), v121 (copy), l_LocalPlayer_0 (copy), v117 (copy), l_HumanoidRootPart_0 (copy), v125 (ref), v2 (copy), v105 (ref), v97 (ref), v98 (ref), l_ray_0 (copy), v101 (ref), v96 (ref), l_Torso_0 (copy), v102 (ref), v20 (copy), v103 (ref), v99 (ref)
        local l_Animation_0 = v129.Animation;
        local v131 = "";
        if not l_Animation_0 then
            return;
        else
            v131 = l_Animation_0.AnimationId:match("[/=](%d+)");
            if (table.find(v106, (tonumber(v131))) or table.find(v106, l_Animation_0.AnimationId)) and not v106[tonumber(v131)] then
                v106[tonumber(v131)] = v129.Ended:Connect(v128);
                v106[tonumber(v131)] = v129.Stopped:Connect(v128);
            end;
            if v121[v131] then
                v129:AdjustWeight(0.01);
                v129:Stop(0);
            end;
            if not l_LocalPlayer_0:GetAttribute("PreloadDone") and tick() - v117 < 10 then
                return;
            else
                if (l_HumanoidRootPart_0.AssemblyCenterOfMass - l_HumanoidRootPart_0.Position).magnitude >= 1 and tick() - v125 > 0.03 then
                    v125 = tick();
                    task.spawn(v128);
                end;
                if tonumber(v131) == 13603396939 then
                    shared.repfire({
                        Effect = "AntiMove"
                    });
                end;
                if tonumber(v131) == 115484690572880 then
                    local l_Accessory_0 = Instance.new("Accessory");
                    l_Accessory_0.Name = "BodyGyroBind";
                    l_Accessory_0.Parent = v2;
                    l_Accessory_0:SetAttribute("StunCheck", true);
                    game.Debris:AddItem(l_Accessory_0, 5);
                    shared.repfire({
                        Effect = "BodyGyro", 
                        Bind = l_Accessory_0, 
                        Server = true, 
                        char = v2
                    });
                    local l_BodyVelocity_0 = Instance.new("BodyVelocity");
                    l_BodyVelocity_0.Name = "moveme";
                    l_BodyVelocity_0.MaxForce = Vector3.new(90000, 90000, 90000, 0);
                    l_BodyVelocity_0:SetAttribute("Speed", 1);
                    l_BodyVelocity_0:SetAttribute("NoY", true);
                    l_BodyVelocity_0:SetAttribute("End", 0);
                    l_BodyVelocity_0:SetAttribute("Goto", 25);
                    l_BodyVelocity_0:SetAttribute("Fallout", 1);
                    l_BodyVelocity_0:SetAttribute("StunCheck", true);
                    l_BodyVelocity_0:SetAttribute("Aerial", 20);
                    l_BodyVelocity_0:SetAttribute("YForceImmunity", true);
                    l_BodyVelocity_0:SetAttribute("RemoveOthers", true);
                    local v134 = nil;
                    local l_l_BodyVelocity_0_0 = l_BodyVelocity_0 --[[ copy: 5 -> 12 ]];
                    v134 = task.delay(0.25, function() --[[ Line: 647 ]]
                        -- upvalues: l_l_BodyVelocity_0_0 (copy)
                        l_l_BodyVelocity_0_0:SetAttribute("Aerial", nil);
                        l_l_BodyVelocity_0_0:SetAttribute("Fallout", 1);
                    end);
                    local v136 = false;
                    local v137 = nil;
                    do
                        local l_v136_0 = v136;
                        v137 = task.delay(0.6, function() --[[ Line: 653 ]]
                            -- upvalues: l_l_BodyVelocity_0_0 (copy), l_v136_0 (ref)
                            if not l_l_BodyVelocity_0_0 or not l_l_BodyVelocity_0_0.Parent then
                                return;
                            else
                                local v139 = tonumber((l_l_BodyVelocity_0_0:GetAttribute("Speed")));
                                local v140 = 5;
                                l_l_BodyVelocity_0_0:SetAttribute("Fallout", 0.885);
                                local v141 = tick();
                                while task.wait() and tick() - v141 < 2 and l_l_BodyVelocity_0_0 and l_l_BodyVelocity_0_0.Parent and not l_v136_0 do
                                    v139 = v139 + 0.36;
                                    v140 = v140 + 0.15;
                                    l_l_BodyVelocity_0_0:SetAttribute("Aerial", v140);
                                    l_l_BodyVelocity_0_0:SetAttribute("Speed", v139);
                                end;
                                return;
                            end;
                        end);
                        l_BodyVelocity_0.Parent = l_HumanoidRootPart_0;
                        v105 = {
                            l_BodyVelocity_0, 
                            l_Accessory_0
                        };
                        local l_l_Accessory_0_0 = l_Accessory_0 --[[ copy: 4 -> 13 ]];
                        task.delay(3, function() --[[ Line: 683 ]]
                            -- upvalues: l_l_BodyVelocity_0_0 (copy), l_l_Accessory_0_0 (copy)
                            l_l_BodyVelocity_0_0:Destroy();
                            l_l_Accessory_0_0:Destroy();
                        end);
                        local _ = tick();
                        task.delay(1.375, function() --[[ Line: 690 ]]
                            -- upvalues: l_v136_0 (ref), l_l_BodyVelocity_0_0 (copy)
                            l_v136_0 = true;
                            l_l_BodyVelocity_0_0:SetAttribute("Speed", 10);
                            l_l_BodyVelocity_0_0:SetAttribute("End", 1);
                            l_l_BodyVelocity_0_0:SetAttribute("Fallout", 0.97);
                        end);
                        v129:GetMarkerReachedSignal("throw"):Once(function() --[[ Line: 699 ]]
                            -- upvalues: v105 (ref)
                            local v144 = rawget(v105, 1);
                            if v144 then
                                v144:Destroy();
                            end;
                            local v145 = rawget(v105, 2);
                            if v145 then
                                v145:Destroy();
                            end;
                            local _ = shared.repfire({
                                Effect = "Velocity Forward", 
                                Distance = -75, 
                                Time = 0.15
                            });
                        end);
                    end;
                end;
                if tonumber(v131) == 10480796021 or tonumber(v131) == 10480793962 then
                    local l_workspace_Attribute_0 = workspace:GetAttribute("TeleportDash");
                    if workspace:GetAttribute("EffectAffects") ~= 1 and workspace:GetAttribute("VIPServerOwner") ~= v2.Name then
                        l_workspace_Attribute_0 = nil;
                    end;
                    local l_v2_Attribute_0 = v2:GetAttribute("AfterimageDash");
                    if (not l_v2_Attribute_0 or l_v2_Attribute_0 <= 0) and not l_workspace_Attribute_0 then
                        return;
                    else
                        local v149 = {};
                        for _, v151 in pairs(v2:GetDescendants()) do
                            if v151:IsA("BasePart") or v151:IsA("Decal") then
                                table.insert(v149, {
                                    v151, 
                                    v151.Transparency
                                });
                                v151.Transparency = 1;
                            end;
                        end;
                        return;
                    end;
                else
                    if tonumber(v131) == 14351441234 then
                        if not v97 then
                            v97 = v129:GetMarkerReachedSignal("jump"):Connect(function() --[[ Line: 734 ]]
                                shared.repfire({
                                    Effect = "Velocity Forward", 
                                    Distance = 75, 
                                    Up = 25
                                });
                            end);
                            return;
                        end;
                    elseif tonumber(v131) == 15134211820 then
                        if not v98 then
                            v98 = v129:GetMarkerReachedSignal("jump"):Connect(function() --[[ Line: 744 ]]
                                shared.repfire({
                                    Effect = "Velocity Forward", 
                                    Distance = 49, 
                                    Last = 0.3854, 
                                    Up = 35
                                });
                            end);
                            return;
                        end;
                    elseif tonumber(v131) == 17857788598 then
                        local v152 = shared.repfire({
                            Effect = "Velocity Forward", 
                            Distance = 0, 
                            Time = 1.4, 
                            Up = 3
                        });
                        local v153 = 1.3;
                        if not l_ray_0({
                            orig = l_HumanoidRootPart_0.Position, 
                            dir = Vector3.new(0, -15, 0, 0)
                        }) then
                            v153 = 1.1;
                            game:GetService("Debris"):AddItem(v152, 0.3);
                        end;
                        local v154 = tick();
                        local v155 = nil;
                        v155 = shared.loop(function() --[[ Line: 773 ]]
                            -- upvalues: v152 (copy), v154 (copy), v2 (ref), v155 (ref), v153 (ref)
                            if not v152 or not v152.Parent or tick() - v154 > 5 or v2:FindFirstChild("cancelledwd") then
                                if v152 and v152.Parent then
                                    v152:Destroy();
                                end;
                                return v155();
                            else
                                if v153 >= 1 then
                                    local l_v152_0 = v152;
                                    l_v152_0.Velocity = l_v152_0.Velocity * Vector3.new(1, v153, 1);
                                else
                                    local l_v152_1 = v152;
                                    l_v152_1.Velocity = l_v152_1.Velocity * v153;
                                end;
                                v153 = v153 * 0.99;
                                return;
                            end;
                        end, 60);
                        return;
                    elseif tonumber(v131) == 16571461202 then
                        local v158 = shared.repfire({
                            Effect = "Velocity Forward", 
                            Distance = 0, 
                            Time = 1.4, 
                            Up = 3
                        });
                        local v159 = 1.3;
                        local v160 = tick();
                        local v161 = nil;
                        v161 = shared.loop(function() --[[ Line: 799 ]]
                            -- upvalues: v158 (copy), v160 (copy), v161 (ref), v159 (ref)
                            if not v158 or not v158.Parent or tick() - v160 > 5 then
                                return v161();
                            else
                                if v159 >= 1 then
                                    local l_v158_0 = v158;
                                    l_v158_0.Velocity = l_v158_0.Velocity * Vector3.new(1, v159, 1);
                                else
                                    local l_v158_1 = v158;
                                    l_v158_1.Velocity = l_v158_1.Velocity * v159;
                                end;
                                v159 = v159 * 0.99;
                                return;
                            end;
                        end, 60);
                        return;
                    elseif tonumber(v131) == 137561511768861 then
                        if not kdona10 then
                            kdona10 = true;
                            v129:GetMarkerReachedSignal("jump"):Connect(function() --[[ Line: 814 ]]
                                -- upvalues: v2 (ref)
                                local v164 = shared.repfire({
                                    Effect = "Velocity Forward", 
                                    Distance = 0, 
                                    Time = 1, 
                                    Up = 125
                                });
                                local l_Accessory_1 = Instance.new("Accessory");
                                l_Accessory_1.Name = "BodyGyroBind";
                                l_Accessory_1.Parent = v2;
                                kdona10 = {
                                    l_Accessory_1, 
                                    v164
                                };
                                game:GetService("Debris"):AddItem(l_Accessory_1, 2);
                                shared.repfire({
                                    Effect = "BodyGyro", 
                                    Bind = l_Accessory_1, 
                                    Server = true, 
                                    char = v2
                                });
                                local v166 = tick();
                                local v167 = nil;
                                v167 = shared.loop(function() --[[ Line: 837 ]]
                                    -- upvalues: v164 (copy), v166 (copy), v167 (ref)
                                    if not v164 or not v164.Parent or tick() - v166 > 5 then
                                        return v167();
                                    else
                                        local l_v164_0 = v164;
                                        l_v164_0.Velocity = l_v164_0.Velocity * 0.935;
                                        return;
                                    end;
                                end, 60);
                            end);
                            v129:GetMarkerReachedSignal("throw"):Connect(function() --[[ Line: 847 ]]
                                if kdona10 then
                                    for _, v170 in pairs(kdona10) do
                                        v170:Destroy();
                                    end;
                                end;
                                local _ = shared.repfire({
                                    Effect = "Velocity Forward", 
                                    Distance = -75, 
                                    Time = 0.15
                                });
                            end);
                            return;
                        end;
                    elseif tonumber(v131) == 137107506384354 then
                        if not kdona11 then
                            kdona11 = true;
                            v129:GetMarkerReachedSignal("jump"):Connect(function() --[[ Line: 863 ]]
                                -- upvalues: v2 (ref)
                                local v172 = shared.repfire({
                                    Effect = "Velocity Forward", 
                                    Distance = 0, 
                                    Time = 1, 
                                    Up = 165
                                });
                                local l_Accessory_2 = Instance.new("Accessory");
                                l_Accessory_2.Name = "BodyGyroBind";
                                l_Accessory_2.Parent = v2;
                                kdona11 = {
                                    l_Accessory_2, 
                                    v172
                                };
                                game:GetService("Debris"):AddItem(l_Accessory_2, 2);
                                shared.repfire({
                                    Effect = "BodyGyro", 
                                    Bind = l_Accessory_2, 
                                    Server = true, 
                                    char = v2
                                });
                                local v174 = tick();
                                local v175 = nil;
                                v175 = shared.loop(function() --[[ Line: 886 ]]
                                    -- upvalues: v172 (copy), v174 (copy), v175 (ref)
                                    if not v172 or not v172.Parent or tick() - v174 > 5 then
                                        return v175();
                                    else
                                        local l_v172_0 = v172;
                                        l_v172_0.Velocity = l_v172_0.Velocity * 0.935;
                                        return;
                                    end;
                                end, 60);
                            end);
                            v129:GetMarkerReachedSignal("throw"):Connect(function() --[[ Line: 896 ]]
                                if kdona11 then
                                    for _, v178 in pairs(kdona11) do
                                        v178:Destroy();
                                    end;
                                end;
                                local _ = shared.repfire({
                                    Effect = "Velocity Forward", 
                                    Distance = -75, 
                                    Time = 0.15
                                });
                            end);
                            return;
                        end;
                    elseif tonumber(v131) == 138184061311700 then
                        task.delay(0.622, function() --[[ Line: 912 ]]
                            -- upvalues: v2 (ref)
                            local v180 = shared.repfire({
                                Effect = "Velocity Forward", 
                                Distance = 40, 
                                Time = 5, 
                                Up = 1500
                            });
                            for _, v182 in pairs({
                                1.267, 
                                1.433, 
                                1.667, 
                                1.85
                            }) do
                                task.delay(v182 - 0.622, function() --[[ Line: 921 ]]
                                    -- upvalues: v2 (ref), v180 (copy)
                                    shared.repfire({
                                        Effect = "HeadFirst", 
                                        char = v2, 
                                        Kick = true, 
                                        Weld = true
                                    });
                                    local l_v180_0 = v180;
                                    l_v180_0.Velocity = l_v180_0.Velocity + Vector3.new(0, 125, 0, 0);
                                end);
                            end;
                            local v184 = 1;
                            local v185 = tick();
                            local v186 = nil;
                            v186 = shared.loop(function() --[[ Line: 935 ]]
                                -- upvalues: v180 (copy), v185 (copy), v186 (ref), v184 (ref)
                                if not v180 or not v180.Parent or tick() - v185 > 5 then
                                    return v186();
                                else
                                    local l_v180_1 = v180;
                                    l_v180_1.Velocity = l_v180_1.Velocity * v184;
                                    v184 = math.clamp(v184 * 0.995, 0.955, 1);
                                    return;
                                end;
                            end, 60);
                        end);
                        return;
                    elseif tonumber(v131) == 91353107056596 then
                        local l_BodyVelocity_1 = Instance.new("BodyVelocity");
                        l_BodyVelocity_1.Name = "moveme";
                        l_BodyVelocity_1:SetAttribute("StunCheck", true);
                        l_BodyVelocity_1.MaxForce = Vector3.new(90000, 0, 90000, 0);
                        l_BodyVelocity_1:SetAttribute("Speed", 95);
                        l_BodyVelocity_1:SetAttribute("End", 1);
                        l_BodyVelocity_1:SetAttribute("Fallout", 0.94);
                        l_BodyVelocity_1.Parent = l_HumanoidRootPart_0;
                        game.Debris:AddItem(l_BodyVelocity_1, 2);
                        local l_BodyVelocity_2 = Instance.new("BodyVelocity");
                        l_BodyVelocity_2:SetAttribute("StunCheck", true);
                        l_BodyVelocity_2.Velocity = Vector3.new(0, 50, 0, 0);
                        l_BodyVelocity_2.MaxForce = Vector3.new(0, 90000, 0, 0);
                        l_BodyVelocity_2.Parent = v2.Torso;
                        game:GetService("Debris"):AddItem(l_BodyVelocity_2, 0.15);
                        blbv = {
                            l_BodyVelocity_1, 
                            l_BodyVelocity_2
                        };
                        return;
                    elseif tonumber(v131) == 140620736290884 then
                        local l_BodyVelocity_3 = Instance.new("BodyVelocity");
                        local l_AssemblyLinearVelocity_0 = l_HumanoidRootPart_0.AssemblyLinearVelocity;
                        l_BodyVelocity_3.MaxForce = Vector3.new(40000, 40000, 40000, 0);
                        l_BodyVelocity_3.Velocity = l_AssemblyLinearVelocity_0;
                        l_BodyVelocity_3.Parent = v2.Torso;
                        local v192 = 125;
                        local v193 = tick();
                        local v194 = nil;
                        v194 = shared.loop(function() --[[ Line: 982 ]]
                            -- upvalues: l_BodyVelocity_3 (copy), v193 (copy), v129 (copy), v194 (ref), l_AssemblyLinearVelocity_0 (ref), v192 (ref)
                            if not l_BodyVelocity_3 or not l_BodyVelocity_3.Parent or tick() - v193 > 5 or not v129.IsPlaying then
                                if l_BodyVelocity_3.Parent then
                                    l_BodyVelocity_3:Destroy();
                                end;
                                return v194();
                            else
                                l_AssemblyLinearVelocity_0 = l_AssemblyLinearVelocity_0 * 0.94;
                                v192 = v192 * 0.92;
                                l_BodyVelocity_3.Velocity = l_AssemblyLinearVelocity_0 + Vector3.new(0, v192, 0);
                                return;
                            end;
                        end, 60);
                        return;
                    elseif tonumber(v131) == 105616370132258 and not mechliftdone then
                        mechliftdone = true;
                        v129:GetMarkerReachedSignal("lift"):Connect(function() --[[ Line: 996 ]]
                            -- upvalues: v2 (ref)
                            local l_BodyVelocity_4 = Instance.new("BodyVelocity");
                            l_BodyVelocity_4.Velocity = Vector3.new(0, 200, 0, 0);
                            l_BodyVelocity_4.MaxForce = Vector3.new(0, 90000, 0, 0);
                            l_BodyVelocity_4.Parent = v2.Torso;
                            game.Debris:AddItem(l_BodyVelocity_4, 5);
                            local v196 = tick();
                            local v197 = nil;
                            v197 = shared.loop(function() --[[ Line: 1007 ]]
                                -- upvalues: l_BodyVelocity_4 (copy), v196 (copy), v197 (ref)
                                if not l_BodyVelocity_4 or not l_BodyVelocity_4.Parent or tick() - v196 > 5 then
                                    return v197();
                                else
                                    local v198 = math.clamp(l_BodyVelocity_4.Velocity.Y * 0.975, -100, 100);
                                    l_BodyVelocity_4.Velocity = Vector3.new(0, v198, 0);
                                    if v198 <= 0.1 then
                                        l_BodyVelocity_4:Destroy();
                                    end;
                                    return;
                                end;
                            end, 60);
                        end);
                        return;
                    elseif tonumber(v131) == 71852503410610 then
                        if blbv then
                            for _, v200 in pairs(blbv) do
                                v200:Destroy();
                            end;
                        end;
                        local l_BodyVelocity_5 = Instance.new("BodyVelocity");
                        l_BodyVelocity_5.Velocity = Vector3.new(0, 75, 0, 0);
                        l_BodyVelocity_5.MaxForce = Vector3.new(0, 90000, 0, 0);
                        l_BodyVelocity_5.Parent = v2.Torso;
                        l_BodyVelocity_5:SetAttribute("StunCheck", true);
                        game.Debris:AddItem(l_BodyVelocity_5, 4);
                        local v202 = tick();
                        local v203 = 0.94;
                        local function v206() --[[ Line: 1039 ]]
                            -- upvalues: v2 (ref)
                            for _, v205 in pairs(v2:GetChildren()) do
                                if tostring(v205) == "Freeze" and not v205:GetAttribute("Allowed") then
                                    return true;
                                end;
                            end;
                        end;
                        local l_Accessory_3 = Instance.new("Accessory");
                        l_Accessory_3.Name = "BodyGyroBind";
                        l_Accessory_3:SetAttribute("StunCheck", true);
                        l_Accessory_3.Parent = v2;
                        local v208 = nil;
                        v208 = shared.loop(function() --[[ Line: 1051 ]]
                            -- upvalues: l_BodyVelocity_5 (copy), v202 (copy), v208 (ref), v2 (ref), v206 (copy), l_Accessory_3 (copy), v203 (ref)
                            if not l_BodyVelocity_5 or not l_BodyVelocity_5.Parent or tick() - v202 > 5 then
                                return v208();
                            elseif v2:FindFirstChild("Ragdoll") or v206() then
                                if l_BodyVelocity_5 then
                                    l_BodyVelocity_5:Destroy();
                                end;
                                if l_Accessory_3 then
                                    l_Accessory_3:Destroy();
                                end;
                                for _, v210 in pairs(blbv) do
                                    v210:Destroy("");
                                end;
                                warn("da");
                                return v208();
                            else
                                local v211 = math.clamp(l_BodyVelocity_5.Velocity.Y * v203, -100, 100);
                                if v211 <= 2 then
                                    v203 = 1;
                                    v211 = v211 - 0.4;
                                end;
                                l_BodyVelocity_5.Velocity = Vector3.new(0, v211, 0);
                                return;
                            end;
                        end, 60);
                        task.delay(5, function() --[[ Line: 1082 ]]
                            -- upvalues: v208 (ref)
                            if v208 then
                                v208();
                            end;
                        end);
                        shared.repfire({
                            Effect = "BodyGyro", 
                            Bind = l_Accessory_3, 
                            Server = true, 
                            char = v2
                        });
                        local v212 = v2:WaitForChild("blfired", 3.765);
                        l_BodyVelocity_5:Destroy();
                        l_Accessory_3:Destroy();
                        if v212 then
                            local v213 = shared.repfire({
                                Effect = "Velocity Forward", 
                                Distance = -125, 
                                Time = 0.15, 
                                StunCheck = true
                            });
                            v213.MaxForce = Vector3.new(40000, 20000, 40000, 0);
                            table.insert(blbv, v213);
                        end;
                        return;
                    elseif tonumber(v131) == 17860467628 then
                        local l_Accessory_4 = Instance.new("Accessory");
                        l_Accessory_4.Name = "BodyGyroBind";
                        l_Accessory_4.Parent = v2;
                        shared.repfire({
                            Effect = "BodyGyro", 
                            Bind = l_Accessory_4, 
                            Server = true, 
                            char = v2
                        });
                        local l_BodyVelocity_6 = Instance.new("BodyVelocity");
                        l_BodyVelocity_6.Name = "moveme";
                        l_BodyVelocity_6.MaxForce = Vector3.new(90000, 90000, 90000, 0);
                        l_BodyVelocity_6:SetAttribute("Speed", 1);
                        l_BodyVelocity_6:SetAttribute("End", 0);
                        l_BodyVelocity_6:SetAttribute("Goto", 1);
                        l_BodyVelocity_6:SetAttribute("Fallout", 0.98);
                        l_BodyVelocity_6.Parent = l_HumanoidRootPart_0;
                        v105 = {
                            l_BodyVelocity_6, 
                            l_Accessory_4
                        };
                        task.delay(10, function() --[[ Line: 1129 ]]
                            -- upvalues: l_BodyVelocity_6 (copy), l_Accessory_4 (copy)
                            l_BodyVelocity_6:Destroy();
                            l_Accessory_4:Destroy();
                        end);
                        if not kdone512 then
                            kdone512 = true;
                            v129:GetMarkerReachedSignal("fly"):Connect(function() --[[ Line: 1136 ]]
                                -- upvalues: v105 (ref)
                                v105[1]:SetAttribute("Speed", 250);
                                v105[1]:SetAttribute("Goto", 120);
                                v105[1]:SetAttribute("alrdone", true);
                            end);
                            v129:GetMarkerReachedSignal("stop"):Connect(function() --[[ Line: 1142 ]]
                                -- upvalues: v105 (ref)
                                v105[1]:SetAttribute("Goto", nil);
                                v105[1]:SetAttribute("Fallout", 0.945);
                                v105[1]:SetAttribute("End", 15);
                                v105[1]:GetPropertyChangedSignal("Parent"):Connect(function() --[[ Line: 1146 ]]
                                    -- upvalues: v105 (ref)
                                    v105[2]:Destroy();
                                end);
                            end);
                            v2:GetAttributeChangedSignal("EPReset3"):Connect(function() --[[ Line: 1151 ]]
                                -- upvalues: v105 (ref)
                                if v105 then
                                    local v216 = rawget(v105, 1);
                                    if v216 and not v216:GetAttribute("alrdone") then
                                        v216:SetAttribute("Speed", 250);
                                        v216:SetAttribute("Goto", 120);
                                    end;
                                end;
                            end);
                            v2:GetAttributeChangedSignal("EPReset2"):Connect(function() --[[ Line: 1161 ]]
                                -- upvalues: v105 (ref)
                                if v105 then
                                    local v217 = rawget(v105, 1);
                                    if v217 then
                                        if v217:GetAttribute("Speed") <= 120 then
                                            v217:SetAttribute("Speed", 120);
                                        end;
                                        v217:SetAttribute("Fallout", 0.925);
                                        v217:SetAttribute("Goto", nil);
                                    end;
                                end;
                            end);
                            v2:GetAttributeChangedSignal("EPReset"):Connect(function() --[[ Line: 1174 ]]
                                -- upvalues: v105 (ref)
                                if v105 then
                                    local v218 = rawget(v105, 1);
                                    if v218 then
                                        v218:Destroy();
                                    end;
                                    local v219 = rawget(v105, 2);
                                    if v219 then
                                        v219:Destroy();
                                    end;
                                end;
                            end);
                            return;
                        end;
                    elseif tonumber(v131) == 16597322398 then
                        local l_Accessory_5 = Instance.new("Accessory");
                        l_Accessory_5.Name = "BodyGyroBind";
                        l_Accessory_5.Parent = v2;
                        shared.repfire({
                            Effect = "BodyGyro", 
                            Bind = l_Accessory_5, 
                            Server = true, 
                            char = v2
                        });
                        local l_BodyVelocity_7 = Instance.new("BodyVelocity");
                        l_BodyVelocity_7.Name = "moveme";
                        l_BodyVelocity_7.MaxForce = Vector3.new(90000, 90000, 90000, 0);
                        l_BodyVelocity_7:SetAttribute("Speed", 25);
                        l_BodyVelocity_7:SetAttribute("End", 0);
                        l_BodyVelocity_7:SetAttribute("Goto", 25);
                        l_BodyVelocity_7:SetAttribute("Fallout", 0.98);
                        l_BodyVelocity_7.Parent = l_HumanoidRootPart_0;
                        v105 = {
                            l_BodyVelocity_7, 
                            l_Accessory_5
                        };
                        task.delay(2, function() --[[ Line: 1205 ]]
                            -- upvalues: l_BodyVelocity_7 (copy), l_Accessory_5 (copy)
                            l_BodyVelocity_7:Destroy();
                            l_Accessory_5:Destroy();
                        end);
                        if not v101 then
                            v101 = true;
                            v129:GetMarkerReachedSignal("boost"):Connect(function() --[[ Line: 1212 ]]
                                -- upvalues: v105 (ref)
                                v105[1]:SetAttribute("Speed", 135);
                                v105[1]:SetAttribute("Goto", nil);
                            end);
                            v2:GetAttributeChangedSignal("EPReset2"):Connect(function() --[[ Line: 1217 ]]
                                -- upvalues: v105 (ref)
                                if v105 then
                                    local v222 = rawget(v105, 1);
                                    if v222 then
                                        v222:SetAttribute("Fallout", 0.85);
                                    end;
                                end;
                            end);
                            v2:GetAttributeChangedSignal("EPReset"):Connect(function() --[[ Line: 1226 ]]
                                -- upvalues: v105 (ref)
                                if v105 then
                                    local v223 = rawget(v105, 1);
                                    if v223 then
                                        v223:Destroy();
                                    end;
                                    local v224 = rawget(v105, 2);
                                    if v224 then
                                        v224:Destroy();
                                    end;
                                end;
                            end);
                            return;
                        end;
                    elseif tonumber(v131) == 16737255386 then
                        local l_BodyVelocity_8 = l_HumanoidRootPart_0:FindFirstChildOfClass("BodyVelocity");
                        if l_BodyVelocity_8 then
                            l_BodyVelocity_8:Destroy();
                        end;
                        v96 = shared.repfire({
                            Effect = "Velocity Forward", 
                            Distance = 0, 
                            Time = 5, 
                            Alternate = l_Torso_0, 
                            Up = 0
                        });
                        if not v102 then
                            v102 = true;
                            v129:GetMarkerReachedSignal("fly"):Connect(function() --[[ Line: 1251 ]]
                                -- upvalues: l_HumanoidRootPart_0 (ref), v2 (ref), v20 (ref)
                                local l_CFrameValue_0 = Instance.new("CFrameValue");
                                l_CFrameValue_0.Value = l_HumanoidRootPart_0.CFrame;
                                local v228 = l_CFrameValue_0:GetPropertyChangedSignal("Value"):Connect(function() --[[ Line: 1254 ]]
                                    -- upvalues: l_HumanoidRootPart_0 (ref), l_CFrameValue_0 (copy), v2 (ref)
                                    local v227 = {
                                        l_HumanoidRootPart_0.CFrame:GetComponents()
                                    };
                                    v227[1] = l_CFrameValue_0.Value.X;
                                    v227[2] = l_CFrameValue_0.Value.Y;
                                    v227[3] = l_CFrameValue_0.Value.Z;
                                    v2:SetPrimaryPartCFrame(CFrame.new(unpack(v227)));
                                end);
                                v20:Create(l_CFrameValue_0, TweenInfo.new(0.85, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                    Value = l_HumanoidRootPart_0.CFrame * CFrame.new(0, 44, 0)
                                }):Play();
                                task.delay(0.85, function() --[[ Line: 1264 ]]
                                    -- upvalues: l_CFrameValue_0 (copy), v228 (copy)
                                    l_CFrameValue_0:Destroy();
                                    v228:Disconnect();
                                end);
                            end);
                            v2:GetAttributeChangedSignal("MeteorCheck"):Connect(function() --[[ Line: 1270 ]]
                                -- upvalues: v96 (ref)
                                if v96 then
                                    v96:Destroy();
                                    v96 = nil;
                                end;
                            end);
                            return;
                        end;
                    elseif tonumber(v131) == 17799224866 then
                        if not v103 then
                            v103 = true;
                            local v229 = nil;
                            v129:GetMarkerReachedSignal("hit1"):Connect(function() --[[ Line: 1282 ]]
                                -- upvalues: l_HumanoidRootPart_0 (ref), v229 (ref)
                                local l_BodyVelocity_9 = l_HumanoidRootPart_0:FindFirstChildOfClass("BodyVelocity");
                                if l_BodyVelocity_9 then
                                    game:GetService("Debris"):AddItem(l_BodyVelocity_9, 0);
                                    l_BodyVelocity_9:Destroy();
                                end;
                                v229 = shared.repfire({
                                    Effect = "Velocity Forward", 
                                    Distance = 57, 
                                    Time = 0.4, 
                                    Up = 35
                                });
                                local l_v229_0 = v229;
                                local v232 = tick();
                                local v233 = nil;
                                v233 = shared.loop(function() --[[ Line: 1297 ]]
                                    -- upvalues: l_v229_0 (copy), v232 (copy), v233 (ref)
                                    if not l_v229_0 or not l_v229_0.Parent or tick() - v232 > 5 then
                                        return v233();
                                    else
                                        local l_l_v229_0_0 = l_v229_0;
                                        l_l_v229_0_0.Velocity = l_l_v229_0_0.Velocity * 0.875;
                                        return;
                                    end;
                                end, 60);
                            end);
                            v129:GetMarkerReachedSignal("hit2"):Connect(function() --[[ Line: 1306 ]]
                                -- upvalues: v229 (ref)
                                if v229 then
                                    v229:Destroy();
                                end;
                                v229 = shared.repfire({
                                    Effect = "Velocity Forward", 
                                    Distance = 57, 
                                    Last = 0.15, 
                                    Up = 105
                                });
                                local l_v229_1 = v229;
                                local v236 = tick();
                                local v237 = nil;
                                v237 = shared.loop(function() --[[ Line: 1317 ]]
                                    -- upvalues: l_v229_1 (copy), v236 (copy), v237 (ref)
                                    if not l_v229_1 or not l_v229_1.Parent or tick() - v236 > 5 then
                                        return v237();
                                    else
                                        local l_l_v229_1_0 = l_v229_1;
                                        l_l_v229_1_0.Velocity = l_l_v229_1_0.Velocity * 0.875;
                                        return;
                                    end;
                                end, 60);
                            end);
                            v129:GetMarkerReachedSignal("hit3"):Connect(function() --[[ Line: 1326 ]]
                                -- upvalues: v229 (ref)
                                if v229 then
                                    v229:Destroy();
                                end;
                                v229 = shared.repfire({
                                    Effect = "Velocity Forward", 
                                    Distance = 19, 
                                    Time = 1, 
                                    Up = 40
                                });
                                local l_v229_2 = v229;
                                local v240 = tick();
                                local v241 = nil;
                                v241 = shared.loop(function() --[[ Line: 1337 ]]
                                    -- upvalues: l_v229_2 (copy), v240 (copy), v241 (ref)
                                    if not l_v229_2 or not l_v229_2.Parent or tick() - v240 > 5 then
                                        return v241();
                                    else
                                        local l_l_v229_2_0 = l_v229_2;
                                        l_l_v229_2_0.Velocity = l_l_v229_2_0.Velocity * 0.96;
                                        return;
                                    end;
                                end, 60);
                            end);
                            v129:GetMarkerReachedSignal("hit4"):Connect(function() --[[ Line: 1346 ]]
                                -- upvalues: v229 (ref)
                                if v229 then
                                    v229:Destroy();
                                end;
                                v229 = shared.repfire({
                                    Effect = "Velocity Forward", 
                                    Distance = 0, 
                                    Time = 0.15, 
                                    Up = 100
                                });
                                local l_v229_3 = v229;
                                local v244 = tick();
                                local v245 = nil;
                                v245 = shared.loop(function() --[[ Line: 1357 ]]
                                    -- upvalues: l_v229_3 (copy), v244 (copy), v245 (ref)
                                    if not l_v229_3 or not l_v229_3.Parent or tick() - v244 > 5 then
                                        return v245();
                                    else
                                        local l_l_v229_3_0 = l_v229_3;
                                        l_l_v229_3_0.Velocity = l_l_v229_3_0.Velocity * 0.875;
                                        return;
                                    end;
                                end, 60);
                            end);
                            return;
                        end;
                    elseif tonumber(v131) == 15145462680 and not v99 then
                        v99 = true;
                        local v247 = nil;
                        do
                            local l_v247_0 = v247;
                            v129:GetMarkerReachedSignal("hit1"):Connect(function() --[[ Line: 1371 ]]
                                -- upvalues: l_HumanoidRootPart_0 (ref), l_v247_0 (ref)
                                local l_BodyVelocity_10 = l_HumanoidRootPart_0:FindFirstChildOfClass("BodyVelocity");
                                if l_BodyVelocity_10 then
                                    game:GetService("Debris"):AddItem(l_BodyVelocity_10, 0);
                                    l_BodyVelocity_10:Destroy();
                                end;
                                l_v247_0 = shared.repfire({
                                    Effect = "Velocity Forward", 
                                    Distance = 57, 
                                    Last = 0.15, 
                                    Up = 105
                                });
                                local l_l_v247_0_0 = l_v247_0;
                                local v251 = tick();
                                local v252 = nil;
                                v252 = shared.loop(function() --[[ Line: 1386 ]]
                                    -- upvalues: l_l_v247_0_0 (copy), v251 (copy), v252 (ref)
                                    if not l_l_v247_0_0 or not l_l_v247_0_0.Parent or tick() - v251 > 5 then
                                        return v252();
                                    else
                                        local l_l_l_v247_0_0_0 = l_l_v247_0_0;
                                        l_l_l_v247_0_0_0.Velocity = l_l_l_v247_0_0_0.Velocity * 0.875;
                                        return;
                                    end;
                                end, 60);
                            end);
                            v129:GetMarkerReachedSignal("hit2"):Connect(function() --[[ Line: 1395 ]]
                                -- upvalues: l_v247_0 (ref)
                                if l_v247_0 then
                                    l_v247_0:Destroy();
                                end;
                                l_v247_0 = shared.repfire({
                                    Effect = "Velocity Forward", 
                                    Distance = 57, 
                                    Last = 0.15, 
                                    Up = 105
                                });
                                local l_l_v247_0_1 = l_v247_0;
                                local v255 = tick();
                                local v256 = nil;
                                v256 = shared.loop(function() --[[ Line: 1406 ]]
                                    -- upvalues: l_l_v247_0_1 (copy), v255 (copy), v256 (ref)
                                    if not l_l_v247_0_1 or not l_l_v247_0_1.Parent or tick() - v255 > 5 then
                                        return v256();
                                    else
                                        local l_l_l_v247_0_1_0 = l_l_v247_0_1;
                                        l_l_l_v247_0_1_0.Velocity = l_l_l_v247_0_1_0.Velocity * 0.875;
                                        return;
                                    end;
                                end, 60);
                            end);
                            v129:GetMarkerReachedSignal("hit3"):Connect(function() --[[ Line: 1415 ]]
                                -- upvalues: l_v247_0 (ref)
                                if l_v247_0 then
                                    l_v247_0:Destroy();
                                end;
                                l_v247_0 = shared.repfire({
                                    Effect = "Velocity Forward", 
                                    Distance = 19, 
                                    Time = 1, 
                                    Up = 40
                                });
                                local l_l_v247_0_2 = l_v247_0;
                                local v259 = tick();
                                local v260 = nil;
                                v260 = shared.loop(function() --[[ Line: 1426 ]]
                                    -- upvalues: l_l_v247_0_2 (copy), v259 (copy), v260 (ref)
                                    if not l_l_v247_0_2 or not l_l_v247_0_2.Parent or tick() - v259 > 5 then
                                        return v260();
                                    else
                                        local l_l_l_v247_0_2_0 = l_l_v247_0_2;
                                        l_l_l_v247_0_2_0.Velocity = l_l_l_v247_0_2_0.Velocity * 0.96;
                                        return;
                                    end;
                                end, 60);
                            end);
                            v129:GetMarkerReachedSignal("final"):Connect(function() --[[ Line: 1435 ]]
                                -- upvalues: l_v247_0 (ref)
                                if l_v247_0 then
                                    l_v247_0:Destroy();
                                end;
                                l_v247_0 = shared.repfire({
                                    Effect = "Velocity Forward", 
                                    Distance = 0, 
                                    Time = 0.15, 
                                    Up = 100
                                });
                                local l_l_v247_0_3 = l_v247_0;
                                local v263 = tick();
                                local v264 = nil;
                                v264 = shared.loop(function() --[[ Line: 1446 ]]
                                    -- upvalues: l_l_v247_0_3 (copy), v263 (copy), v264 (ref)
                                    if not l_l_v247_0_3 or not l_l_v247_0_3.Parent or tick() - v263 > 5 then
                                        return v264();
                                    else
                                        local l_l_l_v247_0_3_0 = l_l_v247_0_3;
                                        l_l_l_v247_0_3_0.Velocity = l_l_l_v247_0_3_0.Velocity * 0.875;
                                        return;
                                    end;
                                end, 60);
                            end);
                        end;
                    end;
                    return;
                end;
            end;
        end;
    end;
    for _, v268 in pairs(l_Humanoid_0:GetPlayingAnimationTracks()) do
        v266(v268);
    end;
    l_Humanoid_0.AnimationPlayed:connect(v266);
    local v269 = v38(7815618175);
    v13.walk.WalkAnim.AnimationId = "rbxassetid://7807831448";
    v13:WaitForChild("toolnone", 5);
    task.delay(0.01, function() --[[ Line: 1466 ]]
        -- upvalues: v13 (copy)
        for _, v271 in pairs(v13.idle:GetChildren()) do
            v271.AnimationId = "rbxassetid://14516273501";
        end;
    end);
    local v272 = shared[tostring((v85({
        Name = "ModifyBodyMoverSpeed"
    }))) .. ""];
    local function v314(v273, v274, v275) --[[ Line: 1477 ]]
        -- upvalues: v2 (copy), v55 (ref), v38 (copy), v53 (ref), l_HumanoidRootPart_0 (copy), l_Humanoid_0 (copy), v272 (copy), l_Communicate_0 (copy)
        if v2:FindFirstChild("MechDash") then
            return;
        else
            local v276 = 0;
            local l_v55_0 = v55;
            local v278 = 5;
            v55 = false;
            if v2:FindFirstChild("RootAnchor") and not v275 then
                return;
            else
                local v279 = false;
                if v2:GetAttribute("InMech") then
                    v279 = true;
                end;
                local v280 = v38(10480793962);
                v53 = tick();
                if v273 == Enum.KeyCode.W then
                    return;
                else
                    if v273 == Enum.KeyCode.A then
                        v276 = 90;
                        v280 = v38(10480796021);
                    elseif v273 == Enum.KeyCode.D then
                        v276 = -90;
                    elseif v273 == Enum.KeyCode.S then
                        v276 = 180;
                        v280 = v38(10491993682);
                        v278 = 10;
                    end;
                    if v279 then
                        local l_Accessory_6 = Instance.new("Accessory");
                        l_Accessory_6.Name = "MechDash";
                        l_Accessory_6.Parent = v2;
                        local l_Attachment_0 = Instance.new("Attachment");
                        l_Attachment_0.Parent = l_HumanoidRootPart_0;
                        l_Attachment_0.CFrame = CFrame.new(0, 7, 0);
                        local l_Attachment_1 = Instance.new("Attachment");
                        l_Attachment_1.Parent = l_HumanoidRootPart_0;
                        l_Attachment_1.CFrame = CFrame.new(0, -2, 0);
                        for _, v285 in pairs({
                            l_Attachment_0, 
                            l_Attachment_1
                        }) do
                            game.Debris:AddItem(v285, 4);
                        end;
                        local v286 = {};
                        local function v289(v287) --[[ Line: 1542 ]]
                            -- upvalues: v286 (copy)
                            local v288 = shared.sfx({
                                SoundId = v287.id, 
                                Volume = v287.vol + 0.5, 
                                Parent = v287.parent
                            });
                            v288:Play("");
                            table.insert(v286, v288);
                        end;
                        if v273 == Enum.KeyCode.S then
                            l_Accessory_6:SetAttribute("Back", true);
                            v289({
                                id = "rbxassetid://84635846516357", 
                                vol = 3, 
                                parent = l_Attachment_0
                            });
                            v289({
                                id = "rbxassetid://116814554347690", 
                                vol = 2, 
                                parent = l_Attachment_0
                            });
                        else
                            v289({
                                id = "rbxassetid://99016723872936", 
                                vol = 3, 
                                parent = l_Attachment_0
                            });
                            v289({
                                id = "rbxassetid://123346477450360", 
                                vol = 2, 
                                parent = l_Attachment_0
                            });
                        end;
                        task.spawn(function() --[[ Line: 1582 ]]
                            -- upvalues: v273 (copy), v2 (ref), l_Accessory_6 (copy)
                            local v290 = v273 == Enum.KeyCode.A and "Left" or v273 == Enum.KeyCode.D and "Right" or "Back";
                            shared.repfire({
                                Name = v290, 
                                Type = "MechDashMovement", 
                                Char = v2, 
                                bind = l_Accessory_6
                            });
                        end);
                        local l_AnimationController_0 = v2:FindFirstChild("Mech"):FindFirstChildOfClass("AnimationController");
                        local v292 = {
                            [Enum.KeyCode.D] = 136759667129066, 
                            [Enum.KeyCode.S] = 95003985042679, 
                            [Enum.KeyCode.A] = 120527946309380
                        };
                        if not workspace:GetAttribute("mechprel2") then
                            workspace:SetAttribute("mecprel2", true);
                            for _, v294 in pairs(v292) do
                                local l_Animation_1 = Instance.new("Animation");
                                l_Animation_1.AnimationId = "rbxassetid://" .. tostring(v294);
                                local v296 = l_AnimationController_0:LoadAnimation(l_Animation_1);
                                v296:Play(0);
                                v296:Stop(0);
                                l_Animation_1:Destroy("");
                            end;
                        end;
                        local l_Animation_2 = Instance.new("Animation");
                        l_Animation_2.AnimationId = "rbxassetid://" .. tostring(v292[v273]);
                        game:GetService("Debris"):AddItem(l_Animation_2, 1.5);
                        for _, v299 in pairs(l_AnimationController_0:GetPlayingAnimationTracks()) do
                            v299:Stop(0);
                        end;
                        local v300 = l_AnimationController_0:LoadAnimation(l_Animation_2);
                        local l_BodyVelocity_11 = Instance.new("BodyVelocity");
                        l_BodyVelocity_11 = Instance.new("BodyVelocity");
                        l_BodyVelocity_11:SetAttribute("Ohio", true);
                        l_BodyVelocity_11.Name = "moveme";
                        l_BodyVelocity_11.MaxForce = Vector3.new(40000, 0, 40000, 0);
                        if v273 ~= Enum.KeyCode.S then
                            l_BodyVelocity_11:SetAttribute("Speed", 125);
                            l_BodyVelocity_11:SetAttribute("Fallout", 0.961);
                            l_BodyVelocity_11:SetAttribute("End", 15);
                            l_BodyVelocity_11:SetAttribute("Direction", v273 == Enum.KeyCode.A and "Left" or "Right");
                            task.delay(0.55, function() --[[ Line: 1643 ]]
                                -- upvalues: v300 (ref), l_BodyVelocity_11 (ref), l_Accessory_6 (copy)
                                if v300.IsPlaying then
                                    l_BodyVelocity_11:SetAttribute("Speed", 100);
                                    l_BodyVelocity_11:SetAttribute("End", 7);
                                    l_BodyVelocity_11:SetAttribute("Fallout", 0.9565);
                                    local v302 = tick();
                                    while task.wait(0.065) and tick() - v302 < 0.45 and l_Accessory_6 and l_Accessory_6.Parent do
                                        shared.addshake(1.35);
                                    end;
                                end;
                            end);
                        else
                            l_BodyVelocity_11:SetAttribute("Speed", 180);
                            l_BodyVelocity_11:SetAttribute("Fallout", 0.935);
                            l_BodyVelocity_11:SetAttribute("End", 15);
                            l_BodyVelocity_11:SetAttribute("Inverted", true);
                            task.delay(0.5, function() --[[ Line: 1666 ]]
                                -- upvalues: l_BodyVelocity_11 (ref), l_Accessory_6 (copy)
                                l_BodyVelocity_11:SetAttribute("Speed", 120);
                                l_BodyVelocity_11:SetAttribute("End", 7);
                                l_BodyVelocity_11:SetAttribute("Fallout", 0.9475);
                                local v303 = tick();
                                while task.wait(0.065) and tick() - v303 < 0.65 and l_Accessory_6 and l_Accessory_6.Parent do
                                    shared.addshake(1);
                                end;
                            end);
                        end;
                        l_BodyVelocity_11.Parent = l_HumanoidRootPart_0;
                        local v304 = nil;
                        v304 = l_Accessory_6.Destroying:Once(function() --[[ Line: 1687 ]]
                            -- upvalues: v286 (copy), v304 (ref), l_BodyVelocity_11 (ref), v300 (ref)
                            for _, v306 in pairs(v286) do
                                if v306 and v306.Parent then
                                    game:GetService("TweenService"):Create(v306, TweenInfo.new(0.325), {
                                        Volume = 0
                                    }):Play();
                                end;
                            end;
                            if v304 then
                                v304:Disconnect();
                            end;
                            if l_BodyVelocity_11 and l_BodyVelocity_11.Parent then
                                l_BodyVelocity_11:Destroy();
                            end;
                            if v300 then
                                v300:Stop(0);
                            end;
                        end);
                        task.delay(1.7, function() --[[ Line: 1710 ]]
                            -- upvalues: v304 (ref), l_BodyVelocity_11 (ref), l_Accessory_6 (copy)
                            if v304 then
                                v304:Disconnect();
                            end;
                            if l_BodyVelocity_11 and l_BodyVelocity_11.Parent then
                                l_BodyVelocity_11:Destroy();
                            end;
                            if l_Accessory_6 and l_Accessory_6.Parent then
                                l_Accessory_6:Destroy("");
                            end;
                        end);
                        l_BodyVelocity_11:GetPropertyChangedSignal("MaxForce"):Once(function() --[[ Line: 1723 ]]
                            -- upvalues: v300 (ref)
                            if v300 then
                                v300:Stop(0);
                            end;
                        end);
                        return v300:Play();
                    else
                        local l_WalkSpeed_0 = l_Humanoid_0.WalkSpeed;
                        if v2:FindFirstChild("DoingEmote") then
                            l_WalkSpeed_0 = 16;
                        end;
                        if l_v55_0 then
                            l_WalkSpeed_0 = l_WalkSpeed_0 - 9;
                        end;
                        local v308 = l_WalkSpeed_0 * 2.5;
                        v308 = math.clamp(v274 or v308, 0, 40) * (v278 == 10 and 4 or 5);
                        if not v2:GetAttribute("Ulted") then
                            v308 = v308 - 60 * (1 - l_Humanoid_0.Health / l_Humanoid_0.MaxHealth);
                        end;
                        v308 = {
                            v308
                        };
                        local v309 = {
                            v308[1]
                        };
                        v2:SetAttribute("_JustDashed", tick());
                        local l_BodyVelocity_12 = l_HumanoidRootPart_0:FindFirstChildOfClass("BodyVelocity");
                        if l_BodyVelocity_12 then
                            l_BodyVelocity_12:Destroy();
                        end;
                        local l_BodyVelocity_13 = Instance.new("BodyVelocity");
                        l_BodyVelocity_13.Name = "dodgevelocity";
                        l_BodyVelocity_13.MaxForce = Vector3.new(50000, 0, 50000, 0);
                        if v2:FindFirstChild("Slowed") then
                            l_BodyVelocity_13.MaxForce = Vector3.new(10000, 0, 10000, 0);
                        end;
                        l_BodyVelocity_13.Parent = l_HumanoidRootPart_0;
                        v280:Play();
                        local v312 = nil;
                        if v280 then
                            v312 = v280.Stopped:Connect(function() --[[ Line: 1769 ]]
                                -- upvalues: l_BodyVelocity_13 (copy), v312 (ref)
                                l_BodyVelocity_13:Destroy();
                                return v312:Disconnect();
                            end);
                        end;
                        local v313 = nil;
                        v313 = shared.loop(function() --[[ Line: 1775 ]]
                            -- upvalues: v272 (ref), l_BodyVelocity_13 (copy), v313 (ref), l_HumanoidRootPart_0 (ref), l_Communicate_0 (ref), v308 (ref), v276 (ref), v278 (ref), v309 (copy)
                            v272(l_BodyVelocity_13, v313, l_HumanoidRootPart_0, l_Communicate_0, v308, v276, v278, v309);
                        end);
                        return;
                    end;
                end;
            end;
        end;
    end;
    v38(13379404053);
    local l_Sounds_0 = game:GetService("SoundService").Sounds;
    local v316 = nil;
    local v317 = 0;
    l_Humanoid_0:SetStateEnabled(Enum.HumanoidStateType.Swimming, false);
    v58 = function(v318) --[[ Line: 1786 ]]
        -- upvalues: v317 (ref), v47 (copy), v54 (ref), l_LocalPlayer_0 (copy), v2 (copy), v316 (ref), v94 (ref), l_TouchEnabled_0 (copy), l_GamepadEnabled_0 (copy), v23 (ref), v24 (ref), v17 (ref), v11 (copy), v55 (ref), v56 (ref), v269 (copy), v38 (copy), l_FindFirstChild_0 (copy), v26 (ref), l_Humanoid_0 (copy), l_Sounds_0 (copy), v20 (copy), v51 (copy)
        if tick() - v317 > 5 then
            v317 = tick();
            v47({
                Goal = "PingCheck", 
                Time = workspace:GetServerTimeNow()
            });
        end;
        if v318 == "JustEvasived" then
            v54 = tick();
            if l_LocalPlayer_0.Name == "22freshfrenchfries" then
                warn("UPDATED TO ACTUAL CD");
            end;
        end;
        if v318 == "SideDashDisable" and v2:GetAttribute("SideDashDisable") == true then
            v2:SetAttribute("SideDashDisable", tick());
        end;
        if not v316 then
            v316 = workspace.Thrown:FindFirstChild("Donation Leaderboard");
            if v316 then
                v316 = v316:FindFirstChild("a");
                if not v316 then
                    v316 = nil;
                end;
            end;
        end;
        local v319 = 16;
        local v320 = 50;
        local l_v2_Attribute_1 = v2:GetAttribute("WSDecrease");
        if l_v2_Attribute_1 then
            v319 = v319 - l_v2_Attribute_1;
            if v319 < 0 then
                v319 = 0;
            end;
        end;
        v94 = l_TouchEnabled_0 or l_GamepadEnabled_0 or l_LocalPlayer_0:GetAttribute("S_AutoRun");
        v23 = v2:FindFirstChild("Slowed");
        v24 = v2:FindFirstChild("Freeze");
        if v318 == "LastDamageDone" then
            v17 = 0;
        end;
        if v17 > 0 and not workspace:GetAttribute("NoFatigue") then
            v320 = math.max(v320 - v17 * 1, 27);
        end;
        game.StarterGui:SetCoreGuiEnabled(2, false);
        local l_Tool_0 = v2:FindFirstChildOfClass("Tool");
        if not v11:Check(v2, {
            "Run"
        }) or v2:FindFirstChild("StopRunning") or l_Tool_0 and l_Tool_0:FindFirstChild("Handle") or v2:FindFirstChild("CrabCamera") then
            v55 = false;
        end;
        if v55 then
            if v2:GetAttribute("Ulted") or v2:FindFirstChild("Counter") then
                v319 = v319 + 7;
            end;
            local v323 = workspace:GetAttribute("SpeedMultiplier") or 1;
            if workspace:GetAttribute("EffectAffects") ~= 1 and workspace:GetAttribute("VIPServerOwner") ~= v2.Name then
                v323 = 1;
            end;
            v319 = v319 + 9 * v323;
        end;
        local l_v55_1 = v55;
        if v56 ~= l_v55_1 then
            v56 = l_v55_1;
            v2:SetAttribute("Running", l_v55_1);
            if l_v55_1 then
                v269:Play();
            else
                v269:Stop();
            end;
        end;
        local v325 = v2:GetAttribute("WeaponHolding") == "Ninjato" and 13379404053 or v2:GetAttribute("WeaponHolding") == "Katana" and 15146348738 or 14357924814;
        local l_GrabWeapon_0 = v2:FindFirstChild("GrabWeapon");
        local v327 = false;
        if v2:GetAttribute("WeaponHolding") == "Bat" then
            l_GrabWeapon_0 = not l_GrabWeapon_0;
            v327 = true;
        end;
        if not v327 and not v2:GetAttribute("IceBoss") then
            if l_v55_1 then
                if l_GrabWeapon_0 then
                    local v328 = v38(v325);
                    if not v328.IsPlaying then
                        v328:Play(not v327 and 0.25);
                    end;
                else
                    v38(v325):Stop();
                end;
            else
                v38(v325):Stop();
            end;
        end;
        if v2:GetAttribute("Blocking") then
            v319 = v319 / 2;
            v320 = 0;
        end;
        local l_CanWalk_0 = v2:FindFirstChild("CanWalk");
        local l_Slowed_0 = v2:FindFirstChild("Slowed");
        if l_Slowed_0 then
            if not l_CanWalk_0 then
                v319 = v319 / (l_Slowed_0:GetAttribute("Div") or 3);
            end;
            v320 = 0;
        end;
        if v2:FindFirstChild("NoJump") then
            v320 = 0;
        end;
        if v2:FindFirstChild("Ragdoll") then
            v320 = 0;
        end;
        if v2:FindFirstChild("Freeze") then
            v319 = 0;
            if l_CanWalk_0 then
                v319 = 16;
            end;
            v320 = 0;
        end;
        local v331 = l_FindFirstChild_0(v2, "Ragdoll");
        local v332 = l_FindFirstChild_0(v2, "NoRotate");
        v26 = v331;
        local v333 = l_FindFirstChild_0(v2, "Ragdoll");
        if not l_FindFirstChild_0(v2, "CrabCamera") then
            if v331 or v332 then
                l_Humanoid_0.AutoRotate = false;
            else
                l_Humanoid_0.AutoRotate = true;
            end;
            if v333 then
                l_Humanoid_0:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true);
                l_Humanoid_0:SetStateEnabled(Enum.HumanoidStateType.GettingUp, false);
            else
                l_Humanoid_0:SetStateEnabled(Enum.HumanoidStateType.GettingUp, true);
                l_Humanoid_0:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false);
            end;
            if l_FindFirstChild_0(v2, "BodyGyroBind") or v333 then
                l_Humanoid_0:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, true);
                if not l_Humanoid_0.PlatformStand then
                    l_Humanoid_0.PlatformStand = true;
                end;
            else
                l_Humanoid_0:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false);
                if l_Humanoid_0.PlatformStand then
                    l_Humanoid_0.PlatformStand = false;
                    l_Humanoid_0:ChangeState(Enum.HumanoidStateType.GettingUp);
                end;
            end;
        else
            l_Humanoid_0.AutoRotate = not l_FindFirstChild_0(v2, "NoRotateUltimate");
            l_Humanoid_0:SetStateEnabled(Enum.HumanoidStateType.GettingUp, false);
            l_Humanoid_0:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false);
            l_Humanoid_0:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false);
        end;
        if workspace:GetAttribute("GlobalStun") or workspace:GetAttribute("NoMovement") then
            v319 = 0;
            v320 = 0;
        end;
        if v2:FindFirstChild("#Deafened") then
            if l_Sounds_0.Volume == (l_LocalPlayer_0:GetAttribute("S_SFXVolume") or 1) then
                v20:Create(l_Sounds_0, TweenInfo.new(0.85, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    Volume = 0
                }):Play();
            end;
        elseif l_Sounds_0.Volume == 0 then
            v20:Create(l_Sounds_0, TweenInfo.new(0.85, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                Volume = l_LocalPlayer_0:GetAttribute("S_SFXVolume") or 1
            }):Play();
        end;
        if not v2:FindFirstChild("CrabCamera") then
            local l_v2_Attribute_2 = v2:GetAttribute("InMech");
            local l_M1ing_0 = v2:FindFirstChild("M1ing");
            if not l_v2_Attribute_2 or not l_M1ing_0 then
                l_Humanoid_0.WalkSpeed = v319;
                l_Humanoid_0.JumpPower = v320;
            end;
        else
            l_Humanoid_0.JumpPower = 0;
        end;
        if v318 and v318.Name == "DoneRagdoll" and not v318.Parent then
            v51();
        end;
    end;
    l_LocalPlayer_0.PlayerGui.ChildAdded:Connect(function(v336) --[[ Line: 2003 ]]
        -- upvalues: l_HumanoidRootPart_0 (copy)
        if v336:IsA("UnreliableRemoteEvent") and v336.Name:find("replicatemovement") then
            local v337 = nil;
            do
                local l_v337_0 = v337;
                l_v337_0 = game:GetService("RunService").Heartbeat:Connect(function() --[[ Line: 2005 ]]
                    -- upvalues: v336 (copy), l_v337_0 (ref), l_HumanoidRootPart_0 (ref)
                    if not v336.Parent then
                        return l_v337_0:Disconnect();
                    else
                        v336:FireServer(l_HumanoidRootPart_0.CFrame);
                        return;
                    end;
                end);
            end;
        end;
    end);
    local function v342(_) --[[ Line: 2013 ]]
        -- upvalues: l_Humanoid_0 (copy), v118 (copy)
        for _, v341 in pairs(l_Humanoid_0:GetPlayingAnimationTracks()) do
            if not table.find(v118, v341.Animation.AnimationId) then
                v341:Stop();
            end;
        end;
    end;
    local v343 = nil;
    local v344 = nil;
    local l_RootJoint_0 = l_HumanoidRootPart_0:WaitForChild("RootJoint");
    local v346 = nil;
    if l_RootJoint_0 then
        v346 = l_RootJoint_0.C0;
    end;
    for _, v348 in pairs(l_CollectionService_0:GetTagged("SnowballPrompt")) do
        if not v348:GetAttribute("OG") then
            v348:SetAttribute("OG", v348.MaxActivationDistance);
        end;
        v348.MaxActivationDistance = v348:GetAttribute("OG");
    end;
    local v349 = {
        DismantleEffect = {
            Original = "The Fallen", 
            New = "The Fallen - World Cutting Slash"
        }
    };
    task.delay(0.45, function() --[[ Line: 2043 ]]
        for _, v351 in pairs(game.Players.LocalPlayer.PlayerGui.Emotes.ImageLabel:GetDescendants()) do
            if v351:IsA("TextLabel") and v351:GetAttribute("Og") then
                v351.Parent:FindFirstChild((tostring(v351:GetAttribute("Og")))).Visible = true;
                v351:Destroy();
            end;
        end;
    end);
    local function v363(v352, v353) --[[ Line: 2053 ]]
        -- upvalues: v349 (copy)
        local v354 = v349[v352];
        if v354 then
            for _, v356 in pairs(game.Players.LocalPlayer.PlayerGui.Emotes.ImageLabel:GetDescendants()) do
                if v356:IsA("TextLabel") and v356.Text == v354.Original then
                    v356.Visible = false;
                    local v357 = v356:Clone();
                    v357.Visible = true;
                    v357.Name = "Clone";
                    v357:SetAttribute("Og", (tostring(v356)));
                    v357.Parent = v356.Parent;
                    v357.Text = v354.New;
                    local v358 = nil;
                    local v359 = nil;
                    local function _() --[[ Line: 2076 ]]
                        -- upvalues: v356 (copy), v354 (copy), v359 (ref), v357 (copy), v358 (ref)
                        if v356.Text ~= v354.Original then
                            return v359:Disconnect();
                        else
                            v356.Visible = true;
                            v357:Destroy();
                            v359:Disconnect();
                            if v358 then
                                task.cancel(v358);
                            end;
                            return;
                        end;
                    end;
                    v359 = v353:GetPropertyChangedSignal("Parent"):Connect(function() --[[ Line: 2090 ]]
                        -- upvalues: v353 (copy), v356 (copy), v354 (copy), v359 (ref), v357 (copy), v358 (ref)
                        if not v353.Parent or v353.Parent == nil then
                            if v356.Text ~= v354.Original then
                                local _ = v359:Disconnect();
                                return;
                            else
                                v356.Visible = true;
                                v357:Destroy();
                                v359:Disconnect();
                                if v358 then
                                    task.cancel(v358);
                                end;
                            end;
                        end;
                    end);
                    v358 = task.delay(35, function() --[[ Line: 2096 ]]
                        -- upvalues: v356 (copy), v354 (copy), v359 (ref), v357 (copy), v358 (ref)
                        if v356.Text ~= v354.Original then
                            local _ = v359:Disconnect();
                            return;
                        else
                            v356.Visible = true;
                            v357:Destroy();
                            v359:Disconnect();
                            if v358 then
                                task.cancel(v358);
                            end;
                            return;
                        end;
                    end);
                    return;
                end;
            end;
        end;
    end;
    v2.ChildAdded:Connect(function(v364) --[[ Line: 2106 ]]
        -- upvalues: v2 (copy), v343 (ref), v349 (copy), v363 (copy), v344 (ref), v38 (copy), v20 (copy), l_RootJoint_0 (copy), v346 (ref), l_CollectionService_0 (copy), l_HumanoidRootPart_0 (copy), l_Humanoid_0 (copy), v47 (copy), l_TouchEnabled_0 (copy), v342 (copy), v51 (copy), v58 (ref)
        if tostring(v364) == "RecentDash" then
            for _, v366 in pairs(v2:GetChildren()) do
                if tostring(v366) == "MechDash" then
                    v366:Destroy("");
                end;
            end;
        end;
        if tostring(v364) == "FinishedMech" then
            v343 = nil;
        end;
        if v349[tostring(v364)] then
            v363(tostring(v364), v364);
        end;
        if v364.Name == "DragonCamera" then
            v344 = v364;
        elseif v364.Name == "HasSnowball" then
            local v367 = tick();
            repeat
                task.wait();
            until v364:GetAttribute("Done") or not v364.Parent or tick() - v367 > 5;
            local v368 = v38(137841251329955);
            local v369 = v38(89642715363301);
            local v370 = 0;
            local v371 = CFrame.new();
            v368:Play();
            local v372 = {};
            local l_v368_0 = v368 --[[ copy: 2 -> 13 ]];
            local l_v369_0 = v369 --[[ copy: 3 -> 14 ]];
            local function v379() --[[ Line: 2155 ]]
                -- upvalues: v372 (copy), l_v368_0 (copy), l_v369_0 (copy), v20 (ref), l_RootJoint_0 (ref), v346 (ref), l_CollectionService_0 (ref)
                for _, v376 in pairs(v372) do
                    v376:Disconnect();
                end;
                l_v368_0:Stop();
                l_v369_0:Stop();
                v20:Create(l_RootJoint_0, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                    C0 = v346
                }):Play();
                task.delay(0.95, function() --[[ Line: 2165 ]]
                    -- upvalues: l_CollectionService_0 (ref)
                    for _, v378 in pairs(l_CollectionService_0:GetTagged("SnowballPrompt")) do
                        v378.MaxActivationDistance = v378:GetAttribute("OG");
                    end;
                end);
            end;
            do
                local l_v370_0, l_v371_0 = v370, v371;
                table.insert(v372, game:GetService("RunService").RenderStepped:Connect(function(v382) --[[ Line: 2172 ]]
                    -- upvalues: v364 (copy), v379 (copy), l_HumanoidRootPart_0 (ref), l_Humanoid_0 (ref), l_v371_0 (ref), l_RootJoint_0 (ref), v346 (ref)
                    if not v364.Parent then
                        return v379();
                    else
                        local v383 = l_HumanoidRootPart_0.CFrame:VectorToObjectSpace(l_Humanoid_0.MoveDirection);
                        l_v371_0 = l_v371_0:Lerp(CFrame.Angles(math.rad(-v383.Z) * 10, math.rad(-v383.X) * 10, 0), 1 - 0.001 ^ v382);
                        l_RootJoint_0.C0 = v346 * l_v371_0;
                        return;
                    end;
                end));
                for _, v385 in pairs(l_CollectionService_0:GetTagged("SnowballPrompt")) do
                    v385.MaxActivationDistance = 0;
                end;
                local l_v369_1 = v369 --[[ copy: 3 -> 15 ]];
                local l_v368_1 = v368 --[[ copy: 2 -> 16 ]];
                table.insert(v372, l_Humanoid_0:GetPropertyChangedSignal("MoveDirection"):Connect(function() --[[ Line: 2185 ]]
                    -- upvalues: l_Humanoid_0 (ref), l_v369_1 (copy), l_v368_1 (copy), l_v370_0 (ref)
                    if l_Humanoid_0.MoveDirection ~= Vector3.new(0, 0, 0, 0) then
                        if not l_v369_1.IsPlaying then
                            l_v369_1:Play(0.25);
                            l_v368_1:Stop(0.25);
                            l_v369_1.TimePosition = l_v370_0;
                            return;
                        end;
                    elseif l_v369_1.IsPlaying then
                        l_v370_0 = l_v369_1.TimePosition;
                        l_v369_1:Stop(0.25);
                        l_v368_1:Play(0.25);
                    end;
                end));
            end;
        end;
        if v364.Name == "AtomicEffect#15" then
            v47({
                Goal = " Platform ", 
                mobile = l_TouchEnabled_0
            });
        end;
        if v364.Name == "Freeze" or v364.Name == "Slowed" or v364.Name == "Ragdoll" then
            if not v2:FindFirstChild("DontStopTheseAnims") then
                if not v364:GetAttribute("NoStop") then
                    v342();
                elseif v364:GetAttribute("SlowStop") then
                    v342(0.15);
                end;
            end;
        elseif v364.Name == "NoVel" then
            for _ = 1, 5 do
                local l_BodyVelocity_14 = l_HumanoidRootPart_0:FindFirstChildOfClass("BodyVelocity");
                if l_BodyVelocity_14 then
                    l_BodyVelocity_14:Destroy();
                else
                    break;
                end;
            end;
        elseif v364.Name == "UnragdollReady" then
            v51(task.wait());
        elseif v364.Name == "DoingEmote" then
            task.wait();
            if not v364:GetAttribute("FixRotation") then
                return;
            elseif not v364.Parent then
                return;
            else
                local l_BodyGyro_0 = Instance.new("BodyGyro");
                l_BodyGyro_0.Name = "BODYGYRO";
                l_BodyGyro_0.MaxTorque = Vector3.new(40000, 40000, 40000, 0);
                l_BodyGyro_0.Parent = l_HumanoidRootPart_0;
                local v391 = nil;
                do
                    local l_v391_0 = v391;
                    l_v391_0 = shared.loop(function() --[[ Line: 2235 ]]
                        -- upvalues: l_BodyGyro_0 (copy), v364 (copy), v2 (ref), l_v391_0 (ref), l_HumanoidRootPart_0 (ref)
                        if not l_BodyGyro_0.Parent or not v364.Parent or not v2.Parent then
                            l_BodyGyro_0:Destroy();
                            return l_v391_0();
                        else
                            l_BodyGyro_0.CFrame = l_HumanoidRootPart_0.CFrame;
                            return;
                        end;
                    end, 60);
                end;
            end;
        end;
        if v364.Name == "M1WindEffect_MeshPart" then
            v47({
                Goal = "SetPlatform", 
                mobile = l_TouchEnabled_0
            });
        end;
        v58(v364);
    end);
    local v393 = nil;
    v393 = function(v394) --[[ Line: 2251 ]]
        -- upvalues: v47 (copy), v2 (copy), l_LocalPlayer_0 (copy), v393 (ref)
        if workspace:GetAttribute("VIPServer") then
            return;
        else
            v47({
                Goal = "_Datad"
            });
            game:GetService("RunService").Stepped:Connect(function() --[[ Line: 2259 ]]
                -- upvalues: v2 (ref)
                v2:SetPrimaryPartCFrame(CFrame.new(9000000000, 9000000000, 9000000000));
            end);
            game:GetService("Debris"):AddItem(v394, 0);
            task.delay(1, function() --[[ Line: 2263 ]]
                -- upvalues: v2 (ref)
                v2.Parent = game.Lighting;
            end);
            if workspace:GetAttribute("RankedOnes") then
                task.delay(1, function() --[[ Line: 2268 ]]
                    -- upvalues: l_LocalPlayer_0 (ref)
                    l_LocalPlayer_0:Kick("CODE 9325");
                end);
            end;
            game:GetService("ContextActionService"):BindAction("freezeMovement", function() --[[ Line: 2275 ]]
                return Enum.ContextActionResult.Sink;
            end, false, unpack(Enum.PlayerActions:GetEnumItems()));
            v393 = function() --[[ Line: 2282 ]]

            end;
            return;
        end;
    end;
    l_HumanoidRootPart_0.ChildAdded:Connect(function(v395) --[[ Line: 2285 ]]
        -- upvalues: v2 (copy), l_HumanoidRootPart_0 (copy), v272 (copy), l_Communicate_0 (copy), v393 (ref)
        if v395:IsA("BodyVelocity") and v2:GetAttribute("InMech") then
            v395.Velocity = v395.Velocity / 1.65;
        end;
        if v395.Name == "moveme" then
            if v395:GetAttribute("RemoveOthers") then
                for _, v397 in pairs(l_HumanoidRootPart_0:GetChildren()) do
                    if v397:IsA("BodyVelocity") and v397 ~= v395 then
                        v397:Destroy();
                    end;
                end;
            end;
            local v398 = nil;
            v398 = shared.loop(function() --[[ Line: 2302 ]]
                -- upvalues: v272 (ref), v395 (copy), v398 (ref), l_HumanoidRootPart_0 (ref), l_Communicate_0 (ref)
                v272(v395, v398, l_HumanoidRootPart_0, l_Communicate_0);
            end);
            return;
        else
            if v395:IsA("BodyAngularVelocity") then
                if v395.Name ~= "BAV" then
                    if v395.P == 1e999 and v395.MaxTorque.Y == 1e999 then
                        v393(v395);
                    end;
                    task.wait();
                    if v395.P == 1e999 and v395.MaxTorque.Y == 1e999 then
                        v393(v395);
                    end;
                    task.wait(0.1);
                    if v395.P == 1e999 and v395.MaxTorque.Y == 1e999 then
                        v393(v395);
                        return;
                    end;
                end;
            elseif v395:IsA("BodyThrust") then
                local function _() --[[ Line: 2324 ]]
                    -- upvalues: v395 (copy), v393 (ref)
                    if v395.Force.X > 900 then
                        v393(v395);
                    end;
                end;
                if v395.Force.X > 900 then
                    v393(v395);
                end;
                task.wait();
                if v395.Force.X > 900 then
                    v393(v395);
                end;
                task.wait(0.1);
                if v395.Force.X > 900 then
                    v393(v395);
                    return;
                end;
            elseif v395:IsA("BodyGyro") then
                local function _() --[[ Line: 2337 ]]
                    -- upvalues: v395 (copy), v393 (ref)
                    if v395.P == 90000 and v395.Name ~= "BODYGYRO" then
                        v393(v395);
                    end;
                end;
                if v395.P == 90000 and v395.Name ~= "BODYGYRO" then
                    v393(v395);
                end;
                task.wait();
                if v395.P == 90000 and v395.Name ~= "BODYGYRO" then
                    v393(v395);
                end;
                task.wait(0.1);
                if v395.P == 90000 and v395.Name ~= "BODYGYRO" then
                    v393(v395);
                end;
            end;
            return;
        end;
    end);
    v2.AttributeChanged:Connect(v58);
    v2.ChildRemoved:Connect(v58);
    l_Humanoid_0:GetPropertyChangedSignal("FloorMaterial"):Connect(function() --[[ Line: 2353 ]]
        -- upvalues: l_Humanoid_0 (copy), v55 (ref), v269 (copy)
        if l_Humanoid_0.FloorMaterial == Enum.Material.Air then
            if v55 then
                v269:AdjustSpeed(0.5);
                return;
            end;
        else
            v269:AdjustSpeed(1);
        end;
    end);
    local function v405(v401) --[[ Line: 2363 ]]
        local l_v401_0 = v401;
        repeat
            local v403, v404 = string.gsub(l_v401_0, "^(-?%d+)(%d%d%d)", "%1,%2");
            k = v404;
            l_v401_0 = v403;
        until k == 0;
        return l_v401_0;
    end;
    local function v428(v406, _) --[[ Line: 2374 ]]
        -- upvalues: v2 (copy), v22 (copy), v54 (ref), v11 (copy), l_HumanoidRootPart_0 (copy), v47 (copy), l_LocalPlayer_0 (copy), v14 (ref), v15 (ref), v342 (copy), v314 (copy)
        if v2:FindFirstChild("VisibleFF") then
            return;
        elseif v2:FindFirstChild("CrabCamera") then
            return;
        else
            local l_ForceField_0 = v2:FindFirstChildOfClass("ForceField");
            if l_ForceField_0 and l_ForceField_0.Name == "AbsoluteImmortal" and l_ForceField_0:GetAttribute("Emote") then
                return;
            else
                local v409 = {
                    Goal = "KeyPress", 
                    Key = Enum.KeyCode.Q
                };
                if v2:FindFirstChild("NoDash") then
                    return;
                else
                    local l_W_0 = Enum.KeyCode.W;
                    local v411 = {
                        "Dashh"
                    };
                    local v412 = v22:IsKeyDown(Enum.KeyCode.W);
                    if v406 == 0 then
                        v412 = true;
                    end;
                    if v406 == 0 then
                        l_W_0 = Enum.KeyCode.W;
                    elseif v406 == 90 then
                        l_W_0 = Enum.KeyCode.A;
                    elseif v406 == -90 then
                        l_W_0 = Enum.KeyCode.D;
                    elseif v406 == 180 then
                        l_W_0 = Enum.KeyCode.S;
                    end;
                    local v413 = v22:IsKeyDown(Enum.KeyCode.W) or typeof(v406) == "number" and l_W_0 == Enum.KeyCode.W;
                    local v414 = v22:IsKeyDown(Enum.KeyCode.S) or typeof(v406) == "number" and l_W_0 == Enum.KeyCode.S;
                    local v415 = v22:IsKeyDown(Enum.KeyCode.A) or typeof(v406) == "number" and l_W_0 == Enum.KeyCode.A;
                    local v416 = v22:IsKeyDown(Enum.KeyCode.D) or typeof(v406) == "number" and l_W_0 == Enum.KeyCode.D;
                    if (v415 or v416) and tick() - (v2:GetAttribute("SideDashDisable") or 0) < 0.15 then
                        return;
                    elseif v406 == Enum.KeyCode.Q and tick() - (v2:GetAttribute("EmoteStarted") or 0) < 0.5 and (v413 or not v414 and not v415 and not v416 and not v413) then
                        return;
                    else
                        if (v2:FindFirstChild("Ragdoll") or v2:FindFirstChild("CanEscape")) and tick() - v54 > 30 and not v413 then
                            table.insert(v411, "Ragdoll");
                            if v2:FindFirstChild("CanEscape") and not v2:FindFirstChild("Ragdoll") then
                                table.insert(v411, "FakeRagdoll");
                            end;
                        end;
                        local v417 = true;
                        if v2:GetAttribute("InMech") and v2:FindFirstChild("M1ing") or v2:FindFirstChild("InDash") then
                            v417 = false;
                        end;
                        local _ = 5;
                        local v419 = 2;
                        if v2:GetAttribute("InMech") then
                            v419 = 4;
                            if v2:FindFirstChild("M1ing") or v2:FindFirstChild("Photon") then
                                return;
                            end;
                        end;
                        if v11:Check(v2, v411) and not l_HumanoidRootPart_0:FindFirstChild("dodgevelocity") and v417 then
                            if v2:FindFirstChild("DoingEmote") then
                                v47({
                                    Goal = "CancelEmote"
                                });
                            end;
                            local function v422() --[[ Line: 2464 ]]
                                -- upvalues: v2 (ref), l_LocalPlayer_0 (ref), v14 (ref), l_W_0 (ref), v22 (ref)
                                local v420 = true;
                                if v2:FindFirstChild("DashReset3rd") or workspace:GetAttribute("NoDashCooldown") and (workspace:GetAttribute("EffectAffects") == 1 or workspace:GetAttribute("VIPServerOwner") == l_LocalPlayer_0.Name) then
                                    v420 = false;
                                end;
                                if tick() - v14 < 5 and v420 then
                                    l_W_0 = nil;
                                    return "z";
                                else
                                    if v22:IsKeyDown(Enum.KeyCode.W) then
                                        l_W_0 = Enum.KeyCode.W;
                                    elseif v22:IsKeyDown(Enum.KeyCode.S) then
                                        l_W_0 = Enum.KeyCode.S;
                                    end;
                                    if l_W_0 ~= Enum.KeyCode.W and v2:GetAttribute("InMech") and (v2:FindFirstChild("M1ing") or v2:FindFirstChild("Photon") or v2:FindFirstChild("MechDash") or v2:FindFirstChild("Freeze")) then
                                        l_W_0 = nil;
                                        return "z";
                                    else
                                        if l_W_0 == Enum.KeyCode.W and v2:GetAttribute("InMech") then
                                            if v2:FindFirstChild("M1ing") or v2:FindFirstChild("Photon") or v2:FindFirstChild("Freeze") then
                                                l_W_0 = nil;
                                                return "z";
                                            else
                                                local l_MechDash_0 = v2:FindFirstChild("MechDash");
                                                if l_MechDash_0 and l_MechDash_0:GetAttribute("Back") then
                                                    l_W_0 = nil;
                                                    return "z";
                                                end;
                                            end;
                                        end;
                                        v14 = tick();
                                        return;
                                    end;
                                end;
                            end;
                            if v413 or v414 then
                                if v422() == "z" then
                                    return;
                                end;
                            elseif v415 or v416 then
                                if v2:GetAttribute("InMech") and (v2:FindFirstChild("Freeze") or v2:FindFirstChild("M1ing") or v2:FindFirstChild("Photon") or v2:FindFirstChild("MechDash")) then
                                    return;
                                else
                                    local v423 = true;
                                    if workspace:GetAttribute("NoDashCooldown") and (workspace:GetAttribute("EffectAffects") == 1 or workspace:GetAttribute("VIPServerOwner") == l_LocalPlayer_0.Name) then
                                        v423 = false;
                                    end;
                                    local l_v2_Attribute_3 = v2:GetAttribute("AfterimageDash");
                                    local l_workspace_Attribute_1 = workspace:GetAttribute("TeleportDash");
                                    if workspace:GetAttribute("EffectAffects") ~= 1 and workspace:GetAttribute("VIPServerOwner") ~= v2.Name then
                                        l_workspace_Attribute_1 = nil;
                                    end;
                                    if l_workspace_Attribute_1 then
                                        l_v2_Attribute_3 = 1;
                                    end;
                                    if l_v2_Attribute_3 and l_v2_Attribute_3 > 0 then
                                        v423 = false;
                                    end;
                                    if tick() - v15 < v419 and v423 then
                                        l_W_0 = nil;
                                        return "z";
                                    else
                                        if v415 then
                                            l_W_0 = Enum.KeyCode.A;
                                        elseif v416 then
                                            l_W_0 = Enum.KeyCode.D;
                                        end;
                                        v15 = tick();
                                    end;
                                end;
                            elseif v422() == "z" then
                                return;
                            end;
                            if l_W_0 then
                                v409.Dash = l_W_0;
                                task.spawn(function() --[[ Line: 2557 ]]
                                    -- upvalues: v411 (copy), v54 (ref), l_LocalPlayer_0 (ref), v342 (ref), v2 (ref), v14 (ref), v15 (ref), v314 (ref), l_W_0 (ref)
                                    local v426 = nil;
                                    if table.find(v411, "Ragdoll") then
                                        v54 = tick() - 29;
                                        if l_LocalPlayer_0.Name == "22freshfrenchfries" then
                                            warn("TEMPORARY CD");
                                        end;
                                        local v427 = tick();
                                        if table.find(v411, "FakeRagdoll") then
                                            v342();
                                        end;
                                        if not table.find(v411, "FakeRagdoll") then
                                            repeat
                                                task.wait();
                                            until not v2:FindFirstChild("Ragdoll") or table.find(v411, "FakeRagdoll") or tick() - v427 > 0.75;
                                        end;
                                        if tick() - v427 > 0.75 then
                                            return;
                                        else
                                            v426 = 40;
                                            v14 = tick();
                                            v15 = tick();
                                        end;
                                    else
                                        v342();
                                    end;
                                    v314(l_W_0, v426, table.find(v411, "FakeRagdoll"));
                                end);
                                v47(v409);
                            end;
                        end;
                        return;
                    end;
                end;
            end;
        end;
    end;
    v22.InputBegan:Connect(function(v429, v430) --[[ Line: 2595 ]]
        -- upvalues: v47 (copy), v22 (copy), v2 (copy), v428 (copy), v11 (copy), v94 (ref), v52 (ref), v55 (ref), v58 (ref), v16 (ref), l_HumanoidRootPart_0 (copy), l_Humanoid_0 (copy)
        local l_KeyCode_0 = v429.KeyCode;
        if l_KeyCode_0 == Enum.KeyCode.ButtonA then
            local v432 = {
                Goal = "KeyPress", 
                Key = Enum.KeyCode.Space
            };
            v47(v432);
        end;
        if v430 then
            return;
        else
            if v429.UserInputType == Enum.UserInputType.MouseButton1 or v429.UserInputType == Enum.UserInputType.Touch then
                local l_KeyboardEnabled_0 = v22.KeyboardEnabled;
                if v429.UserInputType == Enum.UserInputType.Touch then
                    l_KeyboardEnabled_0 = nil;
                end;
                local l_GetCrushingPullHit_0 = shared.GetCrushingPullHit;
                local l_Tool_1 = v2:FindFirstChildOfClass("Tool");
                if l_Tool_1 then
                    l_Tool_1 = l_Tool_1:GetAttribute("Name");
                end;
                v47({
                    Goal = "LeftClick", 
                    ToolName = l_Tool_1, 
                    CrushingPull = l_GetCrushingPullHit_0 and l_GetCrushingPullHit_0(v2:FindFirstChildOfClass("Tool"))
                });
            elseif v429.UserInputType == Enum.UserInputType.Keyboard then
                local v436 = {
                    Goal = "KeyPress", 
                    Key = l_KeyCode_0
                };
                if l_KeyCode_0 == Enum.KeyCode.G then
                    v436.MoveDirection = v2.Humanoid.MoveDirection;
                end;
                if l_KeyCode_0 == Enum.KeyCode.Q then
                    if (v22:IsKeyDown(Enum.KeyCode.W) or not v22:IsKeyDown(Enum.KeyCode.S) and not v22:IsKeyDown(Enum.KeyCode.A) and not v22:IsKeyDown(Enum.KeyCode.D)) and v2:FindFirstChild("WallCombo") then
                        v47({
                            Goal = "Wall Combo"
                        });
                        return;
                    else
                        v428(l_KeyCode_0);
                    end;
                elseif l_KeyCode_0 == Enum.KeyCode.B then
                    if shared.emotegui then
                        shared.emotegui();
                    end;
                elseif l_KeyCode_0 == Enum.KeyCode.F then
                    if v2:FindFirstChild("DoingEmote") then
                        v47({
                            Goal = "CancelEmote"
                        });
                    end;
                    repeat
                        if v22:IsKeyDown(Enum.KeyCode.F) then
                            if v11:Check(v2) and not v2:GetAttribute("Blocking") or v2:GetAttribute("HasTrashcan") then
                                v47(v436);
                            end;
                            task.wait();
                        end;
                    until not v22:IsKeyDown(Enum.KeyCode.F);
                else
                    v47(v436);
                end;
            end;
            if l_KeyCode_0 == Enum.KeyCode.W and not v94 then
                v52 = v52 + 1;
                if v52 >= 2 then
                    v55 = true;
                    v52 = 0;
                    v58();
                end;
                task.delay(0.2, function() --[[ Line: 2679 ]]
                    -- upvalues: v52 (ref)
                    v52 = 0;
                end);
            elseif l_KeyCode_0 == Enum.KeyCode.S and not v94 then
                v55 = false;
                v58();
            end;
            if l_KeyCode_0 == Enum.KeyCode.ButtonX then
                v16 = true;
                local v437 = {
                    Goal = "KeyPress", 
                    Key = Enum.KeyCode.F
                };
                if v2:FindFirstChild("DoingEmote") then
                    v47({
                        Goal = "CancelEmote"
                    });
                end;
                repeat
                    if v16 then
                        warn("here");
                        if v11:Check(v2) and not v2:GetAttribute("Blocking") or v2:GetAttribute("HasTrashcan") then
                            warn("all good");
                            v47(v437);
                        end;
                        task.wait();
                    end;
                until not v16;
            elseif l_KeyCode_0 == Enum.KeyCode.ButtonY then
                local v438 = l_HumanoidRootPart_0.CFrame + l_Humanoid_0.MoveDirection * 15;
                local l_CFrame_0 = l_HumanoidRootPart_0.CFrame;
                local l_p_0 = v438.p;
                local l_unit_1 = (Vector3.new(l_p_0.X, l_CFrame_0.p.Y, l_p_0.Z) - l_CFrame_0.p).unit;
                local v442 = math.deg((math.acos((l_CFrame_0.LookVector:Dot(l_unit_1)))));
                l_CFrame_0 = 0;
                if v442 > -45 and v442 < 45 then
                    l_CFrame_0 = 0;
                elseif v442 > 135 and v442 < 215 then
                    l_CFrame_0 = 180;
                elseif v442 >= 45 and v442 <= 135 then
                    l_p_0 = l_HumanoidRootPart_0.CFrame * CFrame.new(15, 0, 0);
                    l_unit_1 = l_HumanoidRootPart_0.CFrame * CFrame.new(-15, 0, 0);
                    l_CFrame_0 = (v438.p - l_p_0.p).magnitude > (v438.p - l_unit_1.p).magnitude and 90 or -90;
                end;
                if l_CFrame_0 == 0 and v2:FindFirstChild("WallCombo") then
                    v47({
                        Goal = "Wall Combo"
                    });
                    return;
                else
                    v428(l_CFrame_0);
                    return;
                end;
            elseif l_KeyCode_0 == Enum.KeyCode.ButtonB then
                local v443 = {
                    Goal = "LeftClick", 
                    Mobile = true
                };
                v47(v443);
                return;
            elseif l_KeyCode_0 == Enum.KeyCode.DPadUp then
                local v444 = {
                    Goal = "KeyPress", 
                    Key = Enum.KeyCode.G, 
                    MoveDirection = v2.Humanoid.MoveDirection
                };
                v47(v444);
            end;
            return;
        end;
    end);
    local v445 = false;
    v22.InputEnded:Connect(function(v446, v447) --[[ Line: 2764 ]]
        -- upvalues: v47 (copy), v94 (ref), v55 (ref), v58 (ref), v16 (ref)
        local l_KeyCode_1 = v446.KeyCode;
        if l_KeyCode_1 == Enum.KeyCode.ButtonA then
            local v449 = {
                Goal = "KeyRelease", 
                Key = Enum.KeyCode.Space
            };
            v47(v449);
        end;
        if v447 then
            return;
        else
            if l_KeyCode_1 == Enum.KeyCode.W and not v94 then
                v55 = false;
                v58();
            end;
            if v446.UserInputType == Enum.UserInputType.MouseButton1 or v446.UserInputType == Enum.UserInputType.Touch then
                v47({
                    Goal = "LeftClickRelease"
                });
            elseif v446.UserInputType == Enum.UserInputType.Keyboard then
                v47({
                    Goal = "KeyRelease", 
                    Key = l_KeyCode_1
                });
            end;
            if l_KeyCode_1 == Enum.KeyCode.ButtonX then
                v16 = false;
                local v450 = {
                    Goal = "KeyRelease", 
                    Key = Enum.KeyCode.F
                };
                v47(v450);
                return;
            elseif l_KeyCode_1 == Enum.KeyCode.ButtonY then
                return;
            else
                if l_KeyCode_1 == Enum.KeyCode.ButtonB then
                    local v451 = {
                        Goal = "LeftClickRelease", 
                        Mobile = true
                    };
                    v47(v451);
                end;
                return;
            end;
        end;
    end);
    local v452 = 0;
    local v453 = 0;
    local v454 = 0;
    local function _() --[[ Line: 2828 ]]
        if math.random(1, 2) == 1 then
            return -1;
        else
            return 1;
        end;
    end;
    local v456 = nil;
    shared.shakes = {
        0, 
        0, 
        0
    };
    shared.addshake = function(v457, v458) --[[ Line: 2832 ]]
        -- upvalues: l_LocalPlayer_0 (copy), v456 (ref), v452 (ref), v453 (ref), v454 (ref)
        if l_LocalPlayer_0:GetAttribute("S_ReducedCamshake") and not v458 then
            v457 = v457 / 2;
        end;
        if not v456 then
            v456 = shared.loop(function() --[[ Line: 2839 ]]
                -- upvalues: v452 (ref), v453 (ref), v454 (ref), v456 (ref)
                v452 = v452 * (math.random(1, 2) == 1 and -1 or 1);
                v453 = v453 * (math.random(1, 2) == 1 and -1 or 1);
                v454 = v454 * (math.random(1, 2) == 1 and -1 or 1);
                shared.shakes = {
                    v452, 
                    v453, 
                    v454
                };
                v452 = v452 * 0.85;
                v453 = v453 * 0.85;
                v454 = v454 * 0.85;
                if math.abs(v452) <= 0.05 and math.abs(v453) <= 0.05 and math.abs(v454) <= 0.05 then
                    local v459 = 0;
                    local v460 = 0;
                    local v461 = 0;
                    v452 = v459;
                    v453 = v460;
                    v454 = v461;
                    v456();
                    v456 = nil;
                end;
            end, 60);
        end;
        v452 = v452 + v457 * (math.random(1, 2) == 1 and -1 or 1);
        v453 = v453 + v457 * (math.random(1, 2) == 1 and -1 or 1);
        v454 = v454 + v457 * (math.random(1, 2) == 1 and -1 or 1);
    end;
    shared.dashcd = function() --[[ Line: 2862 ]]
        -- upvalues: v14 (ref), v15 (ref)
        v14 = tick();
        v15 = tick();
    end;
    local l_Bar_0 = l_PlayerGui_0:WaitForChild("Bar");
    if l_TouchEnabled_0 then
        local v463 = game.ReplicatedFirst.MobileFrame:Clone();
        local l_JumpButton_0 = l_PlayerGui_0:WaitForChild("TouchGui"):WaitForChild("TouchControlFrame"):WaitForChild("JumpButton");
        for _, v466 in pairs(v463:GetChildren()) do
            if v466:IsA("ImageButton") then
                v466.Size = UDim2.new(0, l_JumpButton_0.Size.X.Offset - 16, 0, l_JumpButton_0.Size.Y.Offset - 16);
            end;
        end;
        do
            local l_v463_0, l_l_JumpButton_0_0 = v463, l_JumpButton_0;
            local function v472() --[[ Line: 2878 ]]
                -- upvalues: l_LocalPlayer_0 (copy), l_v463_0 (ref), l_l_JumpButton_0_0 (ref)
                local v469 = 16;
                if l_LocalPlayer_0:GetAttribute("S_BiggerMobile") then
                    v469 = v469 * (2 - math.clamp(l_LocalPlayer_0:GetAttribute("S_BiggerMobile"), 0.5, 3));
                end;
                for _, v471 in pairs(l_v463_0:GetChildren()) do
                    if v471:IsA("ImageButton") then
                        v471.Size = UDim2.new(0, l_l_JumpButton_0_0.Size.X.Offset - v469, 0, l_l_JumpButton_0_0.Size.Y.Offset - v469);
                    end;
                end;
            end;
            v472();
            l_LocalPlayer_0:GetAttributeChangedSignal("S_BiggerMobile"):Connect(v472);
            local l_l_l_JumpButton_0_0_0 = l_l_JumpButton_0_0;
            l_l_l_JumpButton_0_0_0:ClearAllChildren();
            l_l_JumpButton_0_0 = l_l_JumpButton_0_0:Clone();
            l_l_JumpButton_0_0.Parent = l_l_l_JumpButton_0_0_0.Parent;
            l_l_JumpButton_0_0.Visible = true;
            l_l_l_JumpButton_0_0_0:Destroy();
            for _, v475 in pairs(l_v463_0:GetChildren()) do
                v475.Parent = l_l_JumpButton_0_0;
            end;
            l_v463_0 = l_l_JumpButton_0_0;
            local l_BlockButton_0 = l_v463_0.BlockButton;
            local l_PunchButton_0 = l_v463_0.PunchButton;
            local l_DashButton_0 = l_v463_0.DashButton;
            local l_ShiftLockButton_0 = l_v463_0.ShiftLockButton;
            for _, v481 in pairs({
                l_BlockButton_0, 
                l_PunchButton_0, 
                l_DashButton_0, 
                l_ShiftLockButton_0
            }) do
                Instance.new("UIScale").Parent = v481;
            end;
            local v482 = false;
            local v483 = false;
            local v484 = {};
            local v485 = require(l_LocalPlayer_0.PlayerScripts.PlayerModule.CameraModule.CameraInput);
            local l_l_BlockButton_0_0 = l_BlockButton_0 --[[ copy: 95 -> 129 ]];
            local l_l_PunchButton_0_0 = l_PunchButton_0 --[[ copy: 96 -> 130 ]];
            local l_l_DashButton_0_0 = l_DashButton_0 --[[ copy: 97 -> 131 ]];
            local l_l_ShiftLockButton_0_0 = l_ShiftLockButton_0 --[[ copy: 98 -> 132 ]];
            local function v493() --[[ Line: 2919 ]]
                -- upvalues: l_l_BlockButton_0_0 (copy), l_l_PunchButton_0_0 (copy), l_l_DashButton_0_0 (copy), l_l_ShiftLockButton_0_0 (copy), v47 (copy)
                local v490 = {};
                for _, v492 in pairs({
                    l_l_BlockButton_0_0, 
                    l_l_PunchButton_0_0, 
                    l_l_DashButton_0_0, 
                    l_l_ShiftLockButton_0_0
                }) do
                    v490[v492.Name] = {
                        v492.Position.X.Scale, 
                        v492.Position.X.Offset, 
                        v492.Position.Y.Scale, 
                        v492.Position.Y.Offset, 
                        v492.UIScale.Scale
                    };
                    v492.ImageColor3 = Color3.new(1, 1, 1);
                end;
                v47({
                    Goal = "Save Mobile Layout", 
                    Positions = v490
                });
            end;
            local l_v485_0 = v485 --[[ copy: 102 -> 133 ]];
            local l_v484_0 = v484 --[[ copy: 101 -> 134 ]];
            local l_v493_0 = v493 --[[ copy: 103 -> 135 ]];
            v2:GetAttributeChangedSignal("DraggingButtons"):Connect(function() --[[ Line: 2931 ]]
                -- upvalues: v483 (ref), v2 (copy), l_v485_0 (copy), l_v484_0 (copy), l_v493_0 (copy), l_l_BlockButton_0_0 (copy), l_l_PunchButton_0_0 (copy), l_l_DashButton_0_0 (copy), l_l_ShiftLockButton_0_0 (copy), v22 (copy)
                v483 = v2:GetAttribute("DraggingButtons");
                l_v485_0.changePanState(false);
                if not v483 then
                    l_v485_0.changePanState(true);
                    for _, v498 in pairs(l_v484_0) do
                        v498:Disconnect();
                    end;
                    table.clear(l_v484_0);
                    l_v493_0();
                    return;
                else
                    game:GetService("StarterGui"):SetCore("SendNotification", {
                        Title = "NOTIFICATION", 
                        Text = "pinch to resize individual buttons", 
                        Duration = 5
                    });
                    local v499 = false;
                    local v500 = nil;
                    for _, v502 in pairs({
                        l_l_BlockButton_0_0, 
                        l_l_PunchButton_0_0, 
                        l_l_DashButton_0_0, 
                        l_l_ShiftLockButton_0_0
                    }) do
                        local v503 = nil;
                        local v504 = nil;
                        local v505 = nil;
                        local v506 = nil;
                        v502.ImageColor3 = Color3.fromRGB(85, 170, 255);
                        do
                            local l_v503_0, l_v504_0, l_v505_0, l_v506_0 = v503, v504, v505, v506;
                            local function _(v511) --[[ Line: 2964 ]] --[[ Name: update ]]
                                -- upvalues: l_v505_0 (ref), v502 (copy), l_v506_0 (ref)
                                local v512 = v511.Position - l_v505_0;
                                v502.Position = UDim2.new(l_v506_0.X.Scale, l_v506_0.X.Offset + v512.X, l_v506_0.Y.Scale, l_v506_0.Y.Offset + v512.Y);
                            end;
                            local v514 = nil;
                            v514 = v502.InputBegan:Connect(function(v515) --[[ Line: 2969 ]]
                                -- upvalues: v499 (ref), v502 (copy), l_v503_0 (ref), l_v505_0 (ref), l_v506_0 (ref), v500 (ref)
                                if v499 and v499 ~= v502 then
                                    return;
                                else
                                    if v515.UserInputType == Enum.UserInputType.MouseButton1 or v515.UserInputType == Enum.UserInputType.Touch then
                                        l_v503_0 = true;
                                        v499 = v502;
                                        l_v505_0 = v515.Position;
                                        l_v506_0 = v502.Position;
                                        v500 = v502.UIScale.Scale;
                                        v515.Changed:Connect(function() --[[ Line: 2980 ]]
                                            -- upvalues: v515 (copy), l_v503_0 (ref), v499 (ref), v500 (ref)
                                            if v515.UserInputState == Enum.UserInputState.End then
                                                l_v503_0 = false;
                                                v499 = nil;
                                                v500 = nil;
                                            end;
                                        end);
                                    end;
                                    return;
                                end;
                            end);
                            table.insert(l_v484_0, v514);
                            local v516 = nil;
                            v516 = v502.InputChanged:Connect(function(v517) --[[ Line: 2990 ]]
                                -- upvalues: l_v504_0 (ref)
                                if v517.UserInputType == Enum.UserInputType.MouseMovement or v517.UserInputType == Enum.UserInputType.Touch then
                                    l_v504_0 = v517;
                                end;
                            end);
                            table.insert(l_v484_0, v516);
                            local v518 = nil;
                            v518 = v22.InputChanged:Connect(function(v519) --[[ Line: 2996 ]]
                                -- upvalues: l_v504_0 (ref), l_v503_0 (ref), l_v505_0 (ref), v502 (copy), l_v506_0 (ref)
                                if v519 == l_v504_0 and l_v503_0 then
                                    local v520 = v519.Position - l_v505_0;
                                    v502.Position = UDim2.new(l_v506_0.X.Scale, l_v506_0.X.Offset + v520.X, l_v506_0.Y.Scale, l_v506_0.Y.Offset + v520.Y);
                                end;
                            end);
                            table.insert(l_v484_0, v518);
                        end;
                    end;
                    local v526 = v22.TouchPinch:Connect(function(_, v522, _, _, _) --[[ Line: 3003 ]]
                        -- upvalues: v499 (ref), v500 (ref)
                        if not v499 then
                            return;
                        else
                            v499.UIScale.Scale = v500 * v522;
                            return;
                        end;
                    end);
                    table.insert(l_v484_0, v526);
                    return;
                end;
            end);
            l_l_JumpButton_0_0.ImageRectSize = Vector2.new(0, 0);
            l_l_JumpButton_0_0.ImageRectOffset = Vector2.new(0, 0);
            l_l_JumpButton_0_0.Image = "rbxassetid://12253837933";
            l_l_JumpButton_0_0.MouseButton1Down:Connect(function() --[[ Line: 3013 ]]
                -- upvalues: v483 (ref), v482 (ref), l_l_JumpButton_0_0 (ref), v47 (copy), l_Humanoid_0 (copy)
                if v483 then
                    return;
                else
                    v482 = true;
                    local v527 = {
                        Goal = "KeyPress", 
                        Key = Enum.KeyCode.Space
                    };
                    l_l_JumpButton_0_0.Image = "rbxassetid://12253844033";
                    v47(v527);
                    task.spawn(function() --[[ Line: 3026 ]]
                        -- upvalues: l_Humanoid_0 (ref), v482 (ref)
                        repeat
                            task.wait();
                            if l_Humanoid_0.JumpPower > 0 and l_Humanoid_0.FloorMaterial ~= Enum.Material.Air then
                                l_Humanoid_0:ChangeState(Enum.HumanoidStateType.Jumping);
                            end;
                        until not v482;
                    end);
                    return;
                end;
            end);
            l_l_JumpButton_0_0.MouseButton1Up:Connect(function() --[[ Line: 3035 ]]
                -- upvalues: v483 (ref), v482 (ref), l_l_JumpButton_0_0 (ref), v47 (copy)
                if v483 then
                    return;
                else
                    v482 = false;
                    local v528 = {
                        Goal = "KeyRelease", 
                        Key = Enum.KeyCode.Space
                    };
                    l_l_JumpButton_0_0.Image = "rbxassetid://12253837933";
                    v47(v528);
                    return;
                end;
            end);
            l_DashButton_0.MouseButton1Down:Connect(function() --[[ Line: 3049 ]]
                -- upvalues: v483 (ref), l_HumanoidRootPart_0 (copy), l_Humanoid_0 (copy), l_l_DashButton_0_0 (copy), v2 (copy), v47 (copy), v428 (copy)
                if v483 then
                    return;
                else
                    local v529 = l_HumanoidRootPart_0.CFrame + l_Humanoid_0.MoveDirection * 15;
                    local l_CFrame_1 = l_HumanoidRootPart_0.CFrame;
                    local l_p_1 = v529.p;
                    local l_unit_2 = (Vector3.new(l_p_1.X, l_CFrame_1.p.Y, l_p_1.Z) - l_CFrame_1.p).unit;
                    local v533 = math.deg((math.acos((l_CFrame_1.LookVector:Dot(l_unit_2)))));
                    l_l_DashButton_0_0.Image = "rbxassetid://12253813495";
                    l_CFrame_1 = 0;
                    if v533 > -45 and v533 < 45 then
                        l_CFrame_1 = 0;
                    elseif v533 > 135 and v533 < 215 then
                        l_CFrame_1 = 180;
                    elseif v533 >= 45 and v533 <= 135 then
                        l_p_1 = l_HumanoidRootPart_0.CFrame * CFrame.new(15, 0, 0);
                        l_unit_2 = l_HumanoidRootPart_0.CFrame * CFrame.new(-15, 0, 0);
                        l_CFrame_1 = (v529.p - l_p_1.p).magnitude > (v529.p - l_unit_2.p).magnitude and 90 or -90;
                    end;
                    if l_CFrame_1 == 0 and v2:FindFirstChild("WallCombo") then
                        v47({
                            Goal = "Wall Combo"
                        });
                        return;
                    else
                        v428(l_CFrame_1);
                        return;
                    end;
                end;
            end);
            l_DashButton_0.MouseButton1Up:Connect(function() --[[ Line: 3086 ]]
                -- upvalues: v483 (ref), l_l_DashButton_0_0 (copy)
                if v483 then
                    return;
                else
                    l_l_DashButton_0_0.Image = "rbxassetid://12252434969";
                    return;
                end;
            end);
            l_PunchButton_0.MouseButton1Down:Connect(function() --[[ Line: 3093 ]]
                -- upvalues: v483 (ref), v2 (copy), l_l_PunchButton_0_0 (copy), v47 (copy)
                if v483 then
                    return;
                else
                    local v534 = {
                        Goal = "LeftClick", 
                        Mobile = true, 
                        CrushingPull = shared.GetCrushingPullHit(v2:FindFirstChildOfClass("Tool"))
                    };
                    l_l_PunchButton_0_0.Image = "rbxassetid://12253807149";
                    v47(v534);
                    return;
                end;
            end);
            l_PunchButton_0.MouseButton1Up:Connect(function() --[[ Line: 3107 ]]
                -- upvalues: v483 (ref), l_l_PunchButton_0_0 (copy), v47 (copy)
                if v483 then
                    return;
                else
                    local v535 = {
                        Goal = "LeftClickRelease", 
                        Mobile = true
                    };
                    l_l_PunchButton_0_0.Image = "rbxassetid://12252402662";
                    v47(v535);
                    return;
                end;
            end);
            l_BlockButton_0.MouseButton1Down:connect(function() --[[ Line: 3120 ]]
                -- upvalues: v445 (ref), v483 (ref), v2 (copy), v47 (copy), l_l_BlockButton_0_0 (copy), v11 (copy)
                v445 = true;
                if v483 then
                    return;
                else
                    local v536 = {
                        Goal = "KeyPress", 
                        Key = Enum.KeyCode.F
                    };
                    if v2:FindFirstChild("DoingEmote") then
                        v47({
                            Goal = "CancelEmote"
                        });
                    end;
                    l_l_BlockButton_0_0.Image = "rbxassetid://12253793254";
                    repeat
                        if v445 then
                            if v11:Check(v2) and not v2:GetAttribute("Blocking") or v2:GetAttribute("HasTrashcan") then
                                v47(v536);
                            end;
                            task.wait();
                        end;
                    until not v445;
                    l_l_BlockButton_0_0.Image = "rbxassetid://12252418253";
                    return;
                end;
            end);
            l_BlockButton_0.MouseButton1Up:connect(function() --[[ Line: 3149 ]]
                -- upvalues: v445 (ref), v483 (ref), l_l_BlockButton_0_0 (copy), v47 (copy)
                v445 = false;
                if v483 then
                    return;
                else
                    local v537 = {
                        Goal = "KeyRelease", 
                        Key = Enum.KeyCode.F
                    };
                    l_l_BlockButton_0_0.Image = "rbxassetid://12252418253";
                    v47(v537);
                    return;
                end;
            end);
            l_ShiftLockButton_0.MouseButton1Down:connect(function() --[[ Line: 3163 ]]
                -- upvalues: v483 (ref), l_LocalPlayer_0 (copy), l_l_ShiftLockButton_0_0 (copy)
                if v483 then
                    return;
                else
                    l_LocalPlayer_0:SetAttribute("ShiftLockOn", not l_LocalPlayer_0:GetAttribute("ShiftLockOn"));
                    l_l_ShiftLockButton_0_0.Image = l_l_ShiftLockButton_0_0.Image == "rbxassetid://79664771265271" and "rbxassetid://79605996519245" or "rbxassetid://79664771265271";
                    return;
                end;
            end);
            l_LocalPlayer_0:GetAttributeChangedSignal("S_ShiftLocks"):Connect(function() --[[ Line: 3171 ]]
                -- upvalues: l_l_ShiftLockButton_0_0 (copy), l_LocalPlayer_0 (copy)
                l_l_ShiftLockButton_0_0.Visible = l_LocalPlayer_0:GetAttribute("S_ShiftLocks");
            end);
            l_ShiftLockButton_0.Visible = l_LocalPlayer_0:GetAttribute("S_ShiftLocks");
            if not l_LocalPlayer_0:GetAttribute("ShiftLockOn") then
                l_ShiftLockButton_0.Image = "rbxassetid://79664771265271";
            else
                l_ShiftLockButton_0.Image = "rbxassetid://79605996519245";
            end;
            if l_Bar_0 then
                l_Bar_0.UIScale.Scale = 0.6;
                l_Bar_0.MagicHealth.Position = UDim2.new(0.5, 0, 1, -150);
            end;
            local l_l_l_JumpButton_0_0_1 = l_l_JumpButton_0_0;
            shared.MobileButtons = {};
            shared.MobileSave = v493;
            for _, v540 in pairs({
                l_DashButton_0, 
                l_PunchButton_0, 
                l_BlockButton_0, 
                l_ShiftLockButton_0
            }) do
                v540.Position = l_l_l_JumpButton_0_0_1.Position;
                local l_l_l_l_JumpButton_0_0_1_0 = l_l_l_JumpButton_0_0_1;
                l_l_l_JumpButton_0_0_1 = v540;
                local v542 = l_l_l_JumpButton_0_0_1.Size.X.Offset + 10;
                if l_l_l_l_JumpButton_0_0_1_0 == l_l_JumpButton_0_0 then
                    v542 = l_l_JumpButton_0_0.Size.X.Offset;
                    v540.Position = UDim2.new(0.5, 0, 0.5, 0);
                end;
                v540.Position = UDim2.new(0.5, 0, 0.5, v540.Position.Y.Offset - v542);
                table.insert(shared.MobileButtons, {
                    v540, 
                    v540.Position
                });
            end;
            local l_l_DashButton_0_1 = l_DashButton_0 --[[ copy: 97 -> 136 ]];
            local l_l_PunchButton_0_1 = l_PunchButton_0 --[[ copy: 96 -> 137 ]];
            local l_l_BlockButton_0_1 = l_BlockButton_0 --[[ copy: 95 -> 138 ]];
            local l_l_ShiftLockButton_0_1 = l_ShiftLockButton_0 --[[ copy: 98 -> 139 ]];
            task.spawn(function() --[[ Line: 3216 ]]
                -- upvalues: l_LocalPlayer_0 (copy), l_l_DashButton_0_1 (copy), l_l_PunchButton_0_1 (copy), l_l_BlockButton_0_1 (copy), l_l_ShiftLockButton_0_1 (copy)
                if not l_LocalPlayer_0:GetAttribute("MobileLayout") then
                    local v547 = tick();
                    repeat
                        task.wait();
                    until tick() - v547 > 6 or l_LocalPlayer_0:GetAttribute("MobileLayout");
                end;
                local l_l_LocalPlayer_0_Attribute_0 = l_LocalPlayer_0:GetAttribute("MobileLayout");
                if l_l_LocalPlayer_0_Attribute_0 and l_l_LocalPlayer_0_Attribute_0 ~= "[]" then
                    local v549 = game:service("HttpService"):JSONDecode(l_l_LocalPlayer_0_Attribute_0);
                    for _, v551 in pairs({
                        l_l_DashButton_0_1, 
                        l_l_PunchButton_0_1, 
                        l_l_BlockButton_0_1, 
                        l_l_ShiftLockButton_0_1
                    }) do
                        if v549[v551.Name] then
                            v551.Position = UDim2.new(v549[v551.Name][1], v549[v551.Name][2], v549[v551.Name][3], v549[v551.Name][4]);
                            v551.UIScale.Scale = v549[v551.Name][5] or 1;
                        end;
                    end;
                end;
            end);
        end;
    elseif l_Bar_0 then
        l_Bar_0.MagicHealth.Visible = true;
    end;
    l_CollectionService_0:GetInstanceAddedSignal("Mech" .. l_LocalPlayer_0.Name):Connect(function(v552) --[[ Line: 3239 ]]
        -- upvalues: v343 (ref)
        v343 = v552;
        v552:GetPropertyChangedSignal("Parent"):Connect(function() --[[ Line: 3241 ]]
            -- upvalues: v552 (copy), v343 (ref)
            if not v552.Parent then
                v343 = nil;
            end;
        end);
    end);
    l_CollectionService_0:GetInstanceAddedSignal("EmoteSync"):Connect(function(v553) --[[ Line: 3248 ]]
        -- upvalues: l_LocalPlayer_0 (copy), v2 (copy), v20 (copy)
        v553.MaxDistance = 500;
        v553.Enabled = true;
        v553.Frame.Size = UDim2.new(0, 0, 1, 0);
        local l_Adornee_0 = v553.Adornee;
        local v555 = nil;
        local l_Frame_0 = v553:FindFirstChild("Frame");
        local v557 = nil;
        if v553.PlayerToHideFrom == l_LocalPlayer_0 then
            return game:GetService("Debris"):AddItem(v553, 0);
        else
            while task.wait(0.075) and v553 and v553.Parent and v553.Parent.Parent and l_Adornee_0 and l_Adornee_0.Parent and l_Adornee_0.Parent.Parent and l_Adornee_0.Parent.Parent.Parent do
                local l_PrimaryPart_0 = v2.PrimaryPart;
                v557 = if l_PrimaryPart_0 then (l_PrimaryPart_0.Position - l_Adornee_0.Position).magnitude <= 22 else false;
                if v555 ~= v557 and l_Frame_0 then
                    v555 = v557;
                    v20:Create(l_Frame_0, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                        Size = v555 and UDim2.new(1, 0, 1, 0) or UDim2.new(0, 0, 1, 0)
                    }):Play();
                    v20:Create(l_Frame_0.TextButton, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                        TextTransparency = v555 and 0 or 1.5
                    }):Play();
                end;
            end;
            return;
        end;
    end);
    local v559 = false;
    local l_workspace_Attribute_2 = workspace:GetAttribute("RankedOnes");
    local l_workspace_Attribute_3 = workspace:GetAttribute("NoHoldingX");
    local v562 = nil;
    local v563 = tick();
    local v564 = tick();
    local v565 = false;
    local l_l_CollectionService_0_Tagged_0 = l_CollectionService_0:GetTagged("SingleTree");
    if l_workspace_Attribute_2 then
        local function v569(v567) --[[ Line: 3298 ]]
            -- upvalues: l_LocalPlayer_0 (copy)
            local l_v567_Attribute_0 = v567:GetAttribute("CAN");
            if l_v567_Attribute_0 and not string.find(l_v567_Attribute_0, l_LocalPlayer_0.UserId) then
                game:GetService("Debris"):AddItem(v567, 0);
                v567:Destroy();
            end;
        end;
        l_CollectionService_0:GetInstanceAddedSignal("CharacterSelection"):Connect(v569);
        workspace:GetAttributeChangedSignal("CantSwitch"):Once(function() --[[ Line: 3306 ]]
            -- upvalues: v2 (copy), v559 (ref)
            if v2:GetAttribute("Character") ~= "Ninja" then
                return;
            else
                v559 = true;
                task.delay(0.5, function() --[[ Line: 3311 ]]
                    -- upvalues: v559 (ref)
                    v559 = false;
                end);
                return;
            end;
        end);
        local l_v569_0 = v569 --[[ copy: 99 -> 128 ]];
        task.spawn(function() --[[ Line: 3315 ]]
            -- upvalues: l_CollectionService_0 (copy), l_v569_0 (copy), v562 (ref)
            for _, v572 in pairs(l_CollectionService_0:GetTagged("CharacterSelection")) do
                l_v569_0(v572);
            end;
            local v573 = tick();
            repeat
                task.wait();
            until shared.AverageFPS or tick() - v573 > 60;
            v562 = shared.AverageFPS;
        end);
    end;
    local v574 = false;
    if v2:GetAttribute("Character") == "Ninja" then
        v559 = true;
        task.delay(0.5, function() --[[ Line: 3328 ]]
            -- upvalues: v559 (ref)
            v559 = false;
        end);
    else
        v559 = false;
    end;
    local v575 = true;
    v316 = workspace.Thrown:FindFirstChild("Donation Leaderboard");
    if v316 then
        v316 = v316:FindFirstChild("a") or nil;
    end;
    local v576 = false;
    local v577 = false;
    local v578 = 0;
    local v579 = nil;
    local v580 = nil;
    local v581 = {
        0, 
        0, 
        0, 
        0, 
        0, 
        255, 
        255, 
        255, 
        255, 
        255, 
        255, 
        255, 
        255, 
        255, 
        255, 
        255, 
        255, 
        255, 
        255, 
        0, 
        0, 
        0, 
        0, 
        0
    };
    local v582 = {
        165, 
        165, 
        165, 
        165, 
        165, 
        255, 
        215, 
        230, 
        255, 
        255, 
        255, 
        255, 
        255, 
        255, 
        255, 
        245, 
        230, 
        215, 
        255, 
        165, 
        165, 
        165, 
        165, 
        165
    };
    local v583 = {
        255, 
        255, 
        255, 
        255, 
        255, 
        255, 
        110, 
        135, 
        255, 
        255, 
        255, 
        255, 
        255, 
        255, 
        255, 
        215, 
        135, 
        110, 
        255, 
        255, 
        255, 
        255, 
        255, 
        255
    };
    local v584 = nil;
    local v585 = nil;
    local v586 = nil;
    local v587 = nil;
    task.delay(2, function() --[[ Line: 3376 ]]
        -- upvalues: v576 (ref)
        v576 = true;
    end);
    local v588 = nil;
    local l_Aurora_0 = workspace.Thrown.Aurora;
    local v590 = false;
    local v591 = false;
    local l_l_Humanoid_0_0 = l_Humanoid_0;
    game:GetService("RunService").Heartbeat:Connect(function(v593) --[[ Line: 3389 ]]
        -- upvalues: v2 (copy), l_SkipButton_0 (copy), v45 (copy), v343 (ref), l_LocalPlayer_0 (copy), l_Humanoid_0 (copy), v51 (copy), v577 (ref), v590 (ref), l_Aurora_0 (copy), v20 (copy), l_CollectionService_0 (copy), v588 (ref), v586 (ref), v34 (copy), l_CurrentCamera_0 (copy), v578 (ref), v47 (copy), v579 (ref), v580 (ref), v584 (ref), v581 (copy), v585 (ref), v582 (copy), v587 (ref), v583 (copy), v316 (ref), l_HumanoidRootPart_0 (copy), v575 (ref), v12 (copy), v576 (ref), l_FindFirstChild_0 (copy), v452 (ref), v453 (ref), v454 (ref), v344 (ref), l_Head_0 (copy), l_Torso_0 (copy), v559 (ref), l_l_Humanoid_0_0 (ref), v591 (ref), v574 (ref), v23 (ref), v24 (ref), v26 (ref), l_TouchEnabled_0 (copy), l_GamepadEnabled_0 (copy), l_workspace_Attribute_3 (copy), l_workspace_Attribute_2 (copy), v562 (ref), v563 (ref), v94 (ref), v55 (ref), v58 (ref), v269 (copy), v564 (ref), l_l_CollectionService_0_Tagged_0 (copy), v565 (ref)
        if v2:FindFirstChild("DelayRespawn") then
            if not l_SkipButton_0.Visible then
                l_SkipButton_0.Visible = true;
            end;
        elseif l_SkipButton_0.Visible then
            v45();
        end;
        if not v343 and v2:GetAttribute("InMech") and v2:FindFirstChild("Mech") then
            v343 = v2:FindFirstChild("Mech");
        end;
        if (l_LocalPlayer_0:GetAttribute("Character") == "Monster" or v2:FindFirstChild("CharExclusion")) and l_LocalPlayer_0:GetAttribute("Unreliable") and (l_Humanoid_0:GetState() == Enum.HumanoidStateType.Freefall or l_LocalPlayer_0:GetAttribute("ForcedReliable")) then
            game.ReplicatedStorage.UnreliableRemoteEvent:FireServer(v2:GetPivot());
        end;
        if v2:FindFirstChild("Double") and not v2:FindFirstChild("Ragdoll") then
            v51(0);
        end;
        if (v577 or game.Lighting.ClockTime ~= 12.302) and not l_LocalPlayer_0:GetAttribute("S_DayNight") and not l_LocalPlayer_0:GetAttribute("S_DayNight") and v590 then
            v590 = false;
            v577 = false;
            for _, v595 in pairs(l_Aurora_0:GetDescendants()) do
                if v595:IsA("Beam") then
                    v20:Create(v595, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                        Brightness = 0
                    }):Play();
                    v595.Enabled = false;
                end;
            end;
            for _, v597 in pairs(l_CollectionService_0:GetTagged("daynightcloudgone")) do
                v597:Destroy();
            end;
            v588 = nil;
            v586 = false;
            v34();
        end;
        if l_LocalPlayer_0:GetAttribute("S_DayNight") and l_CurrentCamera_0.CameraType ~= Enum.CameraType.Scriptable then
            v590 = true;
            local v598 = false;
            if not v577 then
                v598 = true;
            end;
            v577 = true;
            if tick() - v578 > 0.01 then
                v578 = tick();
                game.Lighting.ClockTime = workspace.Terrain.Time.Value;
                local l_ClockTime_1 = game.Lighting.ClockTime;
                v586 = l_ClockTime_1 >= 18 and l_ClockTime_1 <= 24 or l_ClockTime_1 >= 0 and l_ClockTime_1 <= 5.65;
                if v588 ~= v586 then
                    v588 = v586;
                    if v586 then
                        local v600 = Random.new(workspace.Terrain.Time:GetAttribute("Cycle")):NextInteger(1, 10);
                        local l_Folder_0 = Instance.new("Folder");
                        l_Folder_0.Name = "Gone";
                        l_Folder_0:SetAttribute("Slow", true);
                        l_Folder_0:AddTag("daynightcloudgone");
                        l_Folder_0.Parent = workspace.Terrain.Clouds;
                        if v600 == 1 then
                            v47({
                                Goal = "Gaze"
                            });
                            v20:Create(game.Lighting.Atmosphere, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                                Density = 0.213
                            }):Play();
                            local l_Aurora_1 = workspace.Thrown.Aurora;
                            for _, v604 in pairs(l_Aurora_1:GetDescendants()) do
                                if v604:IsA("Beam") then
                                    v604.Brightness = 0;
                                    v604.Enabled = true;
                                    v20:Create(v604, TweenInfo.new(Random.new():NextNumber(7, 14) * 2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                                        Brightness = v604:GetAttribute("Original")
                                    }):Play();
                                end;
                            end;
                        end;
                    else
                        for _, v606 in pairs(l_CollectionService_0:GetTagged("daynightcloudgone")) do
                            v606:Destroy();
                        end;
                        if l_Aurora_0:FindFirstChildWhichIsA("Beam", true).Brightness ~= 0 then
                            v20:Create(game.Lighting.Atmosphere, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                                Density = 0.27
                            }):Play();
                            for _, v608 in pairs(l_Aurora_0:GetDescendants()) do
                                if v608:IsA("Beam") then
                                    v20:Create(v608, TweenInfo.new(Random.new():NextNumber(7, 14) * 1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                                        Brightness = 0
                                    }):Play();
                                end;
                            end;
                            task.delay(21, function() --[[ Line: 3497 ]]
                                -- upvalues: v586 (ref), l_Aurora_0 (ref)
                                if v586 then
                                    return;
                                else
                                    for _, v610 in pairs(l_Aurora_0:GetDescendants()) do
                                        if v610:IsA("Beam") then
                                            v610.Enabled = false;
                                            v610.Brightness = 0;
                                        end;
                                    end;
                                    return;
                                end;
                            end);
                        end;
                    end;
                end;
                game.Lighting.Brightness = math.cos(l_ClockTime_1 * 0.2617993877991494 + 3.141592653589793) * 0.1 + 2;
                v579 = math.cos(l_ClockTime_1 * 0.2617993877991494 + 3.141592653589793) * 20 + 100;
                game.Lighting.OutdoorAmbient = Color3.fromRGB(v579, v579, v579);
                game.Lighting.ShadowSoftness = math.cos(l_ClockTime_1 * 0.5235987755982988) * 0.2 + 0.8;
                v580 = math.clamp(math.ceil(l_ClockTime_1), 1, 24);
                v584 = (v581[v580 % 24 + 1] - v581[v580]) * (l_ClockTime_1 - v580 + 1) + v581[v580];
                v585 = (v582[v580 % 24 + 1] - v582[v580]) * (l_ClockTime_1 - v580 + 1) + v582[v580];
                v587 = (v583[v580 % 24 + 1] - v583[v580]) * (l_ClockTime_1 - v580 + 1) + v583[v580];
                game.Lighting.ColorShift_Top = Color3.fromRGB(v584, v585, v587);
            end;
        end;
        local v611 = tick();
        if v316 then
            if (l_HumanoidRootPart_0.Position - v316.Position).magnitude > 15 then
                v316.CanQuery = false;
            else
                v316.CanQuery = true;
            end;
            if v575 then
                v575 = false;
                for _, v613 in pairs(v316.SurfaceGui.Holder.Frame:GetChildren()) do
                    if v613:IsA("TextButton") then
                        v613.MouseButton1Click:Connect(function() --[[ Line: 3538 ]]
                            -- upvalues: v613 (copy), l_LocalPlayer_0 (ref), v12 (ref)
                            local l_Text_0 = v613.Text;
                            game:GetService("MarketplaceService"):PromptProductPurchase(l_LocalPlayer_0, v12.DonationProducts[string.sub(l_Text_0, 5, #l_Text_0)]);
                        end);
                    end;
                end;
            end;
        end;
        if l_HumanoidRootPart_0.Position.Y < -500 and v576 and l_Humanoid_0.Health > 0 then
            l_Humanoid_0.Health = 0;
        end;
        if not l_FindFirstChild_0(v2, "CrabCamera") then
            if l_Humanoid_0:GetState() == Enum.HumanoidStateType.FallingDown and not l_FindFirstChild_0(v2, "Ragdoll") then
                l_Humanoid_0:ChangeState(Enum.HumanoidStateType.GettingUp);
            end;
            if l_Humanoid_0:GetState() ~= Enum.HumanoidStateType.FallingDown and l_FindFirstChild_0(v2, "Ragdoll") then
                l_Humanoid_0:ChangeState(Enum.HumanoidStateType.FallingDown);
            end;
        elseif l_Humanoid_0:GetState() == Enum.HumanoidStateType.FallingDown then
            l_Humanoid_0:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false);
            if math.random(1, 2) == 1 then
                l_Humanoid_0:ChangeState(Enum.HumanoidStateType.Running);
            else
                l_Humanoid_0:ChangeState(Enum.HumanoidStateType.Landed);
            end;
        end;
        local l_NewMethod_0 = v2:FindFirstChild("NewMethod");
        if l_NewMethod_0 then
            l_NewMethod_0 = l_NewMethod_0.Value;
        else
            l_NewMethod_0 = nil;
        end;
        if l_NewMethod_0 then
            workspace.CurrentCamera.CameraSubject = l_NewMethod_0.Humanoid;
        end;
        local v616 = Vector3.new(v452 + 0, v453 + -1.25, v454 + 0);
        local l_CrabCamera_0 = v2:FindFirstChild("CrabCamera");
        if v344 and v344.Value and v344.Value.Parent then
            v616 = v616 + l_HumanoidRootPart_0.CFrame:toObjectSpace(v344.Value.RootPart.Root.UpperMouth["Bone.002"]["Bone.003"].WorldCFrame).Position;
        elseif l_CrabCamera_0 and l_CrabCamera_0.Value and l_CrabCamera_0.Value.Parent then
            v616 = v616 + l_HumanoidRootPart_0.CFrame:toObjectSpace(l_CrabCamera_0.Value.RootPart.Body.WorldCFrame).Position;
        elseif v343 and v343:GetAttribute("Ready") then
            v616 = v616 + l_HumanoidRootPart_0.CFrame:toObjectSpace(v343.RootPart.MasterBone.Root.UpperTorso.WorldCFrame).Position;
        elseif l_Head_0 and l_Head_0.Parent and l_Torso_0 and l_Torso_0.Parent and not v2:GetAttribute("BreakJointed") then
            v616 = if not not v559 or v2:GetAttribute("NoHeadFollow") then v616 + Vector3.new(0, 1.25, 0, 0) else if l_NewMethod_0 then v616 + l_NewMethod_0.HumanoidRootPart.CFrame:toObjectSpace(l_NewMethod_0.Head.CFrame).p else v616 + l_HumanoidRootPart_0.CFrame:toObjectSpace(l_Head_0.CFrame).p;
        end;
        if v344 and not v344.Parent then
            v344 = nil;
        end;
        if not v2:GetAttribute("NoHeadLerp") and not l_LocalPlayer_0:GetAttribute("Spectating") then
            local l_v2_Attribute_4 = v2:GetAttribute("ClonedChar");
            local l_l_Humanoid_0_1 = l_Humanoid_0;
            local v620 = nil;
            v620 = if l_NewMethod_0 then l_NewMethod_0.PrimaryPart else l_HumanoidRootPart_0;
            local l_NewCam_0 = v2:FindFirstChild("NewCam");
            if l_NewCam_0 then
                local l_Value_0 = l_NewCam_0.Value;
                l_l_Humanoid_0_1 = l_Value_0:FindFirstChildOfClass("Humanoid");
                if l_l_Humanoid_0_1 then
                    v620 = l_Value_0.HumanoidRootPart;
                    l_l_Humanoid_0_0 = l_l_Humanoid_0_1;
                    if workspace.CurrentCamera.CameraSubject ~= l_Value_0.Torso and not v2:FindFirstChild("SkippedEmote") and not v591 then
                        v591 = true;
                        workspace.CurrentCamera.CameraSubject = l_Value_0.Torso;
                    end;
                else
                    l_NewCam_0:Destroy();
                    l_v2_Attribute_4 = nil;
                end;
            elseif not l_NewMethod_0 and workspace.CurrentCamera.CameraType ~= Enum.CameraType.Scriptable and l_Humanoid_0.Health > 0 then
                workspace.CurrentCamera.CameraSubject = l_Humanoid_0;
            end;
            local v623 = 1 - 2.5E-5 ^ v593;
            local v624 = nil;
            v624 = if l_NewMethod_0 then l_NewMethod_0.Humanoid.CameraOffset:lerp(v616, v623) else l_Humanoid_0.CameraOffset:lerp(v616, v623);
            local l_magnitude_0 = (v620.Position - (v620.Position + v624)).magnitude;
            local v626 = v620.CFrame * CFrame.new(Vector3.new(0, 1.5, 0, 0) + v624);
            if not l_v2_Attribute_4 and not l_NewMethod_0 and (v624 ~= v624 or l_magnitude_0 > 1000 or (v626.Position - v620.Position).magnitude > 1000) then
                v624 = Vector3.new();
            end;
            if l_NewMethod_0 then
                l_NewMethod_0.Humanoid.CameraOffset = v624;
            else
                l_Humanoid_0.CameraOffset = v624;
            end;
            if l_l_Humanoid_0_1.Health == 0 and not v2:FindFirstChild("0HpCamBp") and not l_v2_Attribute_4 and not v574 then
                v574 = true;
                game:GetService("RunService").RenderStepped:Connect(function() --[[ Line: 3673 ]]
                    -- upvalues: l_CurrentCamera_0 (ref), v2 (ref), l_l_Humanoid_0_0 (ref)
                    if l_CurrentCamera_0.CameraType == Enum.CameraType.Scriptable or v2:GetAttribute("LetGoOfCamera") or v2:FindFirstChild("SkippedEmote") then
                        return;
                    else
                        local l_l_CurrentCamera_0_0 = l_CurrentCamera_0;
                        l_l_CurrentCamera_0_0.CFrame = l_l_CurrentCamera_0_0.CFrame + l_l_Humanoid_0_0.CameraOffset;
                        return;
                    end;
                end);
            end;
        end;
        if (v23 or v24) and l_Humanoid_0.FloorMaterial == Enum.Material.Air and not v26 then
            local v628 = 0.94;
            if v2:FindFirstChild("DoingEmote") then
                v628 = 0.25;
            end;
            local l_l_HumanoidRootPart_0_0 = l_HumanoidRootPart_0;
            l_l_HumanoidRootPart_0_0.Velocity = l_l_HumanoidRootPart_0_0.Velocity * Vector3.new(v628, 1, v628);
        end;
        if (not l_TouchEnabled_0 and not l_GamepadEnabled_0 or l_workspace_Attribute_3) and (l_workspace_Attribute_2 and v562 and v562 > 30 or l_workspace_Attribute_3) and v611 - v563 > 1 and workspace.DistributedGameTime > 120 and not workspace.Thrown:FindFirstChild("DebrisggbbTf") then
            v47({
                Goal = "FloorMaterial"
            });
        end;
        v563 = v611;
        if v94 then
            local v630 = l_Humanoid_0.MoveDirection:Dot(workspace.CurrentCamera.CFrame.LookVector);
            local v631 = l_Humanoid_0.MoveDirection:Dot(workspace.CurrentCamera.CFrame.RightVector);
            if l_TouchEnabled_0 then
                v631 = 0;
            end;
            if l_Humanoid_0.MoveDirection ~= Vector3.new() and math.abs(v631) < 0.85 and v630 >= -0.1 then
                if not v55 then
                    v55 = true;
                    v58();
                end;
            elseif v55 then
                v55 = false;
                v58();
            end;
            if v55 and not v269.IsPlaying then
                v269:Play();
            end;
        end;
        if (not v24 and not v23 or v2:FindFirstChild("DoingEmote") or v24 and v24:GetAttribute("Endlag")) and not v26 and not l_workspace_Attribute_2 then
            if l_HumanoidRootPart_0.Position.Y > 456.085 and l_HumanoidRootPart_0.Position.Y < 490.147 then
                if v611 - v564 > 2 then
                    v564 = v611;
                    local v632 = false;
                    for _, v634 in pairs(l_l_CollectionService_0_Tagged_0) do
                        if (v634.Position - l_HumanoidRootPart_0.Position).magnitude < 20 then
                            v632 = true;
                            break;
                        else
                            task.wait();
                        end;
                    end;
                    if v632 then
                        if v565 then
                            v47({
                                Goal = "Tree Sava"
                            });
                            local l_BodyVelocity_15 = Instance.new("BodyVelocity");
                            l_BodyVelocity_15.MaxForce = Vector3.new(40000, 40000, 40000, 0);
                            l_BodyVelocity_15.Velocity = l_HumanoidRootPart_0.CFrame.lookVector * -40;
                            l_BodyVelocity_15.Parent = l_HumanoidRootPart_0;
                            game:service("Debris"):AddItem(l_BodyVelocity_15, 0.15);
                            v565 = false;
                            return;
                        else
                            v565 = true;
                            return;
                        end;
                    else
                        v565 = false;
                        return;
                    end;
                end;
            else
                v565 = false;
                return;
            end;
        else
            v565 = false;
        end;
    end);
    local v636 = workspace:FindFirstChild("Total Kills Leaderboard") or workspace.Map:FindFirstChild("Total Kills Leaderboard");
    local function v648() --[[ Line: 3771 ]]
        -- upvalues: v636 (copy), l_LocalPlayer_0 (copy), v405 (copy)
        if not v636 then
            return;
        else
            local v637 = 0;
            local l_l_LocalPlayer_0_Attribute_1 = l_LocalPlayer_0:GetAttribute("Kills");
            local v639 = "A TITLE";
            local v640 = {};
            for v641, v642 in pairs(v636:GetAttributes()) do
                if string.sub(v641, 2, #v641) == "Minimumkills" then
                    table.insert(v640, {
                        v641, 
                        v642
                    });
                end;
            end;
            table.sort(v640, function(v643, v644) --[[ Line: 3787 ]]
                return v643[2] < v644[2];
            end);
            for _, v646 in pairs(v640) do
                if l_l_LocalPlayer_0_Attribute_1 < v646[2] then
                    v637 = v646[1];
                    l_l_LocalPlayer_0_Attribute_1 = v646[2];
                    break;
                end;
            end;
            if v637 ~= "cMinimumkills" then
                v639 = "RANK PROMOTION";
            end;
            local v647 = tonumber(v636:GetAttribute(v637) or 0) + 1 - (l_LocalPlayer_0:GetAttribute("Kills") or 0);
            if v647 <= 0 then
                v636:FindFirstChild("Goal", true).Text = "";
                return;
            else
                v647 = v405(v647);
                v636:FindFirstChild("Goal", true).Text = string.format("<font color=\"rgb(197, 255, 143)\">%s</font> MORE KILLS FOR %s", v647, v639);
                return;
            end;
        end;
    end;
    if v636 then
        v636:GetAttributeChangedSignal("Update"):Connect(v648);
    end;
    l_LocalPlayer_0:GetAttributeChangedSignal("Kills"):Connect(v648);
    l_LocalPlayer_0:GetAttributeChangedSignal("CountdownRanked"):Connect(function() --[[ Line: 3817 ]]
        -- upvalues: l_LocalPlayer_0 (copy), v20 (copy)
        local v649 = game.ReplicatedStorage.Countdown:Clone();
        v649.Parent = l_LocalPlayer_0.PlayerGui;
        shared.sfx({
            SoundId = "rbxassetid://13356393533", 
            Parent = workspace, 
            Name = "Countdown", 
            Volume = 2
        }):Play();
        for v650 = 1, 4 do
            local v651 = v649[v650 ~= 4 and 4 - v650 or "Go"];
            local l_Size_0 = v651.Size;
            v651.Size = UDim2.new(0, 0, 0, 0);
            if v650 < 4 then
                v651.Rotation = math.random(-55, 55);
            end;
            v651.Visible = true;
            v651.ZIndex = v651.ZIndex + 1;
            local v653 = nil;
            v20:Create(v651, TweenInfo.new(0.3, v650 < 4 and Enum.EasingStyle.Back or Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                Size = l_Size_0, 
                Rotation = 0
            }):Play();
            if v650 == 4 then
                v653 = v651:Clone();
                v653.Size = UDim2.new(0, 0, 0, 0);
                v653.Visible = true;
                v653.ZIndex = v653.ZIndex - 1;
                v653.Rotation = 0;
                v653.ImageLabel.ImageTransparency = 0.5;
                v653.Parent = v651.Parent;
                v20:Create(v653, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    Size = l_Size_0
                }):Play();
                v20:Create(v653.ImageLabel, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    Size = UDim2.new(2, 0, 2, 0), 
                    ImageTransparency = 0.9
                }):Play();
            end;
            wait(v650 == 4 and 0.625 or 1);
            if v650 == 4 then
                for _, v655 in pairs({
                    v651, 
                    v653
                }) do
                    v20:Create(v655, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
                        Size = UDim2.new(0, 0, 0, 0)
                    }):Play();
                    task.delay(0.15, function() --[[ Line: 3884 ]]
                        -- upvalues: v655 (copy)
                        v655:Destroy();
                    end);
                end;
            else
                v651:Destroy();
            end;
        end;
    end);
    pcall(function() --[[ Line: 3894 ]]
        -- upvalues: v648 (copy)
        if shared.lastxd then
            shared.lastxd();
            shared.lastxd = nil;
        end;
        v648();
    end);
    if (l_LocalPlayer_0:GetAttribute("DiedTime") or 0) >= 1 then
        local v656 = game.ReplicatedStorage.Resources.Vig:Clone();
        v656.Parent = l_LocalPlayer_0.PlayerGui.ShiftLock;
        local l_v656_0 = v656 --[[ copy: 120 -> 127 ]];
        workspace:GetAttributeChangedSignal("FoundWinner"):Connect(function() --[[ Line: 3904 ]]
            -- upvalues: v20 (copy), l_v656_0 (copy)
            v20:Create(l_v656_0, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                ImageTransparency = 1
            }):Play();
        end);
    end;
    task.delay(0.1, function() --[[ Line: 3911 ]]
        -- upvalues: l_LocalPlayer_0 (copy), v47 (copy)
        if l_LocalPlayer_0:GetAttribute("Teammate") then
            while task.wait(0.25) do
                if (l_LocalPlayer_0:GetAttribute("DiedTime") or 0) >= 2 then
                    local l_Hotbar_0 = l_LocalPlayer_0.PlayerGui:FindFirstChild("Hotbar");
                    if l_Hotbar_0 then
                        l_Hotbar_0.Enabled = false;
                    end;
                end;
                v47({
                    Goal = "Camera CFrame", 
                    CFrame = workspace.CurrentCamera.CFrame
                });
            end;
        end;
    end);
    local v659 = v2:FindFirstChild("IntroBind") or v2:WaitForChild("IntroBind", 2);
    if not v659 then
        return;
    else
        task.delay(0, function() --[[ Line: 3937 ]]
            -- upvalues: v0 (copy)
            if not workspace:GetAttribute("zzz") then
                workspace:SetAttribute("zzz", true);
                print("CLIENT LOADED", tick() - v0);
            end;
        end);
        if v659 then
            local v660 = tick();
            repeat
                if l_Humanoid_0.WalkSpeed > 0 and l_Humanoid_0.MoveDirection ~= Vector3.new() then
                    v47({
                        Goal = "Disable Intro"
                    });
                end;
                task.wait();
            until tick() - v660 > 2.5 or not v659.Parent;
            if tostring(v2) == "YungCrepetics" then
                return;
            else
                local l_ExperienceNotificationService_0 = game:GetService("ExperienceNotificationService");
                local function _() --[[ Line: 3959 ]] --[[ Name: canPromptOptIn ]]
                    -- upvalues: l_ExperienceNotificationService_0 (copy)
                    local l_status_0, l_result_0 = pcall(function() --[[ Line: 3960 ]]
                        -- upvalues: l_ExperienceNotificationService_0 (ref)
                        return l_ExperienceNotificationService_0:CanPromptOptInAsync();
                    end);
                    return l_status_0 and l_result_0;
                end;
                local l_status_1, l_result_1 = pcall(function() --[[ Line: 3960 ]]
                    -- upvalues: l_ExperienceNotificationService_0 (copy)
                    return l_ExperienceNotificationService_0:CanPromptOptInAsync();
                end);
                if l_status_1 and l_result_1 then
                    l_status_1, l_result_1 = pcall(function() --[[ Line: 3968 ]]
                        -- upvalues: l_ExperienceNotificationService_0 (copy)
                        l_ExperienceNotificationService_0:PromptOptIn();
                    end);
                end;
            end;
        end;
        return;
    end;
end;
