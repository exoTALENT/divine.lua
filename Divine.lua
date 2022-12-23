ui.add_label("Divine.lua")
ui.add_label("Author: Guccish")
ui.add_label("Discord: discord.gg/JqpFXJVS4Q")


render.fonts = {
    tahoma_13px = render.create_font("Tahoma", 13, 500, bit.bor(font_flags.dropshadow, font_flags.antialias));
}

render.screen = {
    w = 0,
    h = 0
}

render.center_screen = {
    w = 0,
    h = 0
}

render.update = function()
    local screen_size_x, screen_size_y = render.get_screen()

    render.screen.w = screen_size_x
    render.screen.h = screen_size_y

    render.center_screen.w = screen_size_x / 2
    render.center_screen.h = screen_size_y / 2
end
-- menu elements


local function round(num, numDecimalPlaces)
    local mult = 10^(numDecimalPlaces or 0)
    return math.floor(num * mult + 0.5) / mult
end
ui.add_label("")
ui.add_label("             Anti-Aim Systems                 ")

local aapresets = {
    [1] = "None",
    [2] = "Agressive Jitter",
    [3] = "Tank AA",
    [4] = "Small Jitter"
}
local antiaim_options =  ui.add_dropdown("Anti-Aim Presets", {aapresets[1], aapresets[2], aapresets[3], aapresets[4]})

local cstrike = {
    cmd = nil,
    roll = 0
}

cstrike.update = function(pdr_cmd)
    cstrike.cmd = pdr_cmd
    cstrike.roll = pdr_cmd.viewangles.z
end

local globals = {
    local_player = nil,
    alive = nil,
    weapon = nil,
    weapon_type = nil,
    view_angles = nil,
    on_ground = nil
}

globals.update = function()
    globals.local_player = entity_list.get_client_entity(engine.get_local_player())
    globals.alive = client.is_alive()
    globals.weapon = entity_list.get_client_entity(globals.local_player:get_prop("DT_BaseCombatCharacter", "m_hActiveWeapon"))
    globals.weapon_type = globals.weapon:get_prop("DT_BaseAttributableItem", "m_iItemDefinitionIndex"):get_int()
    globals.view_angles = engine.get_view_angles()
end

cstrike.weapons = {
    deagle = 1,
    duals = 2,
    fiveseven = 3,
    glock = 4,
    awp = 9,
    g3sg1 = 11,
    tect9 = 30,
    p2000 = 32,
    p250 = 36,
    scar20 = 38,
    ssg08 = 40,
    revolver = 64,
    usp = 262205
}

cstrike.get_health = function(entity)
    if entity then
        local health = entity:get_prop("DT_BasePlayer", "m_iHealth"):get_int()
        return math.round(health)
    end

    return nil
end

cstrike.get_velocity = function(entity)
	if entity then
		local x = entity:get_prop("DT_BasePlayer", "m_vecVelocity[0]"):get_float()
		local y = entity:get_prop("DT_BasePlayer", "m_vecVelocity[1]"):get_float()

		return math.round(math.sqrt(x * x + y * y))
	end
end

cstrike.is_alive = function(entity)
    if entity then
        local health = cstrike.get_health(entity)
        if health > 0 then
            return true
        end
    end

    return false
end

cstrike.is_standing = function(entity)
	if entity then
		local is_moving = cstrike.is_moving(entity)
		if not is_moving then
			return true
		end
	end

	return false
end

cstrike.is_slowwalking = function(entity)
    if entity then
		if ui.get("Misc", "General", "Movement", "Slow motion key"):get_key() then
			return true
		end
    end

    return false
end


cstrike.is_crouching = function(entity)
    if entity then
        if cstrike.cmd:has_flag(4) then
            return true
        end
    end

    return false
end

cstrike.is_fake_ducking = function(entity)
    if entity then
        local duck_speed = entity:get_prop("DT_BasePlayer", "m_flDuckSpeed"):get_float()
        local duck_amount = entity:get_prop("DT_BasePlayer", "m_flDuckAmount"):get_float()

        if duck_speed == 8 and duck_amount > 0 and not cstrike.cmd:has_flag(1) then
            return true
        end
    end

    return false
end

cstrike.is_inair = function(entity)
	if entity then
        local local_player = entity_list.get_client_entity(engine.get_local_player())
		local ground_entity = local_player:get_prop("DT_BasePlayer", "m_hGroundEntity"):get_int()

		if ground_entity == -1 then
			return true
		end
	end

	return false
end

cstrike.is_moving = function(entity)
    local local_player = entity_list.get_client_entity(engine.get_local_player())
	if entity then
        local velocity = cstrike.get_velocity(entity)
		if velocity > 4 and not cstrike.is_inair(local_player)  then
			return true
		end
	end
    return false
end

cstrike.is_scoped = function(entity)
    if entity then
        local scoped = entity:get_prop("DT_CSPlayer", "m_bIsScoped"):get_int()
        if scoped == 1 then
            return true
        end
    end

    return false
end


math.radian_to_degree = function(radian)
    return radian * 180 / math.pi
end

math.degree_to_radian = function(degree)
    return degree * math.pi / 180
end

math.round = function(x)
    return x % 1 >= 0.5 and math.ceil(x) or math.floor(x)
end

math.normalize = function(angle)
    while angle < -180 do
        angle = angle + 360
    end

    while angle > 180 do
        angle = angle - 360
    end

    return angle
