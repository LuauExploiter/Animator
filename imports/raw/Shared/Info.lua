-- Script Path: game:GetService("ReplicatedStorage").Info
-- Took 1.53s to decompile.
-- Executor: Delta (1.0.714.1091)

local _ = nil;
local v1 = nil;
local v2 = {};
if not game.Players.LocalPlayer then
    v1 = game:GetService("DataStoreService"):GetDataStore("build_savesA");
end;
local v3 = {
    [1] = Vector3.new(32.069000244140625, 20, 2.7269999980926514, 0), 
    [2] = Vector3.new(32.069000244140625, 5, 2.7269999980926514, 0), 
    [3] = Vector3.new(5, 5, 5, 0)
};
local function _(v4) --[[ Line: 15 ]]
    local v5 = nil;
    if v4.CFrame then
        v5 = Instance.new("Attachment");
        v5.Parent = workspace.Terrain;
        v5.WorldCFrame = v4.CFrame;
        v4.CFrame = nil;
    end;
    local l_Sound_0 = Instance.new("Sound");
    l_Sound_0.SoundGroup = game:GetService("SoundService").Sounds;
    l_Sound_0.Played:connect(function() --[[ Line: 27 ]]
        -- upvalues: l_Sound_0 (copy), v5 (ref)
        l_Sound_0.Ended:connect(function() --[[ Line: 28 ]]
            -- upvalues: l_Sound_0 (ref), v5 (ref)
            game:GetService("Debris"):AddItem(l_Sound_0, 0);
            game:GetService("Debris"):AddItem(v5, 0);
        end);
    end);
    if not v4.RollOffMaxDistance then
        v4.RollOffMaxDistance = 100;
    end;
    for v7, v8 in pairs(v4) do
        l_Sound_0[v7] = v8;
    end;
    if v5 then
        l_Sound_0.Parent = v5;
    end;
    return l_Sound_0;