end

math.angle_to_vector = function(angle)
    local pitch = angle.x
    local yaw = angle.y

    return vector.new(math.cos(math.pi / 180 * pitch) * math.cos(math.pi / 180 * yaw), math.cos(math.pi / 180 * pitch) * math.sin(math.pi / 180 * yaw), -math.sin(math.pi / 180 * pitch))
end

math.calculate_angles = function(from, to)
	local sub = { 
		x = to.x - from.x, 
		y = to.y - from.y, 
		z = to.z - from.z 
	}

	local hyp = math.sqrt( sub.x * sub.x * 2 + sub.y * sub.y * 2 )

	local yaw = math.radian_to_degree( math.atan2( sub.y, sub.x ) );
	local pitch = math.radian_to_degree( -math.atan2( sub.z, hyp ) )

    return QAngle.new(pitch, yaw, 0)
end

math.calculate_fov = function(from, to, angles)
    local calculated = math.calculate_angles(from, to)

    local yaw_delta = angles.yaw - calculated.yaw;
    local pitch_delta = angles.pitch - calculated.pitch;

    if ( yaw_delta > 180 ) then
      yaw_delta = yaw_delta - 360
    end

    if ( yaw_delta < -180 ) then
      yaw_delta = yaw_delta + 360
    end

    return math.sqrt( yaw_delta * yaw_delta * 2 + pitch_delta * pitch_delta * 2 );
end
local utils = {}

utils.clamp = function(v, min, max)
    local num = v
    num = num < min and min or num
    num = num > max and max or num
    
    return num
end

utils.fluctuate = function(min, max)
    local used = false
    local ret = 0

    if used then
        ret = math.random(min, max)
        used = false
    else
        ret = math.random(min, max)
        used = true
    end

    return ret
end

utils.get_crosshair_target = function()
    if not globals.local_player then
        return
    end

    local data = {
        target = nil,
        fov = 180
    }

    local players = entity_list.get_all("CCSPlayer")
end
local antiaim = {}

antiaim.run = function()

    local fake_yaw_type = ui.get("Rage", "Anti-aim", "General", "Fake yaw type")
    local body_yaw_limit = ui.get("Rage", "Anti-aim", "General", "Body yaw limit")
    local fake_yaw_limit = ui.get("Rage", "Anti-aim", "General", "Fake yaw limit")

    local yaw_jitter = ui.get("Rage", "Anti-aim", "General", "Yaw jitter")
    local yaw_jitter_conditions = ui.get("Rage", "Anti-aim", "General", "Yaw jitter conditions")
    local yaw_jitter_type = ui.get("Rage", "Anti-aim", "General", "Yaw jitter type")
    local yaw_jitter_range = ui.get("Rage", "Anti-aim", "General", "Yaw jitter range")

    local fake_yaw_direction = ui.get("Rage", "Anti-aim", "General", "Fake yaw direction")
    local yaw_additive = ui.get("Rage", "Anti-aim", "General", "Yaw additive")

    local body_roll = ui.get("Rage", "Anti-aim", "General", "Body roll")
    local body_roll_amount = ui.get("Rage", "Anti-aim", "General", "Body roll amount")
    local inverter_state = ui.get("Rage", "Anti-aim", "General", "Anti-aim invert")

    if antiaim_options:get() == 0 then
    end
    if antiaim_options:get() == 1 then

    if cstrike.is_standing(globals.local_player) or cstrike.is_slowwalking(globals.local_player) then

            fake_yaw_direction:set(0)
            yaw_jitter:set(true)
            yaw_jitter_conditions:set("Standing", true)
            yaw_jitter_conditions:set("Walking", true)
            yaw_jitter_type:set(2)
            yaw_jitter_range:set(-38)
            body_yaw_limit:set(23)
            fake_yaw_limit:set(24)
            fake_yaw_limit:set(27)
            fake_yaw_type:set(1)
    end

    if (cstrike.is_inair(globals.local_player) and not cstrike.is_moving(globals.local_player)) then 
        yaw_additive:set(0)
        yaw_jitter:set(true)
        yaw_jitter_conditions:set("In air", true)
        yaw_jitter_type:set(2)
        yaw_jitter_range:set(-34)
        fake_yaw_type:set(1)
        body_yaw_limit:set(42)
        fake_yaw_limit:set(37)
        fake_yaw_direction:set(0)
        body_roll:set(0)
    end

    if (not cstrike.is_slowwalking(globals.local_player) and cstrike.is_moving(globals.local_player)) then        
        yaw_additive:set(0)
        yaw_jitter:set(true)
        yaw_jitter_conditions:set("Moving", true)
        yaw_jitter_type:set(2)
        yaw_jitter_range:set(-42)
        fake_yaw_type:set(1)
        body_yaw_limit:set(60)
        fake_yaw_limit:set(58)
        fake_yaw_direction:set(0)
        body_roll:set(0)
    end

    if  (not cstrike.is_inair(globals.local_player) and cstrike.is_crouching(globals.local_player)) then
        yaw_additive:set(0)
        yaw_jitter:set(true)
        yaw_jitter_conditions:set("Moving", true)
        yaw_jitter_type:set(2)
        yaw_jitter_range:set(-44)
        fake_yaw_type:set(1)
        body_yaw_limit:set(46)
        fake_yaw_limit:set(38)
        fake_yaw_direction:set(0)
        body_roll:set(0)

    end
end
 
if antiaim_options:get() == 2 then

    if cstrike.is_standing(globals.local_player) or cstrike.is_slowwalking(globals.local_player) then

        fake_yaw_direction:set(0)
        yaw_jitter:set(true)
        yaw_jitter_conditions:set("Standing", true)
        yaw_jitter_conditions:set("Walking", true)
        yaw_jitter_type:set(2)
        yaw_jitter_range:set(-24)
        body_yaw_limit:set(33)
        fake_yaw_limit:set(28)
        fake_yaw_type:set(1)
end

if (cstrike.is_inair(globals.local_player) and not cstrike.is_moving(globals.local_player)) then 
    yaw_additive:set(0)
    yaw_jitter:set(true)
    yaw_jitter_conditions:set("In air", true)
    yaw_jitter_type:set(2)
    yaw_jitter_range:set(-37)
    fake_yaw_type:set(1)
    body_yaw_limit:set(55)
    fake_yaw_limit:set(53)
    fake_yaw_direction:set(0)
    body_roll:set(0)
end

if (not cstrike.is_slowwalking(globals.local_player) and cstrike.is_moving(globals.local_player)) then        
    yaw_additive:set(0)
    yaw_jitter:set(true)
    yaw_jitter_conditions:set("Moving", true)
    yaw_jitter_type:set(2)
    yaw_jitter_range:set(-34)
    fake_yaw_type:set(1)
    body_yaw_limit:set(58)
    fake_yaw_limit:set(36)
    fake_yaw_direction:set(0)
    body_roll:set(0)
end

if  (not cstrike.is_inair(globals.local_player) and cstrike.is_crouching(globals.local_player)) then
    yaw_additive:set(0)
    yaw_jitter:set(true)
    yaw_jitter_conditions:set("Moving", true)
    yaw_jitter_type:set(2)
    yaw_jitter_range:set(7)
    fake_yaw_type:set(1)
    body_yaw_limit:set(46)
    fake_yaw_limit:set(38)
    fake_yaw_direction:set(0)
    body_roll:set(0)

end
end
if antiaim_options:get() == 3 then

    if cstrike.is_standing(globals.local_player) or cstrike.is_slowwalking(globals.local_player) then

        fake_yaw_direction:set(0)
        yaw_jitter:set(true)
        yaw_jitter_conditions:set("Standing", true)
        yaw_jitter_conditions:set("Walking", true)
        yaw_jitter_type:set(2)
        yaw_jitter_range:set(-29)
        body_yaw_limit:set(23)
        fake_yaw_limit:set(24)
        fake_yaw_type:set(1)
end

if (cstrike.is_inair(globals.local_player) and not cstrike.is_moving(globals.local_player)) then 
    yaw_additive:set(0)
    yaw_jitter:set(true)
    yaw_jitter_conditions:set("In air", true)
    yaw_jitter_type:set(2)
    yaw_jitter_range:set(-38)
    fake_yaw_type:set(1)
    body_yaw_limit:set(42)
    fake_yaw_direction:set(0)
    body_roll:set(0)
end

if (not cstrike.is_slowwalking(globals.local_player) and cstrike.is_moving(globals.local_player)) then        
    yaw_additive:set(0)
    yaw_jitter:set(true)
    yaw_jitter_conditions:set("Moving", true)
    yaw_jitter_type:set(2)
    yaw_jitter_range:set(8)
    fake_yaw_type:set(1)
    body_yaw_limit:set(60)
    fake_yaw_direction:set(0)
    body_roll:set(0)
end

if  (not cstrike.is_inair(globals.local_player) and cstrike.is_crouching(globals.local_player)) then
    yaw_additive:set(0)
    yaw_jitter:set(true)
    yaw_jitter_conditions:set("Moving", true)
    yaw_jitter_type:set(2)
    yaw_jitter_range:set(12)
    fake_yaw_type:set(1)
    body_yaw_limit:set(46)
    fake_yaw_direction:set(0)
    body_roll:set(0)

end
end
end

antiaim.handle_visibility = function()
    local state = antiaim_options:get()
end
local on_post_move = function(cmd)
    globals.update()
    cstrike.update(cmd)

    antiaim.run()
end

callbacks.register("post_move", on_post_move)

ui.add_label("")
ui.add_label("                    Ragebot                 ")
--UI--
local tickbase_boost = ui.add_checkbox("Doubletap Improvement")
tickbase_boost:set(false)

local ideal_tick = ui.add_checkbox("Ideal Tick")
local cmd_ticks = cvar.find_var("sv_maxusrcmdprocessticks")

callbacks.register("post_move", function()

    if ideal_tick:get() == true then
        cmd_ticks:set_value_int(19)
    end

    if ideal_tick:get() == false then
        cmd_ticks:set_value_int(16)
    end

end)

--something--
local cmd_ticks = cvar.find_var("sv_maxusrcmdprocessticks")

--function--
function TickbaseBoost()
    if tickbase_boost:get() == true then
       cmd_ticks:set_value_int(19)          
    else
          cmd_ticks:set_value_int(16)  
    end    
end

--callbacks--
callbacks.register("post_move", TickbaseBoost)

-- menu elements.
local disable_lc_checkbox = ui.add_checkbox( "AX" );

-- convars.
local cl_lagcompensation = cvar.find_var( "cl_lagcompensation" );