end;
local _ = nil;
local v11 = nil;
v11 = {
    VCserver = 131048399685555, 
    KJserver = 0, 
    EarlyAccess = "Tech", 
    UFWrequirement = 750, 
    DodgeAnimations = {
        133094662049155, 
        134711731729986, 
        76963965406296, 
        92546791251633, 
        128188725134114, 
        109088632860488, 
        78339272602733, 
        127015697036075
    }, 
    Badges = {
        [1] = 3.057416426456972E15, 
        [10] = 3.114670201603542E15, 
        [100] = 3.006399776257311E15, 
        [1000] = 268490457371003, 
        [10000] = 341084106898320, 
        [100000] = 2.724124286915993E15, 
        [1000000] = 1.257999597959356E15
    }, 
    KeyOffsets = {
        [1] = CFrame.new(6.67572021484375E-5, 2.384185791015625E-7, -3.6912670135498047, -0.965471088886261, -8.742277657347586E-8, 0.26051023602485657, 0.26051023602485657, -4.371138828673793E-8, 0.965471088886261, -7.301689919358978E-8, 1, 6.497661075854921E-8), 
        [2] = CFrame.new(6.67572021484375E-5, 1.2685961723327637, -3.01324462890625, 1, 0, 0, 0, -4.371138828673793E-8, 1, 0, -1, -4.371138828673793E-8), 
        [3] = CFrame.new(0.120067596, 0.759999752, -2.7800312, 1, 0, 0, 0, -4.37113883E-8, 1, 0, -1, -4.37113883E-8), 
        [4] = CFrame.new(6.67572021484375E-5, 0, -2.071981430053711, 1, 0, 0, 0, -4.371138828673793E-8, 1, 0, -1, -4.371138828673793E-8), 
        [5] = CFrame.new(6.67572021E-5, 0.271313667, -2.80003071, 1, 0, 0, 0, -4.37113883E-8, 1, 0, -1, -4.37113883E-8), 
        [6] = CFrame.new(6.67572021E-5, 0.589999676, -2.11003113, 0.979179561, -0.150505424, 0.136218935, -0.134637803, 0.0206945483, 0.990678728, -0.151921526, -0.988392532, -4.33039418E-8), 
        [7] = CFrame.new(6.67572021484375E-5, -0.3000001907348633, -3.000030517578125, 1, 0, 0, 0, -4.371138828673793E-8, 1, 0, -1, -4.371138828673793E-8), 
        [8] = CFrame.new(6.7572022999229375E-6, -1.5006359815597534, -2.6260547637939453, 1, 0, 0, 0, -4.371138828673793E-8, 1, 0, -1, -4.371138828673793E-8), 
        [9] = CFrame.new(6.67572021484375E-5, 0.09999966621398926, -2.9592037200927734, 1, 0, 0, 0, -4.371138828673793E-8, 1, 0, -1, -4.371138828673793E-8), 
        [10] = CFrame.new(6.67572021E-5, -0.839160442, -2.38934708, -1, -8.74227766E-8, 8.74227695E-8, 8.74227766E-8, -4.37113883E-8, 1, -8.74227695E-8, 1, 4.37113954E-8)
    }, 
    DonationProducts = {
        ["1"] = 1774570749, 
        ["10"] = 1774570799, 
        ["100"] = 1774570910, 
        ["1,000"] = 1774570961, 
        ["10,000"] = 1774571012, 
        ["100,000"] = 1774571302, 
        ["1,000,000"] = 1774571398
    }, 
    GetSerial = function(v12) --[[ Line: 90 ]] --[[ Name: GetSerial ]]
        local v13 = Random.new():NextInteger(-10000000000, 10000000000);
        local v14 = math.floor(v12.Position.X) + math.floor(v12.Position.Y) + math.floor(v12.Position.Z);
        local v15 = math.random(-100, 100);
        local v16 = "";
        for _ = 1, Random.new():NextNumber(1, 5) do
            local v18 = string.char(math.random(97, 122));
            if math.random(1, 2) == 1 then
                v18 = v18:upper();
            end;
            v16 = v16 .. v18;
        end;
        local _ = nil;
        if math.random(1, 2) == 1 then
            return tostring(v13 + v14 + v15) .. v16;
        else
            return v16 .. tostring(v13 + v14 + v15);
        end;
    end, 
    ValidKeys = {
        Enum.KeyCode.Q, 
        Enum.KeyCode.B, 
        Enum.KeyCode.ButtonX, 
        Enum.KeyCode.ButtonY, 
        Enum.KeyCode.ButtonB, 
        Enum.KeyCode.ButtonA, 
        Enum.KeyCode.DPadUp, 
        Enum.KeyCode.Space, 
        Enum.KeyCode.W, 
        Enum.KeyCode.A, 
        Enum.KeyCode.S, 
        Enum.KeyCode.D, 
        Enum.KeyCode.F, 
        Enum.KeyCode.G, 
        Enum.KeyCode.V
    }, 
    ValidProperties = {
        "Text", 
        "MeshID", 
        "MeshScale", 
        "MeshTextureID", 
        "TextSize", 
        "TextFont", 
        "TextColor", 
        "TextTransparency", 
        "TextOutline", 
        "EmitLight", 
        "Range", 
        "Brightness", 
        "Anchored", 
        "Collision", 
        "Deadly", 
        "Destructible", 
        "Fragile", 
        "Transparency", 
        "CurrentMoves", 
        "CurrentGears", 
        "Bouncy", 
        "Heals", 
        "ResetsCooldowns", 
        "GivesAwakening", 
        "Checkpoint", 
        "Shadow", 
        "NoAttack"
    }, 
    ValidClasses = {
        "SpawnLocation", 
        "Part"
    }, 
    Limited = {
        {
            ID = 2461465333, 
            Name = "Final Stand"
        }, 
        {
            ID = 2461465736, 
            Name = "Boundless Rage"
        }, 
        {
            ID = 2662391516, 
            Name = "Eternal Seal"
        }, 
        {
            ID = 3234349672, 
            Name = "The Strongest"
        }, 
        {
            ID = 3234351421, 
            Name = "The Fallen"
        }, 
        {
            ID = 3234350785, 
            Name = "Divine Form"
        }, 
        {
            ID = 3234352091, 
            Name = "My Brother"
        }, 
        {
            ID = 3234382059, 
            Name = "Inner Rage"
        }, 
        {
            ID = 3290611874, 
            Name = "Emerge"
        }, 
        {
            ID = 3290612178, 
            Name = "Final Spark"
        }, 
        {
            ID = 3290612035, 
            Name = "True Aura"
        }, 
        {
            ID = 3291156759, 
            Name = "Last Will"
        }, 
        {
            ID = 3290611947, 
            Name = "Shadow Eruption"
        }, 
        {
            ID = 3296113569, 
            Name = "Wombo Combo"
        }
    }, 
    TitleDescriptions = {
        ["Rank Title"] = "A symbol of your standing, determining your rank from C-Class to the elite S-Class.", 
        ["Duel Title"] = "Are you a mere champion or an entire legend? Find out in duels!", 
        ["[The Red Monarch]"] = "Ruler of all things crimson, probably has a throne made of pure vibes.", 
        ["[The Clown]"] = "Master of chaos and bad jokes\226\128\148step into their circus at your own risk.", 
        ["[oatmeal \240\159\144\144]"] = "The undisputed oatmeal champion, the GOAT of breakfast and beyond.", 
        ["awesome programmer"] = "Probably spends more time coding than sleeping\226\128\148respect!", 
        ["ohio animator"] = "Bringing animations straight outta ohio.", 
        Archangel = "Might smite you or bless you\226\128\148depends on their mood.", 
        ["Top G"] = "Certified alpha energy, no debate.", 
        GOOBER = "The biggest goober around, but in the best way possible.", 
        ANIMATOR = "A title for the one who makes limbs move beautifully.", 
        ["[Dragon Sin\240\159\144\137]"] = "A true beast, but probably still sleeps like a lazy lizard.", 
        brah = "brah...", 
        ["\240\159\144\159"] = "Just keep swimming, just keep swimming...", 
        ["\240\159\144\167"] = "Waddles into battle like an absolute legend.", 
        ["The Strongest Penguin"] = "If there was a penguin fight club, this one would run it.", 
        ["The Holy One"] = "Radiates divine energy... or just really likes medieval titles.", 
        ["[The White Heart]"] = "A heart so pure, even snow is jealous.", 
        ["[Moonlights Illumination]"] = "Shining bright in the night, but probably sleeps all day.", 
        ["GOLDEN ARROW"] = "Shoots for the stars\226\128\148probably never misses.", 
        ["News Caster"] = "Breaking news: This person is awesome.", 
        ["The Shadow Monarch"] = "Commanding an army of shadows, but still afraid of the dark.", 
        thug = "A true gangster... but only in video games.", 
        ["\240\159\144\146"] = "Monkey.", 
        ["[The Perfect Lifeform]"] = "Too perfect for this world\226\128\148probably an alien.", 
        ["\240\159\167\159"] = "Might be undead, but still cooler than most people.", 
        ["funny guy"] = "Certified comedian or just someone who laughs at their own jokes.", 
        ["Restless Gambler"] = "Always rolling the dice, even when they shouldn\226\128\153t.", 
        ["3 - 0"] = "Losing so hard, it had to be their title.", 
        ["[ANIMATOR]"] = "Another animator? Y\226\128\153all are multiplying.", 
        ["Guy with Cool Shades"] = "Probably owns at least five pairs of sunglasses.", 
        ["[THE SCULPTOR]"] = "Chiseling masterpieces or just sculpting chaos\226\128\148who knows?", 
        ["[BEST VFX ARTIST]"] = "If your screen is exploding, blame this one.", 
        OWNER = "The one and only...\240\159\141\159", 
        ["Court of the Crimson King"] = "Majestic and probably listens to way too much prog rock.", 
        ["[TESTER]"] = "Breaking things so you don\226\128\153t have to.", 
        ["[Yao Ming]"] = "Towering over the competition, probably dunks on noobs for fun.", 
        ["[\240\159\142\184]"] = "Strumming through life, one epic riff at a time.", 
        ["[\240\159\166\139]"] = "Flutters into chaos with grace\226\128\148don\226\128\153t underestimate the wings.", 
        ["[Strongest Sorcerer Available]"] = "Casting spells so strong, even the game lags.", 
        ["[\240\159\165\128]"] = "Beautifully tragic, like a rose that stabs back.", 
        ["[NERF BOI \226\156\133]"] = "Got nerfed but still flexing that checkmark like a champ.", 
        ["\226\153\166\239\184\143"] = "A rare gem, sparkling under pressure.", 
        ["Reaper of the Arcane Moon"] = "Sounds mysterious, probably just likes edgy names.", 
        ["[CONTRIBUTOR]"] = "They did something cool, and now they have a title to flex.", 
        ["[SFX DEVELOPER]"] = "If it makes a noise in-game, blame this genius.", 
        ["[\240\159\152\142CABEZ\195\147N\240\159\152\142]"] = "Big brain or big head? Only one way to find out.", 
        ["Warrior In White"] = "Fights with style and probably never stains their clothes.", 
        ["The Strongest"] = "Not just strong, but <b>the</b> strongest\226\128\148don\226\128\153t test it.", 
        ["Maestro del Caos"] = "Chaos follows them like a loyal pet.", 
        ["woodstock \240\159\153\143\240\159\153\143"] = "A hippie at heart, spreading peace and good vibes.", 
        ["[SFX DESIGNER]"] = "Crafting booms and zaps that make your ears fall in love.", 
        ["[ANIMATOR \240\159\145\189]"] = "An animator from another planet\226\128\148Earth isn\226\128\153t ready.", 
        ["[DEVELOPER \226\154\146\239\184\143]"] = "The ones who keep the game up and running.", 
        ["[THE ILLUSTRATOR]"] = "If they can see it, they can draw it\226\128\148probably.", 
        fooly = "Not a fool, just fooly\226\128\148big difference.", 
        ["[MODELLER]"] = "Making 3D magic happen, one polygon at a time.", 
        ["[BUILDER]"] = "They build, they conquer, they probably have 100+ projects unfinished.", 
        ["[EL NI\195\145O MAS FUERTE]"] = "The strongest kid, but also the most humble (probably).", 
        ["\240\159\140\159"] = "A star handpicked from the very night sky just for people who have earned it.", 
        ["\226\156\168"] = "A star handpicked from the very night sky just for people who have earned it.", 
        ["\226\173\144"] = "A star handpicked from the very night sky just for people who have earned it.", 
        ["\240\159\146\171"] = "A star handpicked from the very night sky just for people who have earned it.", 
        ["[BEST SCRIPTER OAT]"] = "A decent tiny small contribution that partially improved tsbs camera system, arigato."
    }, 
    PrefabAnimations = {
        72451715583225, 
        93546004428904, 
        129945907044125, 
        132259592388175, 
        95575238948327, 
        106755459092436, 
        102814369422840, 
        75502010126640, 
        85813428590588, 
        95000469063288, 
        100558589307006, 
        137561511768861, 
        100558589307006, 
        112620365240235, 
        108974035701442, 
        111487401271653, 
        88023704984538, 
        99451623559327, 
        110898544937927, 
        75547590335774, 
        77727115892579, 
        77727115892579, 
        72568536674783, 
        127774996303290, 
        132024680948340, 
        137624104134020, 
        76530443909428, 
        88677394781901, 
        105811521074269, 
        120992533725535, 
        96865367566704, 
        73060755698819, 
        79761806706382, 
        79761806706382, 
        140164642047188, 
        71377448806509, 
        90072892650917, 
        74844382738532, 
        136370737633649, 
        113166426814229, 
        105405781808472, 
        98542310119798, 
        77509627104305, 
        114586157428274, 
        108041907008692, 
        75318228407422, 
        110655522279647, 
        87635036278859, 
        107265753683839, 
        137356827034236, 
        88314459925577, 
        85669941767645, 
        116753755471636, 
        116153572280464, 
        114095570398448, 
        138443750790136, 
        94395585475029, 
        86490931396573, 
        77727115892579, 
        113625763890269, 
        70512853043908, 
        116005409979614, 
        81827172076105, 
        111448301389216, 
        85551337049240, 
        115069536837221, 
        95063930300078, 
        135277252555463, 
        70497007064436, 
        88314459925577, 
        85669941767645, 
        137356827034236, 
        110655522279647, 
        87635036278859, 
        107265753683839, 
        75318228407422, 
        108041907008692, 
        114586157428274, 
        94722254043682, 
        77509627104305, 
        92964863598742, 
        123218368431425, 
        90802412666561, 
        128934660661875, 
        18182456608, 
        18182425133, 
        18897115785, 
        18897116845, 
        18897118507, 
        18897119503, 
        18897120868, 
        18897121931, 
        18170032354, 
        18896229321, 
        18896222853, 
        18464351556, 
        18464353914, 
        18464356233, 
        18464358704, 
        18464372850, 
        17857880283, 
        17799224866, 
        17838619895, 
        17838006839, 
        17464644182, 
        17466449380, 
        18440398084, 
        18440406788, 
        17889458563, 
        17889461810, 
        17889471098, 
        17889290569, 
        17278415853, 
        17275798442, 
        17275150809, 
        17275795209, 
        17857788598, 
        17889083042, 
        17858878027, 
        17858878027, 
        17859015788, 
        17859055671, 
        17363256069, 
        16571461202, 
        16572107136, 
        16737255386, 
        16571909908, 
        15124858806, 
        15123665491, 
        15123914491, 
        15129887320, 
        16708190748, 
        16699717165, 
        14900168720, 
        16734584478, 
        15391323441, 
        15487418517, 
        16515503507, 
        16515520431, 
        16515448089, 
        16552234590, 
        15436465829, 
        16062712948, 
        15676072469, 
        14920779925, 
        16139708727, 
        16139000053, 
        16139002631, 
        16139402582, 
        16139108718, 
        17824510628, 
        17824512914, 
        17824514728, 
        17824518620, 
        14901894832, 
        15436218047, 
        15436668469, 
        16057411888, 
        16082123712, 
        15271263467, 
        15145462680, 
        15510840258, 
        15520132233, 
        15290930205, 
        14004222985, 
        13997092940, 
        15279910941, 
        15334974550, 
        14001963401, 
        15295895753, 
        15295336270, 
        15259161390, 
        15240216931, 
        15240176873, 
        15162694192, 
        14136436157, 
        14003607057, 
        14798721934, 
        14798608838, 
        14705929107, 
        13380255751, 
        14875667895, 
        14048285180, 
        14048349132, 
        14712547902, 
        14048336539, 
        14719290328, 
        14701242661, 
        14809854900, 
        14809836765, 
        12983333733, 
        14351441234, 
        13556985475, 
        14374357351, 
        13927612951, 
        13643152947, 
        13634395775, 
        14542032218, 
        13639700348, 
        14057231976, 
        14046756619, 
        14004235777, 
        14527225892, 
        14733282425, 
        14351441234, 
        14348269600, 
        14347157007, 
        14967219354, 
        14348708797, 
        14349470649, 
        14299135500, 
        14346824304, 
        13876406148, 
        13814873045, 
        13813450889, 
        125863680384625, 
        13813448561, 
        13814919604, 
        13813955149, 
        13632347366, 
        13632671563, 
        13875769358, 
        13881335713, 
        13875169992, 
        13633468484, 
        13037862984, 
        13560306510, 
        13146710762, 
        13309500827, 
        13377153603, 
        13497875049, 
        13630786846, 
        13631554970, 
        13499771836, 
        13370310513, 
        13390230973, 
        13378751717, 
        13378708199, 
        13501296372, 
        13379003796, 
        13362587853, 
        13376962659, 
        13309500827, 
        13376869471, 
        13362587853, 
        13365849295, 
        13083332742, 
        13491635433, 
        13296577783, 
        13295919399, 
        13295936866, 
        13532562418, 
        13532600125, 
        13532604085, 
        13294471966, 
        13294790250, 
        123005629431309, 
        100059874351664, 
        104895379416342, 
        134775406437626, 
        12510170988, 
        10468665991, 
        10479335397, 
        10466974800, 
        10471478869, 
        12772543293, 
        12684390285, 
        12296882427, 
        12272894215, 
        12342141464, 
        10471336737, 
        10470104242, 
        10503381238, 
        11365563255, 
        10469493270, 
        10469630950, 
        10469639222, 
        10469643643, 
        10480796021, 
        10480793962, 
        10491993682, 
        11343318134, 
        13785666020, 
        12832023590, 
        12832505612, 
        12830917034, 
        12296882427, 
        12296113986, 
        12307656616, 
        12309835105, 
        12447247483, 
        13784794366, 
        13813099821, 
        12273188754, 
        12272894215, 
        12618271998, 
        12463072679, 
        12467789963, 
        12460977270, 
        13603396939, 
        12461540679, 
        71060716968719, 
        114763770211803, 
        105811521074269, 
        88677394781901, 
        12502664044, 
        12509505723, 
        12534735382, 
        12971270638
    }, 
    Vaulted = {
        "Freezing Path", 
        "Frost Forge", 
        "Multi Ice Slash", 
        "Permafrost", 
        "Judgement Chain", 
        "Double Trouble", 
        "Snowball", 
        "Flame M1", 
        "Downslam Finisher", 
        "Forward Dash Attack", 
        "Trashcan", 
        "Seismic Fist", 
        "Rising Fist", 
        "Ice Hammer", 
        "Last BreathOld", 
        "Ice HammerOld", 
        "Pinpoint Cut Air Variation Finisher"
    }, 
    Skillsets = {
        Pirate = {
            Base = {
                "Sweep", 
                "Shatter", 
                "Blast Clutch", 
                "Tremmor", 
                "Spine Splitter"
            }, 
            Ultimate = {}, 
            Glow = Color3.new(0.0745098, 0.521569, 1), 
            Order = 1, 
            ID = 134261571085995, 
            Name = "The Strongest Pirate", 
            UltimateName = "YOU'RE ALL DOOMED!", 
            Hero = true
        }, 
        KJ = {
            Base = {
                "Ravage", 
                "Swift Sweep", 
                "Collateral Ruin", 
                "Spiraling Storm"
            }, 
            Ultimate = {
                "Stoic Bomb", 
                "20-20-20 Dropkick", 
                "Five Seasons", 
                "Unlimited Flex Works"
            }, 
            Glow = Color3.new(1, 0.4, 0.411765), 
            Order = 1, 
            ID = 17140853847, 
            Name = "KJ", 
            UltimateName = "20 SERIES", 
            Hero = true
        }, 
        Bald = {
            Base = {
                "Normal Punch", 
                "Consecutive Punches", 
                "Shove", 
                "Uppercut"
            }, 
            Ultimate = {
                "Death Counter", 
                "Table Flip", 
                "Serious Punch", 
                "Omni Directional Punch"
            }, 
            Indicator = {
                Sound = "rbxassetid://14405177812", 
                Volume = 1
            }, 
            Glow = Color3.new(1, 0.52549, 0.533333), 
            Order = 1, 
            ID = 15114667107, 
            UltimateTime = nil, 
            UltimateName = "SERIOUS MODE", 
            Name = "The Strongest Hero", 
            Hero = true
        }, 
        Hunter = {
            Base = {
                "Flowing Water", 
                "Lethal Whirlwind Stream", 
                "Hunter's Grasp", 
                "Prey's Peril"
            }, 
            Ultimate = {
                "Water Stream Cutting Fist", 
                "The Final Hunt", 
                "Rock Splitting Fist", 
                "Crushed Rock"
            }, 
            Indicator = {
                Sound = "rbxassetid://14405177437", 
                Volume = 0.75
            }, 
            Mastery = {
                "Monster"
            }, 
            Glow = Color3.new(0.364706, 0.745098, 1), 
            Order = 2, 
            ID = 15124465439, 
            UltimateTime = 42.5, 
            UltimateName = "RAMPAGE", 
            Name = "Hero Hunter", 
            Hero = false
        }, 
        Monster = {
            Base = {
                "Doom Dive", 
                "Crowd Buster", 
                "Hammer Heel", 
                "Binding Cloth"
            }, 
            Ultimate = {
                "Hunter's Mark"
            }, 
            Indicator = {
                Sound = "rbxassetid://14405177437", 
                Volume = 0.75
            }, 
            Glow = Color3.new(1, 0.0823529, 0.219608), 
            IsMastery = true, 
            Order = 15, 
            ID = 92669838586269, 
            UltimateTime = 42.5, 
            UltimateName = "LIMIT BREAKER", 
            Name = "Monster Form", 
            Hero = false
        }, 
        Purple = {
            Base = {
                "Bullet Barrage", 
                "Vanishing Kick", 
                "Whirlwind Drop", 
                "Head First"
            }, 
            Ultimate = {
                "Grand Fissure", 
                "Twin Fangs", 
                "Earth Splitting Strike", 
                "Last Breath"
            }, 
            Indicator = {
                Sound = "rbxassetid://18435612327", 
                Volume = 0.75
            }, 
            Glow = Color3.new(0.6, 0.564706, 1), 
            Order = 8, 
            ID = 18434673438, 
            UltimateTime = 42.5, 
            UltimateName = "DRAGON 'S DESCENT", 
            Name = "Martial Artist", 
            Hero = true
        }, 
        Cyborg = {
            Base = {
                "Machine Gun Blows", 
                "Ignition Burst", 
                "Blitz Shot", 
                "Jet Dive"
            }, 
            Ultimate = {
                "Thunder Kick", 
                "Speedblitz Dropkick", 
                "Flamewave Cannon", 
                "Incinerate"
            }, 
            Indicator = {
                Sound = "rbxassetid://14405177937", 
                Volume = 0.75
            }, 
            Glow = Color3.new(1, 0.4, 0.411765), 
            Order = 3, 
            ID = 15143528856, 
            UltimateTime = 43, 
            UltimateName = "MAXIMUM ENERGY OUTPUT", 
            Name = "Destructive Cyborg", 
            Hero = true
        }, 
        Ninja = {
            Base = {
                "Flash Strike", 
                "Whirlwind Kick", 
                "Scatter", 
                "Explosive Shuriken"
            }, 
            Ultimate = {
                "Twinblade Rush", 
                "Straight On", 
                "Carnage", 
                "Fourfold Flashstrike"
            }, 
            Indicator = {
                Sound = "rbxassetid://14405177701", 
                Volume = 0.75
            }, 
            Glow = Color3.new(0.6, 0.564706, 1), 
            Order = 4, 
            ID = 15114672498, 
            UltimateTime = 43, 
            UltimateName = "CAN YOU EVEN SEE ME?", 
            Name = "Deadly Ninja", 
            Hero = false
        }, 
        Batter = {
            Base = {
                "Homerun", 
                "Beatdown", 
                "Grand Slam", 
                "Foul Ball"
            }, 
            Ultimate = {
                "Savage Tornado", 
                "Brutal Beatdown", 
                "Strength Difference", 
                "Death Blow"
            }, 
            Order = 5, 
            Indicator = {
                Sound = "rbxassetid://14405177575", 
                Volume = 1
            }, 
            Glow = Color3.new(1, 1, 1), 
            ID = 15143529209, 
            UltimateTime = 43, 
            UltimateName = "PUMPED UP", 
            Name = "Brutal Demon", 
            Hero = true
        }, 
        Blade = {
            Base = {
                "Quick Slice", 
                "Atmos Cleave", 
                "Pinpoint Cut", 
                "Split Second Counter"
            }, 
            Ultimate = {
                "Sunset", 
                "Solar Cleave", 
                "Sunrise", 
                "Atomic Slash"
            }, 
            Indicator = {
                Sound = "rbxassetid://15398355537", 
                Volume = 1
            }, 
            Glow = Color3.new(1, 0.235294, 0), 
            Order = 6, 
            ID = 15143528539, 
            UltimateTime = 43, 
            UltimateName = "SCORCHING BLADE", 
            Name = "Blade Master", 
            Hero = true
        }, 
        Esper = {
            Base = {
                "Crushing Pull", 
                "Windstorm Fury", 
                "Stone Coffin", 
                "Expulsive Push"
            }, 
            Ultimate = {
                "Cosmic Strike", 
                "Psychic Ricochet", 
                "Terrible Tornado", 
                "Sky Snatcher"
            }, 
            Indicator = {
                Sound = "rbxassetid://16136683894", 
                Volume = 1
            }, 
            Glow = Color3.new(0.490196, 1, 0.52549), 
            Order = 7, 
            ID = 16136325038, 
            UltimateTime = 43, 
            UltimateName = "BERSERK", 
            Name = "Wild Psychic", 
            Hero = true
        }, 
        Tech = {
            Base = {
                "Weboom", 
                "Plasma Cannon", 
                "Trinity Tear", 
                "Twin Burst"
            }, 
            Ultimate = {
                "Photon Edge"
            }, 
            Indicator = {
                Sound = "rbxassetid://16136683894", 
                Volume = 1
            }, 
            Glow = Color3.new(1, 0.627451, 0.635294), 
            Order = 8, 
            ID = 113596928331434, 
            UltimateTime = 43, 
            UltimateName = "IRON GIANT", 
            Name = "Tech Prodigy", 
            Hero = true
        }, 
        ["Crab Boss"] = {
            Base = {}, 
            Ultimate = {}, 
            Glow = Color3.new(1, 0.52549, 0.533333), 
            Order = 9, 
            ID = 18906334004, 
            Name = "Crab Boss", 
            UltimateName = "?", 
            Hero = true
        }, 
        Sorcerer = {
            Base = {
                "Infinity", 
                "Repulse", 
                "Erase", 
                "Attract"
            }, 
            Ultimate = {}, 
            Glow = Color3.new(0.364706, 0.745098, 1), 
            Order = 10, 
            ID = 15143528348, 
            Name = "Sorcerer", 
            UltimateName = "SORCERER", 
            Hero = true
        }
    }, 
    BaseM1 = {
        Fist = {
            10469493270, 
            10469630950, 
            10469639222, 
            10469643643
        }, 
        Bat = {
            14004222985, 
            13997092940, 
            14001963401, 
            14136436157
        }, 
        Ninjato = {
            13370310513, 
            13390230973, 
            13378751717, 
            13378708199
        }, 
        Katana = {
            15259161390, 
            15240216931, 
            15240176873, 
            15162694192
        }, 
        LightningFist = {
            89044067797964, 
            74334194837918, 
            94353845974131, 
            80601239139774
        }, 
        HunterFist = {
            13532562418, 
            13532600125, 
            13532604085, 
            13294471966
        }, 
        CyborgFist = {
            13491635433, 
            13296577783, 
            13295919399, 
            13295936866
        }, 
        EsperFist = {
            16515503507, 
            16515520431, 
            16515448089, 
            16552234590
        }, 
        KJFist = {
            17325510002, 
            17325513870, 
            17325522388, 
            17325537719
        }, 
        PurpleFist = {
            17889458563, 
            17889461810, 
            17889471098, 
            17889290569
        }, 
        Uppercut = {
            13379003796, 
            10503381238
        }, 
        Downslam = {
            10470104242
        }, 
        Tech = {
            123005629431309, 
            100059874351664, 
            104895379416342, 
            134775406437626
        }
    }, 
    PirateWhitelist = {
        747447782, 
        3350014406, 
        1001242712
    }, 
    ConceptWhitelist = {
        747447782, 
        3350014406
    }, 
    Admins = {
        0, 
        4041635170, 
        1241352401, 
        3350014406, 
        3891230967, 
        681405668, 
        7832903582, 
        1001242712, 
        138249029, 
        3414432341, 
        339633571, 
        1059541187, 
        995625009, 
        1148708686, 
        33963357, 
        58214194, 
        747447782, 
        2039323684, 
        430966809, 
        202693941, 
        3673381374
    }, 
    Intros = {
        Ninja = {
            id = 15957361339, 
            sound = {
                "rbxassetid://15956555583", 
                1
            }
        }, 
        Purple = {
            id = 18435303746, 
            sound = {
                "rbxassetid://18435468901", 
                1
            }
        }, 
        KJ = {
            id = 17325160621, 
            sound = {
                "rbxassetid://17325174223", 
                1
            }
        }, 
        Batter = {
            id = 15957371124, 
            sound = {
                "rbxassetid://15956568211", 
                1
            }
        }, 
        Hunter = {
            id = 15957376722, 
            sound = {
                "rbxassetid://15956575080", 
                0.75
            }
        }, 
        Cyborg = {
            id = 15957374019, 
            sound = {
                "rbxassetid://15958081297", 
                2
            }
        }, 
        Bald = {
            id = 15957366251, 
            sound = {
                "rbxassetid://15956666275", 
                3
            }
        }, 
        Blade = {
            id = 15983615423, 
            sound = {
                "rbxassetid://15983408349", 
                1
            }
        }, 
        Esper = {
            id = 16136144568, 
            sound = {
                "rbxassetid://16136569377", 
                2
            }
        }, 
        Tech = {
            id = 119169968232874, 
            sound = {
                "rbxassetid://89798295291739", 
                3
            }
        }
    }, 
    Special = {
        [138249029] = "CursedArmParticle", 
        [747447782] = "SpecOutline", 
        [3350014406] = "SpecOutline", 
        [994994173] = "CursedArmParticle", 
        [1001242712] = "SpecOutline", 
        [2039323684] = "BlackWhiteAura"
    }, 
    Cosmetics = {
        {
            "Special Stuff", 
            10000000000, 
            "rbxassetid://17140774329", 
            "aura"
        }, 
        {
            "Custom Cape", 
            2000000000, 
            "rbxassetid://17140755709", 
            "cosmetic"
        }, 
        {
            "Guild Cape", 
            1000000, 
            "rbxassetid://17139038442", 
            "cosmetic"
        }, 
        {
            "Void Aura", 
            35700, 
            "rbxassetid://90444878605558", 
            "aura"
        }, 
        {
            "Frozen Aura", 
            33500, 
            "rbxassetid://91279017187121", 
            "aura"
        }, 
        {
            "Love Aura", 
            32750, 
            "rbxassetid://137099752355413", 
            "aura"
        }, 
        {
            "Flower Aura", 
            31500, 
            "rbxassetid://107246440880503", 
            "aura"
        }, 
        {
            "Shadow Aura", 
            20000, 
            "rbxassetid://17855955602", 
            "aura"
        }, 
        {
            "Gold Aura", 
            30000, 
            "rbxassetid://83245974392432", 
            "aura"
        }, 
        {
            "Midnight Aura", 
            25000, 
            "rbxassetid://75022935096767", 
            "aura"
        }, 
        {
            "Burning Aura", 
            10000, 
            "rbxassetid://17855957730", 
            "aura"
        }, 
        {
            "Crimson Aura", 
            9500, 
            "rbxassetid://115711460384947", 
            "aura"
        }, 
        {
            "Graceful Aura", 
            9000, 
            "rbxassetid://17855866639", 
            "aura"
        }, 
        {
            "Glitch Aura", 
            8250, 
            "rbxassetid://88754428841002", 
            "aura"
        }, 
        {
            "Colorful Aura", 
            7500, 
            "rbxassetid://116175503488055", 
            "aura"
        }, 
        {
            "Error Aura", 
            6700, 
            "rbxassetid://102105195737574", 
            "aura"
        }, 
        {
            "Stench Aura", 
            5900, 
            "rbxassetid://17855866449", 
            "aura"
        }, 
        {
            "Slinky", 
            20000, 
            "rbxassetid://18183755570", 
            "cosmetic"
        }, 
        {
            "Ruler Cape", 
            17500, 
            "rbxassetid://70455910113728", 
            "cosmetic"
        }, 
        {
            "Webbed Cape", 
            15000, 
            "rbxassetid://82572097923242", 
            "cosmetic"
        }, 
        {
            "Warden Cape", 
            12500, 
            "rbxassetid://100803534854178", 
            "cosmetic"
        }, 
        {
            "Desert Cape", 
            10500, 
            "rbxassetid://18182263066", 
            "cosmetic"
        }, 
        {
            "Divine Wheel", 
            10000, 
            "rbxassetid://17824308335", 
            "cosmetic"
        }, 
        {
            "Spiky Cape", 
            9500, 
            "rbxassetid://18182263573", 
            "cosmetic"
        }, 
        {
            "Fur Cape", 
            9000, 
            "rbxassetid://18182263767", 
            "cosmetic"
        }, 
        {
            "Blood Scarf", 
            8500, 
            "rbxassetid://18182262939", 
            "cosmetic"
        }, 
        {
            "Torn Headband", 
            8000, 
            "rbxassetid://18182263365", 
            "cosmetic"
        }, 
        {
            "Headband", 
            7500, 
            "rbxassetid://18182263961", 
            "cosmetic"
        }, 
        {
            "Bandage Wrap", 
            7000, 
            "rbxassetid://17824222445", 
            "cosmetic"
        }, 
        {
            "Waist Sash", 
            6600, 
            "rbxassetid://17838057309", 
            "cosmetic"
        }, 
        {
            "Leg Iron", 
            6200, 
            "rbxassetid://17846070680", 
            "cosmetic"
        }, 
        {
            "White Scarf", 
            900, 
            "rbxassetid://17856005701", 
            "cosmetic"
        }, 
        {
            "Spiral Cloth", 
            0, 
            "rbxassetid://82034185336002", 
            "cosmetic"
        }, 
        {
            "Ki Aura", 
            4000, 
            "rbxassetid://17140585525", 
            "aura", 
            true
        }, 
        {
            "Dark Aura", 
            5600, 
            "rbxassetid://17140578572", 
            "aura", 
            true
        }, 
        {
            "Lightning Aura", 
            4600, 
            "rbxassetid://17140620713", 
            "aura", 
            true
        }, 
        {
            "Worn Cape", 
            5200, 
            "rbxassetid://17139121832", 
            "cosmetic", 
            true
        }, 
        {
            "Tattered Cape", 
            4300, 
            "rbxassetid://17138954104", 
            "cosmetic", 
            true
        }, 
        {
            "Torn Cape", 
            3600, 
            "rbxassetid://17138960792", 
            "cosmetic", 
            true
        }, 
        {
            "White Cape", 
            3200, 
            "rbxassetid://17138990307", 
            "cosmetic", 
            true
        }, 
        {
            "Conqueror Cape", 
            2800, 
            "rbxassetid://17138970538", 
            "cosmetic", 
            true
        }, 
        {
            "Jagged Cape", 
            2000, 
            "rbxassetid://17139003111", 
            "cosmetic", 
            true
        }, 
        {
            "Royal Cape", 
            1200, 
            "rbxassetid://17139029983", 
            "cosmetic", 
            true
        }, 
        {
            "Purple Scarf", 
            600, 
            "rbxassetid://17139021808", 
            "cosmetic", 
            true
        }, 
        {
            "Bandages", 
            300, 
            "rbxassetid://17139537917", 
            "cosmetic", 
            true
        }, 
        {
            "Long Sash", 
            150, 
            "rbxassetid://17139017721", 
            "cosmetic", 
            true
        }, 
        {
            "Short Sash", 
            75, 
            "rbxassetid://17139012868", 
            "cosmetic", 
            true
        }, 
        {
            "Red Gloves", 
            25, 
            "rbxassetid://17138543887", 
            "cosmetic", 
            true
        }, 
        {
            "Blocky Body", 
            -1, 
            "rbxassetid://17140578733", 
            "cosmetic"
        }
    }, 
    EmoteProducts = {
        {
            id = 1556594193, 
            count = 1
        }, 
        {
            id = 1816926141, 
            count = 5
        }, 
        {
            id = 1816926292, 
            count = 10
        }, 
        {
            id = 1816928543, 
            count = 50
        }
    }, 
    CosmeticProducts = {
        {
            id = 1849123672, 
            count = 1
        }, 
        {
            id = 1849161369, 
            count = 3
        }, 
        {
            id = 1849161479, 
            count = 5
        }
    }, 
    GiftableGamepasses = {
        [128278127] = {
            1615573088, 
            1
        }, 
        [229966673] = {
            1615575224, 
            10
        }, 
        [136459121] = {
            1615574560, 
            2
        }, 
        [267162259] = {
            1661543978, 
            3
        }, 
        [267169928] = {
            1661547676, 
            9
        }, 
        [793925178] = {
            1816898588, 
            8
        }, 
        [810906533] = {
            1827272891, 
            6
        }, 
        [1556594193] = {
            1669040587, 
            7, 
            true
        }, 
        [1816926141] = {
            2023218528, 
            4, 
            true
        }, 
        [1816926292] = {
            2023240526, 
            5, 
            true
        }, 
        [1816928543] = {
            2675879684, 
            11, 
            true
        }
    }, 
    VIPServerButtons = {
        "Command Target", 
        "Respawn", 
        "Bring", 
        "Heal", 
        "Spawn Dummy", 
        "Spawn Attacking Dummy", 
        "Spawn Blocking Dummy", 
        "Spawn Outsider", 
        "Spawn Crab", 
        "Spawn Meteor", 
        "Clear Entities", 
        "Build Mode", 
        "Skill Builder", 
        "Start Round", 
        "End Round", 
        "Round Teams", 
        "Round Type", 
        "Give Awakening", 
        "Remove Awakening", 
        "Activate Awakening", 
        "Gravity Multiplier", 
        "Damage Multiplier", 
        "Health Multiplier", 
        "Regen Multiplier", 
        "Speed Multiplier", 
        "Storm Speed Multiplier", 
        "Storm Damage Multiplier", 
        "Reset Storm", 
        "Remove Leaderboards", 
        "Shutdown Server", 
        "Refresh Server"
    }, 
    Order = {
        "-- PRIVATE SERVER+ --", 
        "Command Targets", 
        "Effects Apply To", 
        "Menu Size", 
        "-- GENERAL --", 
        "Godmode", 
        "Heal", 
        "Respawn", 
        "Bring", 
        "-- DUMMIES --", 
        "Spawn Attacking Dummy", 
        "Spawn Blocking Dummy", 
        "Spawn Dummy", 
        "Spawn Outsider", 
        "Spawn Crab", 
        "Spawn Meteor", 
        "Clear Entities", 
        "-- TOGGLES --", 
        "Teleport Dash", 
        "No Respawn", 
        "No Dash Cooldown", 
        "No Movement", 
        "No Cooldown", 
        "No Ragdoll", 
        "No Fatigue", 
        "No Attack", 
        "No Stun", 
        "No Block", 
        "No Reset", 
        "-- AWAKENING --", 
        "Give Awakening", 
        "Remove Awakening", 
        "Activate Awakening", 
        "Infinite Awakening", 
        "Instant Awakening", 
        "No Awakening", 
        "-- MULTIPLIERS --", 
        "Attack Speed Multiplier", 
        "Health Multiplier", 
        "Damage Multiplier", 
        "Regen Multiplier", 
        "Speed Multiplier", 
        "Gravity Multiplier", 
        "-- MOVESET --", 
        "Random Moveset", 
        "Dual Moveset", 
        "Finishers Only", 
        "-- MAP --", 
        "Build Mode", 
        "Skill Builder", 
        "Hide Map", 
        "-- GAMEMODE --", 
        "Round Type", 
        "Round Teams", 
        "Start Round", 
        "End Round", 
        "-- MISC --", 
        "Storm Active", 
        "Reset Storm", 
        "Storm Speed Multiplier", 
        "Storm Damage Multiplier", 
        "-- SERVER --", 
        "Lock Server", 
        "Kick On Death", 
        "Shutdown Server", 
        "Refresh Server"
    }, 
    VIPServerPowers = {
        ["Build Mode"] = function(_, v21) --[[ Line: 1420 ]]
            local l_CollectionService_0 = game:GetService("CollectionService");
            local l_PlayerFromCharacter_0 = game.Players:GetPlayerFromCharacter(v21);
            if not v21:FindFirstChild("buildingg") then
                local l_ForceField_0 = Instance.new("ForceField");
                l_ForceField_0:SetAttribute("Infinity", true);
                local l_ForceField_1 = Instance.new("ForceField");
                l_ForceField_1.Name = "AbsoluteImmortal";
                l_ForceField_1.Visible = false;
                l_ForceField_1:SetAttribute("Infinity", true);
                l_ForceField_0.Name = "VisibleFFfluy";
                l_ForceField_0.Visible = false;
                l_CollectionService_0:AddTag(l_ForceField_0, "VisibleFF" .. l_PlayerFromCharacter_0.Name);
                l_ForceField_0.Parent = l_PlayerFromCharacter_0.Character;
                l_ForceField_1.Parent = l_PlayerFromCharacter_0.Character;
                shared.bindDeletion(l_ForceField_1, l_ForceField_0);
                local l_Folder_0 = Instance.new("Folder");
                l_Folder_0.Name = "buildingg";
                l_Folder_0.Parent = l_PlayerFromCharacter_0.Character;
                l_CollectionService_0:AddTag(l_Folder_0, "VisibleFF" .. l_PlayerFromCharacter_0.Name);
                local l_Highlight_0 = Instance.new("Highlight");
                l_Highlight_0.Name = "flyhighlight";
                l_Highlight_0.FillColor = Color3.fromRGB(1, 175, 255);
                l_Highlight_0.FillTransparency = 0.8;
                l_Highlight_0.OutlineTransparency = 1;
                l_CollectionService_0:AddTag(l_Highlight_0, "VisibleFF" .. l_PlayerFromCharacter_0.Name);
                l_Highlight_0.Parent = l_PlayerFromCharacter_0.Character;
                l_PlayerFromCharacter_0:SetAttribute("oppedbefore", true);
                game.ReplicatedStorage.Replication:FireClient(l_PlayerFromCharacter_0, {
                    Effect = "Fly Start", 
                    build = true
                });
                return;
            else
                for _, v29 in pairs(l_CollectionService_0:GetTagged("VisibleFF" .. l_PlayerFromCharacter_0.Name)) do
                    v29:Destroy();
                end;
                game.ReplicatedStorage.Replication:FireClient(l_PlayerFromCharacter_0, {
                    Effect = "Fly End", 
                    buildend = true
                });
                return;
            end;
        end, 
        ["Skill Builder"] = function(_, v31) --[[ Line: 1464 ]]
            local l_PlayerFromCharacter_1 = game.Players:GetPlayerFromCharacter(v31);
            local l_Craft_0 = l_PlayerFromCharacter_1.PlayerGui:FindFirstChild("Craft");
            if l_Craft_0 then
                l_Craft_0:Destroy();
                return;
            else
                game.ServerStorage.Craft:Clone().Parent = l_PlayerFromCharacter_1.PlayerGui;
                return;
            end;
        end, 
        ["Start Round"] = function(_) --[[ Line: 1474 ]]
            workspace:SetAttribute("RoundOngoing", true);
        end, 
        ["End Round"] = function(_) --[[ Line: 1478 ]]
            workspace:SetAttribute("RoundOngoing", false);
        end, 
        ["Storm Speed Multiplier"] = function(v36) --[[ Line: 1482 ]]
            workspace:SetAttribute("StormSpeedMultiplier", v36);
        end, 
        ["Reset Storm"] = function(_) --[[ Line: 1486 ]]
            shared.stormreset();
        end, 
        ["Storm Damage Multiplier"] = function(v38) --[[ Line: 1490 ]]
            workspace:SetAttribute("StormDamageMultiplier", v38);
        end, 
        ["Storm Active"] = function(v39) --[[ Line: 1494 ]]
            workspace:SetAttribute("StormActive", v39);
        end, 
        ["Refresh Server"] = function(_, _) --[[ Line: 1498 ]]
            local v42 = game:GetService("TeleportService"):ReserveServer(game.PlaceId);
            game:GetService("TeleportService"):TeleportToPrivateServer(game.PlaceId, v42, game:GetService("Players"):GetPlayers(), nil, {
                "newps " .. os.time() .. " " .. workspace:GetAttribute("VIPServer")
            });
        end, 
        ["Hide Map"] = function(v43, _) --[[ Line: 1506 ]]
            workspace:SetAttribute("HideMap", v43);
            for _, v46 in pairs({
                "Map", 
                "Summermap"
            }) do
                local l_workspace_FirstChild_0 = workspace:FindFirstChild(v46);
                if #l_workspace_FirstChild_0:GetChildren() == 0 then
                    game:GetService("Debris"):AddItem(l_workspace_FirstChild_0, 0);
                    game.Lighting[v46].Parent = workspace;
                else
                    l_workspace_FirstChild_0.Parent = game.Lighting;
                    local l_Folder_1 = Instance.new("Folder");
                    l_Folder_1.Name = v46;
                    l_Folder_1.Parent = workspace;
                end;
            end;
        end, 
        ["Give Awakening"] = function(_, v50) --[[ Line: 1547 ]]
            local l_workspace_Attribute_0 = workspace:GetAttribute("CommandTarget");
            local l_Players_0 = game.Players:GetPlayers();
            if l_workspace_Attribute_0 == 2 then
                table.remove(l_Players_0, table.find(l_Players_0, game.Players:GetPlayerFromCharacter(v50)));
            elseif l_workspace_Attribute_0 == 3 then
                l_Players_0 = {
                    game.Players:GetPlayerFromCharacter(v50)
                };
            end;
            for _, v54 in pairs(l_Players_0) do
                v54:SetAttribute("DamageNeed", 1000);
                v54:SetAttribute("Ultimate", 100);
            end;
        end, 
        Heal = function(_, v56) --[[ Line: 1562 ]]
            local l_workspace_Attribute_1 = workspace:GetAttribute("CommandTarget");
            local l_Children_0 = workspace.Live:GetChildren();
            if l_workspace_Attribute_1 == 2 then
                table.remove(l_Children_0, table.find(l_Children_0, v56));
            elseif l_workspace_Attribute_1 == 3 then
                l_Children_0 = {
                    v56
                };
            end;
            for _, v60 in pairs(l_Children_0) do
                local l_Humanoid_0 = v60:FindFirstChildOfClass("Humanoid");
                if l_Humanoid_0 then
                    l_Humanoid_0.Health = 2000000000;
                end;
            end;
        end, 
        ["Remove Awakening"] = function(_, v63) --[[ Line: 1579 ]]
            local l_workspace_Attribute_2 = workspace:GetAttribute("CommandTarget");
            local l_Players_1 = game.Players:GetPlayers();
            if l_workspace_Attribute_2 == 2 then
                table.remove(l_Players_1, table.find(l_Players_1, game.Players:GetPlayerFromCharacter(v63)));
            elseif l_workspace_Attribute_2 == 3 then
                l_Players_1 = {
                    game.Players:GetPlayerFromCharacter(v63)
                };
            end;
            for _, v67 in pairs(l_Players_1) do
                v67:SetAttribute("Ultimate", 0);
            end;
        end, 
        ["Activate Awakening"] = function(_, v69) --[[ Line: 1593 ]]
            local l_workspace_Attribute_3 = workspace:GetAttribute("CommandTarget");
            local l_Players_2 = game.Players:GetPlayers();
            if l_workspace_Attribute_3 == 2 then
                table.remove(l_Players_2, table.find(l_Players_2, game.Players:GetPlayerFromCharacter(v69)));
            elseif l_workspace_Attribute_3 == 3 then
                l_Players_2 = {
                    game.Players:GetPlayerFromCharacter(v69)
                };
            end;
            for _, v73 in pairs(l_Players_2) do
                if v73.Character then
                    shared.cfolder({
                        Name = "ULTNOW", 
                        Parent = v73.Character
                    });
                end;
            end;
        end, 
        Respawn = function(_, v75) --[[ Line: 1612 ]]
            if tick() - (game:GetAttribute("RACD") or 0) < 0.5 then
                return;
            else
                game:SetAttribute("RACD", tick());
                local l_workspace_Attribute_4 = workspace:GetAttribute("CommandTarget");
                local l_Players_3 = game.Players:GetPlayers();
                if l_workspace_Attribute_4 == 2 then
                    table.remove(l_Players_3, table.find(l_Players_3, game.Players:GetPlayerFromCharacter(v75)));
                elseif l_workspace_Attribute_4 == 3 then
                    l_Players_3 = {
                        game.Players:GetPlayerFromCharacter(v75)
                    };
                end;
                for _, v79 in pairs(l_Players_3) do
                    v79:LoadCharacter();
                end;
                return;
            end;
        end, 
        Bring = function(_, v81) --[[ Line: 1631 ]]
            local l_workspace_Attribute_5 = workspace:GetAttribute("CommandTarget");
            local l_Children_1 = workspace.Live:GetChildren();
            if l_workspace_Attribute_5 == 2 then
                table.remove(l_Children_1, table.find(l_Children_1, v81));
            elseif l_workspace_Attribute_5 == 3 then
                l_Children_1 = {
                    v81
                };
            end;
            for _, v85 in pairs(l_Children_1) do
                if v85.PrimaryPart and v85:FindFirstChildOfClass("Humanoid") then
                    v85:SetPrimaryPartCFrame(v81.PrimaryPart.CFrame);
                end;
            end;
        end, 
        ["Shutdown Server"] = function(_, _) --[[ Line: 1647 ]]
            for _, v89 in pairs(game.Players:players()) do
                v89:Kick("server shut down by the private server owner");
            end;
        end, 
        ["Teleport Dash"] = function(v90) --[[ Line: 1653 ]]
            workspace:SetAttribute("TeleportDash", v90);
        end, 
        ["Random Moveset"] = function(v91) --[[ Line: 1657 ]]
            workspace:SetAttribute("RandomMoveset", v91);
        end, 
        ["Dual Moveset"] = function(v92) --[[ Line: 1661 ]]
            workspace:SetAttribute("DualMoveset", v92);
        end, 
        ["Kick On Death"] = function(v93) --[[ Line: 1665 ]]
            workspace:SetAttribute("KickOnDeath", v93);
        end, 
        ["Attack Speed Multiplier"] = function(v94) --[[ Line: 1669 ]]
            workspace:SetAttribute("AttackSpeedMultiplier", v94);
        end, 
        ["Gravity Multiplier"] = function(v95) --[[ Line: 1673 ]]
            workspace.Gravity = 196.1999969482422 * v95;
        end, 
        ["Health Multiplier"] = function(v96) --[[ Line: 1677 ]]
            workspace:SetAttribute("HealthMultiplier", v96);
        end, 
        ["Damage Multiplier"] = function(v97) --[[ Line: 1681 ]]
            workspace:SetAttribute("DamageMultiplier", v97);
        end, 
        ["Regen Multiplier"] = function(v98) --[[ Line: 1685 ]]
            workspace:SetAttribute("RegenMultiplier", v98);
        end, 
        ["Speed Multiplier"] = function(v99) --[[ Line: 1689 ]]
            workspace:SetAttribute("SpeedMultiplier", v99);
        end, 
        ["Infinite Awakening"] = function(v100) --[[ Line: 1693 ]]
            workspace:SetAttribute("InfiniteAwakening", v100);
        end, 
        ["Finishers Only"] = function(v101) --[[ Line: 1697 ]]
            workspace:SetAttribute("FinishersOnly", v101);
            for _, v103 in pairs(workspace.Live:GetChildren()) do
                local l_Humanoid_1 = v103:FindFirstChildOfClass("Humanoid");
                if l_Humanoid_1 then
                    l_Humanoid_1.MaxHealth = v101 and 7 or 100;
                    l_Humanoid_1.Health = l_Humanoid_1.MaxHealth;
                end;
            end;
        end, 
        ["Instant Awakening"] = function(v105) --[[ Line: 1708 ]]
            workspace:SetAttribute("InstantAwakening", v105);
        end, 
        ["No Dash Cooldown"] = function(v106) --[[ Line: 1712 ]]
            workspace:SetAttribute("NoDashCooldown", v106);
        end, 
        ["No Movement"] = function(v107) --[[ Line: 1716 ]]
            workspace:SetAttribute("NoMovement", v107);
            for _, v109 in pairs(workspace.Live:GetChildren()) do
                if v109:FindFirstChildOfClass("Humanoid") then
                    shared.cfolder({
                        Name = "Freeze", 
                        Parent = v109
                    }, 0.5);
                end;
                v109:SetAttribute("_upd", math.random(1, 2000000000));
            end;
        end, 
        ["No Respawn"] = function(v110) --[[ Line: 1730 ]]
            workspace:SetAttribute("NoRespawn", v110);
            game.Players.CharacterAutoLoads = not v110;
        end, 
        ["No Cooldown"] = function(v111) --[[ Line: 1735 ]]
            workspace:SetAttribute("NoCooldown", v111);
            for _, v113 in pairs(game.Players:GetPlayers()) do
                if not skills then
                    skills = require(game.ServerStorage.Skills);
                end;
                skills:ResetCooldowns(v113, true);
            end;
        end, 
        ["No Fatigue"] = function(v114) --[[ Line: 1745 ]]
            workspace:SetAttribute("NoFatigue", v114);
        end, 
        ["No Awakening"] = function(v115) --[[ Line: 1749 ]]
            workspace:SetAttribute("NoAwakening", v115);
        end, 
        ["No Ragdoll"] = function(v116) --[[ Line: 1753 ]]
            workspace:SetAttribute("NoRagdoll", v116);
        end, 
        ["No Attack"] = function(v117) --[[ Line: 1757 ]]
            workspace:SetAttribute("NoAttack", v117);
        end, 
        ["No Reset"] = function(v118) --[[ Line: 1761 ]]
            workspace:SetAttribute("NoReset", v118);
        end, 
        ["No Stun"] = function(v119) --[[ Line: 1765 ]]
            workspace:SetAttribute("NoStun", v119);
        end, 
        ["No Block"] = function(v120) --[[ Line: 1769 ]]
            workspace:SetAttribute("NoBlock", v120);
            if v120 then
                task.wait();
                for _, v122 in pairs(workspace.Live:GetChildren()) do
                    shared.cfolder({
                        Name = "a", 
                        Parent = v122
                    }, 0.2);
                end;
            end;
        end, 
        ["Lock Server"] = function(v123) --[[ Line: 1782 ]]
            workspace:SetAttribute("LockServer", v123);
        end, 
        Godmode = function(v124, v125) --[[ Line: 1786 ]]
            local l_CollectionService_1 = game:GetService("CollectionService");
            if v124 then
                local l_ForceField_2 = Instance.new("ForceField");
                l_ForceField_2.Visible = true;
                l_ForceField_2.Name = "AbsoluteImmortal";
                l_CollectionService_1:AddTag(l_ForceField_2, "godmodeff" .. v125.Name);
                l_ForceField_2.Parent = v125;
            else
                for _, v129 in pairs(l_CollectionService_1:GetTagged("godmodeff" .. v125.Name)) do
                    v129:Destroy();
                end;
            end;
            workspace:SetAttribute("Godmode", v124);
        end, 
        ["Spawn Attacking Dummy"] = function(_, v131) --[[ Line: 1802 ]]
            local v132 = shared.DummyClone:Clone();
            v132:SetAttribute("DontClone", true);
            local v133 = script.Attack:Clone();
            v133.Parent = v132;
            v132.Parent = workspace.Live;
            v132:SetPrimaryPartCFrame(v131.PrimaryPart.CFrame);
            v133.Enabled = true;
        end, 
        ["Spawn Blocking Dummy"] = function(_, v135) --[[ Line: 1812 ]]
            local v136 = shared.DummyClone:Clone();
            v136:SetAttribute("DontClone", true);
            local v137 = script.Blocking:Clone();
            v137.Parent = v136;
            v136.Parent = workspace.Live;
            v136:SetPrimaryPartCFrame(v135.PrimaryPart.CFrame);
            v137.Enabled = true;
        end, 
        ["Spawn Dummy"] = function(_, v139) --[[ Line: 1822 ]]
            local v140 = shared.DummyClone:Clone();
            v140.Parent = workspace.Live;
            v140:SetPrimaryPartCFrame(v139.PrimaryPart.CFrame);
        end, 
        ["Spawn Meteor"] = function() --[[ Line: 1828 ]]
            shared.SpawnIce();
        end, 
        ["Spawn Crab"] = function() --[[ Line: 1832 ]]
            local v141 = {
                Vector3.new(377.20623779296875, 438.1653747558594, -64.80699920654297, 0), 
                Vector3.new(370.095703125, 438.616943359375, 149.87962341308594, 0), 
                Vector3.new(212.38955688476562, 438.61651611328125, -236.3059844970703, 0), 
                Vector3.new(-37.52899169921875, 438.12603759765625, -115.18038177490234, 0), 
                Vector3.new(-69.72503662109375, 438.6568298339844, 88.8004379272461, 0), 
                Vector3.new(90.86868286132812, 438.12603759765625, 270.82904052734375, 0), 
                Vector3.new(226.17391967773438, 438.1050109863281, -3.2757205963134766, 0), 
                (Vector3.new(69.11408233642578, 438.1050109863281, 61.77972412109375, 0))
            };
            for _ = 1, 1 do
                local v143 = game.ServerStorage["Crab Boss"]:Clone();
                v143:PivotTo(CFrame.new(v141[math.random(#v141)]));
                v143.Parent = workspace.Live;
            end;
        end, 
        ["Spawn Outsider"] = function(_, _) --[[ Line: 1851 ]]
            local v146 = {
                Vector3.new(156.67799377441406, 440.7560119628906, 24.687000274658203, 0), 
                Vector3.new(400.239990234375, 440.5060119628906, 155.09300231933594, 0), 
                Vector3.new(169.39700317382812, 440.5060119628906, 283.1510009765625, 0), 
                Vector3.new(-62.4739990234375, 440.5060119628906, 195.781005859375, 0), 
                Vector3.new(-107.58899688720703, 440.5060119628906, -91.59100341796875, 0), 
                (Vector3.new(181.21800231933594, 440.5060119628906, -169.90899658203125, 0))
            };
            shared.SpawnOutsider(v146[math.random(#v146)]);
        end, 
        ["Clear Entities"] = function(_, _) --[[ Line: 1863 ]]
            local _ = {};
            for _, v151 in pairs(workspace.Live:GetChildren()) do
                if v151.Name == "Weakest Dummy" or v151:GetAttribute("OmniImmunity") and not v151:GetAttribute("IceBoss") then
                    v151:Destroy();
                end;
            end;
        end
    }, 
    spawnables = {
        Trashcan = {
            function(_, v153, v154) --[[ Line: 1875 ]]
                -- upvalues: v2 (copy)
                local v155 = shared.trashcan:Clone();
                v155:SetAttribute("Name", "Trashcan");
                v155.PrimaryPart = v155.Trashcan;
                v155.Parent = workspace.Map.Trash;
                game:GetService("CollectionService"):AddTag(v155, "ps_spawned");
                table.insert(v2, v155);
                v155.Trashcan.CFrame = v154 or v153.PrimaryPart.CFrame * CFrame.new(0, -0.925, 0);
                game:GetService("CollectionService"):AddTag(v155.Trashcan, "Interactable");
                shared.interactables.FilterDescendantsInstances = game:GetService("CollectionService"):GetTagged("Interactable");
            end, 
            5
        }, 
        Brick = {
            function(_, v157, v158, v159) --[[ Line: 1888 ]]
                -- upvalues: v3 (copy), v2 (copy)
                if not v159 then
                    v159 = v3[workspace:GetAttribute("SpawnShape") or 1];
                    v159 = {
                        v159.X, 
                        v159.Y, 
                        v159.Z
                    };
                end;
                local v160 = script.Block:Clone();
                v160:SetAttribute("Name", "Brick");
                v160.Size = Vector3.new(unpack(v159));
                v160.Parent = workspace;
                table.insert(v2, v160);
                game:GetService("CollectionService"):AddTag(v160, "ps_spawned");
                v160.CFrame = v158 or v157.PrimaryPart.CFrame * CFrame.new(0, v160.Size.Y / 2 - 3, -10);
            end, 
            1
        }, 
        ["Fragile Brick"] = {
            function(_, v162, v163, v164) --[[ Line: 1902 ]]
                -- upvalues: v3 (copy), v2 (copy)
                if not v164 then
                    v164 = v3[workspace:GetAttribute("SpawnShape") or 1];
                    v164 = {
                        v164.X, 
                        v164.Y, 
                        v164.Z
                    };
                end;
                local v165 = script.Block:Clone();
                game:GetService("CollectionService"):AddTag(v165, "fragilebrick");
                game:GetService("CollectionService"):AddTag(v165, "ps_spawned");
                v165:SetAttribute("Name", "Fragile Brick");
                v165.Size = Vector3.new(unpack(v164));
                v165.Parent = workspace;
                table.insert(v2, v165);
                v165.CFrame = v163 or v162.PrimaryPart.CFrame * CFrame.new(0, v165.Size.Y / 2 - 3, -10);
            end, 
            2
        }, 
        Steel = {
            function(_, v167, v168, v169) --[[ Line: 1917 ]]
                -- upvalues: v3 (copy), v2 (copy)
                if not v169 then
                    v169 = v3[workspace:GetAttribute("SpawnShape") or 1];
                    v169 = {
                        v169.X, 
                        v169.Y, 
                        v169.Z
                    };
                end;
                local v170 = script.Block:Clone();
                v170.Material = Enum.Material.DiamondPlate;
                v170:SetAttribute("Breakable", false);
                v170.Color = Color3.fromRGB(112, 107, 111);
                v170:SetAttribute("Name", "Steel");
                v170.Size = Vector3.new(unpack(v169));
                v170.Parent = workspace;
                table.insert(v2, v170);
                game:GetService("CollectionService"):AddTag(v170, "ps_spawned");
                v170.CFrame = v168 or v167.PrimaryPart.CFrame * CFrame.new(0, v170.Size.Y / 2 - 3, -10);
            end, 
            3
        }, 
        ["Kill Block"] = {
            function(_, v172, v173, v174) --[[ Line: 1934 ]]
                -- upvalues: v3 (copy), v2 (copy)
                if not v174 then
                    v174 = v3[workspace:GetAttribute("SpawnShape") or 1];
                    v174 = {
                        v174.X, 
                        v174.Y, 
                        v174.Z
                    };
                end;
                local v175 = script.Block:Clone();
                v175:SetAttribute("Breakable", false);
                v175:SetAttribute("Name", "Kill Block");
                v175.Material = Enum.Material.SmoothPlastic;
                v175.Size = Vector3.new(unpack(v174));
                v175.Transparency = 0.5;
                v175.BrickColor = BrickColor.new("Really red");
                v175.CanCollide = false;
                v175.Parent = workspace;
                table.insert(v2, v175);
                game:GetService("CollectionService"):AddTag(v175, "ps_spawned");
                game:GetService("CollectionService"):AddTag(v175, "killbrick");
                v175.CFrame = v173 or v172.PrimaryPart.CFrame * CFrame.new(0, v175.Size.Y / 2 - 3, -10);
            end, 
            4
        }
    }
};
v11.IsCosmeticProduct = function(_, v177) --[[ Line: 1956 ]] --[[ Name: IsCosmeticProduct ]]
    -- upvalues: v11 (ref)
    v177 = tonumber(v177);
    for _, v179 in pairs(v11.CosmeticProducts) do
        if tonumber(v179.id) == v177 then
            return v179.count;
        end;
    end;
end;
v11.IsEmoteProduct = function(_, v181) --[[ Line: 1965 ]] --[[ Name: IsEmoteProduct ]]
    -- upvalues: v11 (ref)
    v181 = tonumber(v181);
    for _, v183 in pairs(v11.EmoteProducts) do
        if tonumber(v183.id) == v181 then
            return v183.count;
        end;
    end;
end;
v11.CanGiveMoveset = function(_, v185, v186) --[[ Line: 1974 ]] --[[ Name: CanGiveMoveset ]]
    -- upvalues: v11 (ref)
    local v187 = false;
    if v185 ~= "Sorcerer" then
        v187 = (not (v185 == v11.EarlyAccess) or v186) and v185 ~= "KJ" and v185 ~= "Pirate" and v185 ~= "Crab Boss";
    end;
    return v187;
end;
for _, v189 in pairs(v11.Order) do
    if string.sub(v189, 0, 3) == "-- " then
        v11.VIPServerPowers[v189] = function() --[[ Line: 1980 ]]

        end;
        table.insert(v11.VIPServerButtons, v189);
    end;
end;
table.sort(v11.Cosmetics, function(v190, v191) --[[ Line: 1984 ]]
    return v190[2] > v191[2];
end);
v11.UpdateLog = "BIGGERRR **<font color=\"#ADD8E6\">The End Of The Long Wait</font>**\nYour patience and support mean the world to me, thank you. I will make sure this long wait won\226\128\153t be repeated \226\128\148 **you can expect updates every two or three weeks** \240\159\154\128\n-# \226\128\148 \240\159\141\159\n\n-# <i>P.S. expect a rework of a villain's awakening, the new moves MIGHT have some monster or cosmic aspect, we'll see...</i>\n\n## \226\156\168\n## \226\156\182 **<font color=\"#ff5c5c\">KJ</font>** is now available !!\n* **<font color=\"#FFB3B3\">U</font><font color=\"#FFD9B3\">n</font><font color=\"#FFFFB3\">l</font><font color=\"#B3FFB3\">i</font><font color=\"#B3B3FF\">m</font><font color=\"#D9B3FF\">i</font><font color=\"#FFB3FF\">t</font><font color=\"#FFB3B3\">e</font><font color=\"#FFD9B3\">d</font> <font color=\"#FFFFB3\">F</font><font color=\"#B3FFB3\">l</font><font color=\"#B3B3FF\">e</font><font color=\"#D9B3FF\">x</font> <font color=\"#FFB3FF\">W</font><font color=\"#FFB3B3\">o</font><font color=\"#FFD9B3\">r</font><font color=\"#FFFFB3\">k</font><font color=\"#B3FFB3\">s</font>** \226\128\148 has damage requirement \n-# \226\147\152  to prevent chaos, using KJ will teleport you to a separate lobby\n\n## \226\156\182 **<font color=\"#8896ff\">Martial Artist</font>** is now free !!\n* new move: **Grand Fissure** (has finisher)\n* new move: **Last Breath**\n* added **Head First** finisher\n* added passive \226\128\148 uppercut after finisher\n* added awakening aura\n\n## \226\156\182 **New <font color=\"#FFD813\">Early Access</font> Character** \240\159\140\159\n* first move: **Weboom**\n* second move: **Plasma Cannon**\n* third move: **Trinity Tear**\n* fourth move: **Double Trouble**\n* wall combo\n* spawn intro\n\n## \226\156\182 **Snowy Map** \226\157\132\239\184\143\n* Have a snowball fight with your friends!\n* Watch out for mysterious meteors...\n\n* **Bald Hero Awakening**\n\t* **Serious Trashcan**\n\t* **Serious Sneeze**\n\t* **Serious Slap**\n\n* **Retouched Finishers**\n\t* **Whirlwind Kick**\n\t* **Ignition Burst**\n\t* **Windstorm Fury**\n\t\n* **Hero Hunter**\n\t* Added a close range variant to **Crushed Rock**\n\t\n* **New Cosmetics**\n  * Added cosmetic gifting\n  * Webbed Cape\n  * Warden Cape\n  * Ruler Cape\n  * Gold Aura\n  * Midnight Aura\n  * Crimson Aura\n  * Colorful Aura\n  * Glitch Aura\n  * Error Aura\n\n* **100** new emotes\n\t* **New Types**\n\t\t* **Kill Emote**\n\t\t* **Melee Effect**\n\t\t* **Aura Effect**\n\t* You can now gift emotes in bulk\n\n* **Mobile Customization**\n\t* Resize buttons individually \226\128\148 pinch to resize\n\t* Shift lock toggle button\n\n* **VC Servers**\n* **Day & night cycle setting**\n\t* Aurora can be seen at night \226\128\148 gives free emote\n* Accessories will now have good quality \n\n## \240\159\155\160\239\184\143\n* Build Mode\n\t* Spawn trashcan added\n\t* Fixed dragging\n\t* Fixed delayed resizing & repositioning\n\t* Fixed clear not getting rid of destruction parts\n\t* CTRL + V to duplicate selection\n* Replaced Awakening Music That Were Taken Down\n\t* Hero Hunter\n\t* Destructive Cyborg\n\t* Deadly Ninja\n* Whirlwind Drop\n\t* Finisher will now pull enemies in\n\t* Fixed being immune to counters\n* Moves that have an air variation will now be marked\n* Fixed Expulsive Push soft lock bug\n* Fixed Earth Splitting Strike fling bug\n* Fixed Wild Psychic awakening animation being so laggy\n* Fixed Speedblitz Dropkick desynced hitbox\n* Fixed collisions acting weird in private server\n* Fixed an emote bug that broke skills\n* Fixed lag that was creating millions of parts\n* Removed crab\n";
return v11;