-- constants.
local TEAM_TERRORIST = 2;
local TEAM_CT = 3;

local function get_player_team( player )
    local m_iTeamNum = player:get_prop( "DT_BaseEntity", "m_iTeamNum" );

    return m_iTeamNum:get_int( );
end

-- https://github.com/perilouswithadollarsign/cstrike15_src/blob/f82112a2388b841d72cb62ca48ab1846dfcc11c8/game/shared/cstrike15/cs_gamerules.cpp#L15238
local function IsConnectedUserInfoChangeAllowed( player )
    local team_num = get_player_team( player );

    if team_num == TEAM_TERRORIST or team_num == TEAM_CT then
        return false;
    end

    return true;
end

-- cache.
local previous_dlc_state = disable_lc_checkbox:get( );

-- team swapping.
local changing_from_team = false;
local previous_team_num = -1;
local team_swap_time = -1;

local function on_paint( )
    -- get the local player's entity index.
    local local_player_idx = engine.get_local_player( );

    -- get the local player.
    local local_player = entity_list.get_client_entity( local_player_idx );

    -- will the server acknowledge our changes to cl_lagcompensation?
    if not engine.is_connected( ) or IsConnectedUserInfoChangeAllowed( local_player ) then
        -- update cl_lagcompensation accordingly.
        cl_lagcompensation:set_value_int( disable_lc_checkbox:get( ) and 0 or 1 );

        -- if we were on a team previously, we need to join that team again.
        if changing_from_team and global_vars.curtime > team_swap_time then
            -- join the team we were previously on.
            engine.execute_client_cmd( "jointeam " .. tostring( previous_team_num ) .. " 1" );

            -- we're no longer waiting to join our previous team.
            changing_from_team = false;
        end
    else
        -- have we clicked the checkbox while we were unable to change cl_lagcompensation?
        if disable_lc_checkbox:get( ) ~= previous_dlc_state then
            -- keep track of what team we're currently on.
            previous_team_num = get_player_team( local_player );

            -- join the spectator team.
            engine.execute_client_cmd( "spectate" );

            -- wait a bit before joining our team again so we don't get kicked for
            -- executing too many commands.
            changing_from_team = true;
            team_swap_time = global_vars.curtime + 1.5;

            -- cache the value of disable_lc_checkbox:get( ).
            previous_dlc_state = disable_lc_checkbox:get( );
        end
    end
end

-- init.
local function init( )
    callbacks.register( "paint", on_paint );
end
init( );



ui.add_label("")
ui.add_label("                     Visuals                  ")


local indic_toggle = ui.add_checkbox("Indicators")
local arrows_checkbox = ui.add_checkbox("Desync Side Arrows")
local indicators_color = ui.add_cog("Arrows color",true, false)
--local high_dpi_font = ui.add_checkbox("High DPI")

local indicators = {
    screen        = { render.get_screen() },
    screen_center = vector2d.new(0, 0),
    font_pixel    = render.create_font("Small Fonts", 8, 300, bit.bor(font_flags.outline)),
   -- high_dpi      = render.create_font("Verdana", 12, 100, bit.bor(font_flags.dropshadow, font_flags.antialias)),
    pulse_alpha   = 255,
    font_used     = font_pixel,
    refs = {
        baim = ui.get("Rage", "Aimbot", "Accuracy", "Force body-aim key"),
        fd = ui.get("Rage", "Anti-Aim", "Fake-lag", "Fake duck key"),
        dt = ui.get("Rage", "Exploits", "General", "Double tap key"),
        freestand = ui.get("Rage", "Anti-Aim", "General", "Freestanding key"),
        os = ui.get("Rage", "Exploits", "General", "Hide shots key"),
        dmg = ui.get("Rage", "Aimbot", "General", "Minimum damage override key"),
    }
}

indicators.draw = function(table)
    for key, indicator in pairs(table) do
        key = key + 1

        local actual_index = key - 1 
        local font_size = { indicators.font_used:get_size(indicator.text) }

        indicators.font_used:text(
            render.center_screen.w - 0.5,
            render.center_screen.h + 6 + font_size[2] * actual_index,
            indicator.color,
            indicator.text
        )
    end
end

indicators.main = function()
    
    if not globals.local_player or not client.is_alive()  then
        return
    end

    if not indic_toggle:get() then
        return
    end
  --  indicators.font_used = indicators.high_dpi
  --  if not high_dpi_font:get() then
        indicators.font_used =  indicators.font_pixel
  --  end

    indicators.pulse_alpha = math.sin(math.abs((math.pi * -1) + (global_vars.curtime * 2) % (math.pi * 1))) * 255
    indicators.font_used:text( render.center_screen.w - 20, render.center_screen.h + 6, color.new(135,130,129,255), "DIVINE")
    indicators.font_used:text( render.center_screen.w + 4, render.center_screen.h + 6, color.new(135,130,129, math.max(indicators.pulse_alpha, 25)), "DEBUG")
    
    indicators.indicators = {}
    
    local body_roll_amount = ui.get("Rage", "Anti-aim", "General", "Body roll amount")

    if math.abs(cstrike.roll) > 0 then 
        table.insert(
            indicators.indicators,
            {
                text = ("ROLL"),
                color = color.new(255, 150, 255)
            }
        )
    end

    if indicators.refs.dt:get_key() then
        table.insert(
            indicators.indicators,
            {
                text = ("DT"),
                color = exploits.ready() and color.new(135,130,129,255) or color.new(171, 169, 169)
            }
        )
    end

    if indicators.refs.os:get_key() then
        table.insert(
            indicators.indicators,
            {
                text = ("OS"),
                color = color.new(135,130,129,255)
            }
        )
    end


    if indicators.refs.fd:get_key() then
        table.insert(
            indicators.indicators,
            {
                text = ("FD"),
                color = color.new(135,130,129,255)
            }
        )
    end

    if indicators.refs.dmg:get_key() then
        table.insert(
            indicators.indicators,
            {
                text = ("MD"),
                color = color.new(135,130,129,255) 
            }
        )
    end

    indicators.draw(indicators.indicators)
end

local elements = {
    [1] = "Static legs",
    [2] = "Pitch 0 on land",
    [3] = "Slide legs"
}

local interval = 0

local function rgb_health_based(percentage)
    local r = 124*2 - 124 * percentage
    local g = 195 * percentage
    local b = 13
    return r, g, b
end

local function remap(val, newmin, newmax, min, max, clamp)
    min = min or 0
    max = max or 1

    local pct = (val-min)/(max-min)

    if clamp ~= false then
        pct = math.min(1, math.max(0, pct))
    end

    return newmin+(newmax-newmin)*pct
end

local function rectangle_outline(x, y, w, h, r, g, b, a, s)
    s = s or 1
    render.rectangle(x, y, w, s, color.new(r, g, b, a)) -- top
    render.rectangle(x, y+h-s, w, s, color.new(r, g, b, a)) -- bottom
    render.rectangle(x, y+s, s, h-s*2, color.new(r, g, b, a)) -- left
    render.rectangle(x+w-s, y+s, s, h-s*2, color.new(r, g, b, a)) -- right
end

local function drawBar(modifier, r, g, b, a, text)
    local text_width = 95
    local sw, sh = render.get_screen()
    local x, y = sw/2-text_width, sh*0.35

    if a > 0.7 then
        render.rectangle(x+13, y+11, 8, 20, color.new(16, 16, 16, 255*a))
    end

    render.text(x+8, y+3, string.format("%s %.f", text, modifier * 100.0), color.new(255, 255, 255, 255*a))

    local rx, ry, rw, rh = x+8, y+3+17, text_width, 12
    rectangle_outline(rx, ry, rw, rh, 0, 0, 0, 255*a, 1)
    render.rectangle_filled(rx+1, ry+1, rw-2, rh-2, color.new(16, 16, 16, 180*a))
    render.rectangle_filled(rx+1, ry+1, math.floor((rw-2)*modifier), rh-2, color.new(r, g, b, 180*a))
end

local font = render.create_font("Verdana", 12, 400, bit.bor(font_flags.outline))
--Menu

-- Var
local g_col_disabled = color.new(153,124,122);
local g_col_enabled  = color.new(153,124,122);
local lag_history = {0, 0, 0, 0, 0, 0}
-- UI GET
local jitter = ui.get("Rage","Anti-Aim","General","Yaw jitter")
local exploit = ui.get("Rage", "Exploits", "General", "Enabled")
local dt = ui.get("Rage", "Exploits", "General", "Double tap key")
local dmg = ui.get_rage("General", "Minimum damage override key")
local fs = ui.get("Rage", "Anti-aim", "General", "Freestanding key")
local fd = ui.get("Rage", "Anti-aim", "Fake-lag", "Fake duck key")
local sw = ui.get("Misc", "General", "Movement", "Slow motion key")

local indicator_checkbox = ui.add_checkbox("Damage indicator")

-- Var
local g_col_disabled = color.new(255,255,255);
local g_col_enabled  = color.new(255,255,255);

-- Screensize
local screen_width, screen_height = render.get_screen( );
local center_x = ( screen_width / 2 );
local center_y = ( screen_height / 2);

local dmg = ui.get_rage("General", "Minimum damage override key")

local function getMinimumDamage( var )
    local minimum_damage = var:get();
    if minimum_damage == 0 then
        return "auto";
    elseif minimum_damage > 100 then
        return string.format("10%d", minimum_damage - 100);
    else
        return tostring(minimum_damage);
    end
end
local function drawDmg()
    local is_overriding = dmg:get_key();
    local dmg1 = ui.get_rage("General", "Minimum damage")
    local dmg2 = ui.get_rage("General", "Minimum damage override")
    local v = getMinimumDamage(is_overriding and dmg2 or dmg1);
    font:text(center_x + 5, center_y - 20, is_overriding and g_col_enabled or g_col_disabled, string.format("%s", v));
   
end


local function onPaint()
if indicator_checkbox:get() == true then
    if not client.is_alive() then
        return
    end
   drawDmg();
end
end
callbacks.register("paint", onPaint);



local custom_scopre = ui.add_checkbox("Custom scope")
local scope_color_label = ui.add_label("Scope color")
local scope_color = ui.add_cog("dsda", true, false)
local scope_size = ui.add_slider("Scope size", 0, 500)
local scope_padding = ui.add_slider("Scope padding", 0, 250)
local scopetype = ui.get("Visuals", "General", "Other group", "Scope effect type")
local entity_get_client_entity = entity_list.get_client_entity
local alpha = 0

function scope_on_paint()

    if custom_scopre:get() then

        scopetype:set(0)
        
        local screen_size_x, screen_size_y = render.get_screen()
        local screen_center = vector2d.new(screen_size_x / 2, screen_size_y / 2)
    
        local_player = entity_get_client_entity(engine.get_local_player())
    
        if not engine.in_game() then
            return
        end
    
        if local_player == nil then
            return
        end
        
        if local_player:get_prop("DT_BasePlayer", "m_iHealth"):get_int() <= 0 then
            return
        end

        local multiplier = (1.0 / (225/1000)) * global_vars.frametime

        if local_player:get_prop("DT_CSPlayer", "m_bIsScoped"):get_bool() then
            if alpha < 1.0 then
                alpha = alpha + multiplier
            end
        else
            if alpha > 0.0 then
                alpha = alpha - multiplier
            end
        end

        if alpha >= 1.0 then
            alpha = 1
        end
    
        if alpha <= 0.0 then
            alpha = 0
            return
        end

        local r, g, b, a = scope_color:get_color():r(), scope_color:get_color():g(), scope_color:get_color():b(), scope_color:get_color():a()

        local sizee = scope_size:get()

        -- top
        pos = vector2d.new(screen_center.x, screen_center.y - sizee)
        size = vector2d.new(1, sizee * alpha)
        pos.y = pos.y - (scope_padding:get() - 1)
        render.gradient(pos.x, pos.y, size.x, size.y, color.new(0,0,0,0), color.new(r,g,b,a * alpha), false)

        -- bottom
        pos = vector2d.new(screen_center.x, screen_center.y + (sizee * ( 1.0 - alpha ) ))
        size = vector2d.new(1, scope_size:get() - ( sizee * ( 1.0 - alpha ) ))
        pos.y = pos.y + scope_padding:get()
        render.gradient(pos.x, pos.y, size.x, size.y, color.new(r,g,b,a * alpha), color.new(0,0,0,0), false)

        -- left
        pos = vector2d.new(screen_center.x - sizee, screen_center.y)
        size = vector2d.new(sizee * alpha, 1)
        pos.x = pos.x - (scope_padding:get() - 1)
        render.gradient(pos.x, pos.y, size.x, size.y, color.new(0,0,0,0), color.new(r,g,b,a * alpha), true)

        -- right
        pos = vector2d.new(screen_center.x + (sizee * ( 1.0 - alpha ) ), screen_center.y)
        size = vector2d.new(sizee - ( sizee * ( 1.0 - alpha ) ), 1)
        pos.x = pos.x + scope_padding:get()
        render.gradient(pos.x, pos.y, size.x, size.y, color.new(r,g,b,a * alpha), color.new(0,0,0,0), true)
    end
    
    if custom_scopre:get() == false then
        scopetype:set(1)
    end
end

callbacks.register("paint", scope_on_paint)

local dist_ref = ui.add_slider("Thirdperson distance", 0, 200)
local get_cam_idealdist = cvar.find_var("cam_idealdist")

callbacks.register("paint", function()
   get_cam_idealdist:set_value_int(dist_ref:get())
end)




ui.add_label("")
ui.add_label("              Miscellaneous                    ")
local viewmodel_in_scope = ui.add_checkbox("Viewmodel in scope")

local cstrike = {}

cstrike.is_scoped = function(entity)
    if entity then
        local scoped = entity:get_prop("DT_CSPlayer", "m_bIsScoped"):get_int()
        if scoped == 1 then
            return true
        end
    end

    return false
end

local on_paint = function()

    local fov_cs_debug = cvar.find_var("fov_cs_debug")

    if not viewmodel_in_scope:get() then
        fov_cs_debug:set_value_int(0)
        return
    end

    local local_player = entity_list.get_client_entity(engine.get_local_player())
    if not local_player then
        return
    end

    if cstrike.is_scoped(local_player) then
        fov_cs_debug:set_value_int(90)
    else
        fov_cs_debug:set_value_int(0)
    end
end

callbacks.register("paint", on_paint)

local animations = {
    on_land = false,
    static_legs_on = false,
    pitch_land_on = false,
    sliding_legs_on = false,
    options =  ui.add_multi_dropdown("Custom animations", { elements[1], elements[2], elements[3] })
}

animations.main = function(ent)

    if ent:index() ~= engine.get_local_player() or not globals.local_player or not client.is_alive()  then
        return
    end

    animations.static_legs_on = animations.options:get(elements[1])
    animations.pitch_land_on = animations.options:get(elements[2])
    animations.sliding_legs_on = animations.options:get(elements[3])


    animations.sliding_legs(ent)
    animations.static_legs(ent)
    animations.pitch_land(ent)
end


animations.sliding_legs = function(ent)

    if not animations.sliding_legs_on then
        return
    end

    local m_flPoseParameter = ent:get_prop("DT_BaseAnimating", "m_flPoseParameter")
    m_flPoseParameter:set_float_index(0, 1)
end

animations.static_legs = function(ent)

    if not animations.static_legs_on then
        return
    end

    local m_flPoseParameter = ent:get_prop("DT_BaseAnimating", "m_flPoseParameter")
    m_flPoseParameter:set_float_index(6, 1)
end

animations.pitch_land = function(ent)

    if not animations.pitch_land_on then
        return
    end

    if not animations.on_land then
        return
    end
    
    local m_flPoseParameter = ent:get_prop("DT_BaseAnimating", "m_flPoseParameter")
    m_flPoseParameter:set_float_index(12, 0.45)
end

local ground_ticks = 0
local end_time = 0

animations.update_land = function()

    if not globals.local_player or not client.is_alive() then
        return
    end

    local on_ground = bit.band(globals.local_player:get_prop("DT_BasePlayer", "m_fFlags"):get_int(), 1)

    if on_ground == 1 then
        ground_ticks = ground_ticks + 1
    else
        ground_ticks = 0
        end_time = global_vars.curtime + 1
    end 

    animations.on_land = false

    if ground_ticks > 2 and end_time > global_vars.curtime then
        animations.on_land = true
    end

end

local x, y=render.get_screen()

--local lua={

  --  menu={
  --      --watermark=ui.add_checkbox("Enable watermark"),
  --      --color=ui.add_cog("Watermark", true, false),
  --  },

  --  get_tickrate=function()
  ---      if not engine.is_connected() then return 0 end
  --      return math.floor(1.0/global_vars.interval_per_tick)
  --  end,

  --  watermark_rect=function(x, y, w, h, color)
  --      render.rectangle_filled(x, y, w, 2, color)
  --      render.rectangle_filled(x, y, w, h-2, color.new(0, 0, 0, 120))
  --  end,

  --  font={
   --     segoe_ui=render.create_font("SegoUI", 13, 700, bit.bor(font_flags.dropshadow, font_flags.antialias)),
   -- },
    
--}

--function watermark()
  --  if not lua.menu.watermark:get() then return end
   -- local text=string.format("gamesense.xyz technologie | %s | rate: %s | ms: %s | %s", "gamesense.xyz technologie user", (lua.get_tickrate()), tostring(client.latency()+0), client.local_time("%H:%M:%S"))
   -- local text_size={lua.font.segoe_ui:get_size(text)}
   -- lua.watermark_rect(x-text_size[1]-15, 8, text_size[1]+10, text_size[2]+5, lua.menu.color:get_color())
   -- lua.font.segoe_ui:text(x-text_size[1]-10, 10, color.new(255, 255, 255, 255),text)
--end

--function on_paint()
  --  watermark()
--end

--callbacks.register("paint", on_paint)


local font = render.create_font("smallest-pixel 7", 12, 250, bit.bor(font_flags.outline))

local on_paint = function()
    render.update()
    indicators.main()
    antiaim.handle_visibility()
    animations.update_land()
end

callbacks.register("paint", on_paint)


callbacks.register("post_anim_update", animations.main)

--hitlog start
local screen_x, screen_y = render.get_screen()
local verdana = render.create_font('Verdana', 12, 500, bit.bor(font_flags.dropshadow, font_flags.outline));
ffi.cdef[[ 
typedef int(__thiscall* add_string_t)(void*, bool, const char*, int, const void*);
typedef struct {
        float x;
        float y;
        float z;
} vec3_struct;
    typedef void*(__thiscall* c_entity_list_get_client_entity_t)(void*, int);
    typedef void*(__thiscall* c_entity_list_get_client_entity_from_handle_t)(void*, uintptr_t);

    typedef int(__thiscall* c_weapon_get_muzzle_attachment_index_first_person_t)(void*, void*);
    typedef int(__thiscall* c_weapon_get_muzzle_attachment_index_third_person_t)(void*);
    typedef bool(__thiscall* c_entity_get_attachment_t)(void*, int, vec3_struct*);
	    typedef struct
    {
    unsigned char r, g, b;
        signed char exponent;
    } ColorRGBExp32;
]]	

local hit_log = ui.add_multi_dropdown("Hit logs", { "Screen" })

local active = { } 
function addLog(time, ...)
    table.insert(active, {
        ["text"] = { ... },
        ["time"] = time,
        ["delay"] = global_vars.realtime + time,
        ["color"] = {{5, 20, 40}, {5, 20, 40}},
        ["x_pad"] = -11,
        ["x_pad_b"] = -11,	
    })
end

local function PrintInChat(text)  
local FindElement = ffi.cast("unsigned long(__thiscall*)(void*, const char*)", client.find_sig("client.dll", "55 8B EC 53 8B 5D 08 56 57 8B F9 33 F6 39 77 28"))
local CHudChat = FindElement(ffi.cast("unsigned long**", ffi.cast("uintptr_t", client.find_sig("client.dll", "B9 ? ? ? ? E8 ? ? ? ? 8B 5D 08")) + 1)[0], "CHudChat")
local FFI_ChatPrint = ffi.cast("void(__cdecl*)(int, int, int, const char*, ...)", ffi.cast("void***", CHudChat)[0][27])  
      FFI_ChatPrint(CHudChat, 0, 0, string.format("%s ", text))
end	

local function en_hit_box(int_hitgroup)
    if int_hitgroup == nil then
        return;
    elseif int_hitgroup == 0 then
        return "body";
    elseif int_hitgroup == 1 then
        return "head";
    elseif int_hitgroup == 2 then
        return "chest";
    elseif int_hitgroup == 3 then
        return "stomach";
    elseif int_hitgroup == 4 then
        return "left arm";
    elseif int_hitgroup == 5 then
        return "right arm";
    elseif int_hitgroup == 6 then
        return "left leg";
    elseif int_hitgroup == 7 then
        return "right leg";
    elseif int_hitgroup == 10 then
        return "body";
    end
end

callbacks.register("player_hurt", function(event)
    local Hit_Color = ui.get('Profile','General','Global settings', 'Menu accent color'):get_color()
    local me = entity_list.get_client_entity( engine.get_local_player( ) )
    local attacker = engine.get_player_for_user_id( event:get_int( "attacker" ) )
    local attacker_player = engine.get_player_for_user_id( event:get_int("userid") )
	
    if attacker ==  engine.get_local_player( ) then
    local Remaining_Health = event:get_int('health')	
    local Damage_Done = event:get_int('dmg_health')
    local Get_name = engine.get_player_info( attacker_player ).name
    local Get_name_2 = engine.get_player_info( attacker ).name	
    local Get_hitbox = en_hit_box(event:get_int('hitgroup'))

    addLog(7,
    {Hit_Color:r(), Hit_Color:g(), Hit_Color:b(), "[Div"},
    {255, 255, 255,  "ine] Hit"},	
    {Hit_Color:r(), Hit_Color:g(), Hit_Color:b(), " "..Get_name},
    {255, 255, 255,  " in the"},
    {Hit_Color:r(), Hit_Color:g(), Hit_Color:b(), " "..Get_hitbox},
    {255, 255, 255,  " for damage"},	
    {Hit_Color:r(), Hit_Color:g(), Hit_Color:b(), " "..Damage_Done},	
    {255, 255, 255,  " damage ("},		
    {Hit_Color:r(), Hit_Color:g(), Hit_Color:b(), " "..Remaining_Health},	
    {255, 255, 255,  "  health remaining )"}		
    )
    delay = global_vars.realtime + 7
	
    chat_log = " \x04[+]\x01   hit \x0B"..Get_name.."\x01 in the \x0B" .. Get_hitbox .. "\x01 for \x0B" .. Damage_Done .. "\x01 damage (\x0B" .. Remaining_Health .."\x01 health remaining)"
	
    if hit_log:get('chat') then
        PrintInChat( chat_log )
    end
	
	end
end)

function LogText(x, y, lines)
    local x_pad = 0
    for i = 1, #lines do
        local line = lines[i]	
        local r, g, b, msg = line[1], line[2], line[3], line[4]
        local w_x, w_y = verdana:get_size( msg )
        verdana:text(x + x_pad, y, color.new(r, g, b, 255), msg)		
        x_pad = x_pad + w_x
    end
end

function GetTextSize(lines)
    local fw, fh = 0
    for i = 1, #lines do
        local w, h = verdana:get_size( lines[i][4] )
        fw, fh = fw + w, h
    end
    return fw, fh
end

function showLog(count, color, text, layer)
    local y = 1 + (15 * (count - 1))
    local w, h = GetTextSize(text)
    local mw = w < 150 and 150 or w
    if global_vars.realtime < layer.delay then
        if layer.x_pad < mw then layer.x_pad = layer.x_pad + (mw - layer.x_pad) * 0.05 end
        if layer.x_pad > mw then layer.x_pad = mw end
        if layer.x_pad > mw / 1.09 then
            if layer.x_pad_b < mw - 6 then
                layer.x_pad_b = layer.x_pad_b + ((mw - 6) - layer.x_pad_b) * 0.05
            end
        end
        if layer.x_pad_b > mw - 6 then
            layer.x_pad_b = mw - 6
        end
    else
        if layer.x_pad_b > -11 then
            layer.x_pad_b = layer.x_pad_b - (((mw - 5) - layer.x_pad_b) * 0.05) + 0.01
        end
        if layer.x_pad_b < (mw - 11) and layer.x_pad >= 0 then
            layer.x_pad = layer.x_pad - (((mw + 1) - layer.x_pad) * 0.05) + 0.01
        end
        if layer.x_pad < 0 then
            table.remove(active, count)
        end
    end
    LogText( layer.x_pad_b - mw + 18 , y + 9, text)			
end
	
callbacks.register('paint', function()
    if not hit_log:get('Screen') then
	    return
	end
    for index, hitlog in pairs(active) do	
        showLog(index, hitlog.color, hitlog.text, hitlog)
    end
end)
--hitlog end


local font2 = render.create_font("Verdana", 12, 100, bit.bor(font_flags.outline));
local arrows = render.create_font("Verdana", 14, 500, bit.bor(font_flags.outline))
local pixel= render.create_font("Smallest Pixel-7", 11, 500, bit.bor(font_flags.outline))
local screen_size_x, screen_size_y = render.get_screen()
local screen_center = vector2d.new(screen_size_x / 2, screen_size_y / 2)

local function on_paint()

    local r, g, b, a = indicators_color:get_color():r(), indicators_color:get_color():g(), indicators_color:get_color():b(), indicators_color:get_color():a()
    pos = vector2d.new(screen_center.x, screen_center.y)

    if arrows_checkbox:get() == true then
    if anti_aim.inverted() then
        arrows:text(pos.x + 50, pos.y - 10 , color.new(r,g,b,a), " >  ")     
        arrows:text(pos.x - 65, pos.y - 10 , color.new(45, 45, 45, 255), " <  ")
    else
        arrows:text(pos.x - 65, pos.y - 10 , color.new(r,g,b,a), " <  ")   
        arrows:text(pos.x + 50, pos.y - 10 , color.new(45, 45, 45, 255), " >  ")     
    end   
    end
end
callbacks.register("paint", on_paint)

