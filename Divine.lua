--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.1.6) ~  Much Love, Ferib 

]]--

local obf_stringchar = string.char;
local obf_stringbyte = string.byte;
local obf_stringsub = string.sub;
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib.bxor;
local obf_tableconcat = table.concat;
local obf_tableinsert = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	local result = {};
	for i = 1, #LUAOBFUSACTOR_STR do
		obf_tableinsert(result, obf_stringchar(obf_XOR(obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_STR, i, i + 1)), obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_KEY, 1 + ((i - 1) % #LUAOBFUSACTOR_KEY), 1 + ((i - 1) % #LUAOBFUSACTOR_KEY) + 1))) % 256));
	end
	return obf_tableconcat(result);
end
ui.add_label(LUAOBFUSACTOR_DECRYPT_STR_0("\151\209\1\40\13\79\224\191\205\22", "\211\184\119\65\99\42\206"));
ui.add_label(LUAOBFUSACTOR_DECRYPT_STR_0("\17\243\40\142\95\154\116\112\193\41\133\83\129\61\56", "\80\134\92\230\48\232\78"));
ui.add_label(LUAOBFUSACTOR_DECRYPT_STR_0("\174\68\169\37\197\48\131\208\13\190\47\217\33\136\152\73\244\33\205\109\173\155\93\156\30\224\20\180\222\124", "\234\45\218\70\170\66\231"));
render.fonts = {[LUAOBFUSACTOR_DECRYPT_STR_0("\148\222\241\131\141\222\198\221\211\207\225", "\224\191\153\236")]=render.create_font(LUAOBFUSACTOR_DECRYPT_STR_0("\45\35\137\215\20\35", "\121\66\225\184"), 13, 500, bit.bor(font_flags.dropshadow, font_flags.antialias))};
render.screen = {[LUAOBFUSACTOR_DECRYPT_STR_0("\111", "\24\25\31\113\32\229")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\186", "\210\136\123\64\126")]=0};
render.center_screen = {[LUAOBFUSACTOR_DECRYPT_STR_0("\145", "\230\198\20\131\198\141\201")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\68", "\44\91\198\215\119\211\94")]=0};
render.update = function()
	local screen_size_x, screen_size_y = render.get_screen();
	render.screen.w = screen_size_x;
	render.screen.h = screen_size_y;
	render.center_screen.w = screen_size_x / 2;
	render.center_screen.h = screen_size_y / 2;
end;
local function round(num, numDecimalPlaces)
	local mult = 10 ^ (numDecimalPlaces or 0);
	return math.floor((num * mult) + 0.5) / mult;
end
ui.add_label(LUAOBFUSACTOR_DECRYPT_STR_0("", "\54\112\205\66\235\93"));
ui.add_label(LUAOBFUSACTOR_DECRYPT_STR_0("\92\15\204\17\124\92\15\204\17\124\92\15\204\112\50\8\70\193\112\53\17\15\191\72\47\8\74\129\66\124\92\15\204\17\124\92\15\204\17\124\92\15\204\17\124\92", "\124\47\236\49\92"));
local aapresets = {[1]=LUAOBFUSACTOR_DECRYPT_STR_0("\245\253\39\218", "\187\146\73\191\90\85\201"),[2]=LUAOBFUSACTOR_DECRYPT_STR_0("\49\236\103\252\46\3\226\99\252\125\58\226\97\237\56\2", "\112\139\21\153\93"),[3]=LUAOBFUSACTOR_DECRYPT_STR_0("\116\225\13\215\57\239\255", "\32\128\99\188\25\174\190\96"),[4]=LUAOBFUSACTOR_DECRYPT_STR_0("\240\9\55\75\178\59\5\81\215\16\51\85", "\163\100\86\39\222\27\79\56")};
local antiaim_options = ui.add_dropdown(LUAOBFUSACTOR_DECRYPT_STR_0("\56\71\199\81\152\56\64\222\24\229\11\76\192\93\193\10", "\121\41\179\56\181"), {aapresets[1],aapresets[2],aapresets[3],aapresets[4]});
local cstrike = {[LUAOBFUSACTOR_DECRYPT_STR_0("\78\164\22", "\45\201\114\156\152\123\144")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\43\164\29\26", "\89\203\113\118\137\39\171\17")]=0};
cstrike.update = function(pdr_cmd)
	cstrike.cmd = pdr_cmd;
	cstrike.roll = pdr_cmd.viewangles.z;
end;
local globals = {[LUAOBFUSACTOR_DECRYPT_STR_0("\11\85\216\48\11\101\203\61\6\67\222\35", "\103\58\187\81")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\36\71\119\35\32", "\69\43\30\85")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\238\92\83\187\116\247", "\153\57\50\203\27")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\28\171\222\6\229\138\52\186\198\6\239", "\107\206\191\118\138\228")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\167\181\235\54\142\189\224\38\189\185\253", "\209\220\142\65")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\210\251\22\135\211\95\40\211\241", "\189\149\73\224\161\48\93")]=nil};
globals.update = function()
	globals.local_player = entity_list.get_client_entity(engine.get_local_player());
	globals.alive = client.is_alive();
	globals.weapon = entity_list.get_client_entity(globals.local_player:get_prop(LUAOBFUSACTOR_DECRYPT_STR_0("\41\235\159\130\71\45\50\163\2\210\162\161\82\29\63\129\31\222\163\180\67\44", "\109\191\192\192\38\94\87\224"), LUAOBFUSACTOR_DECRYPT_STR_0("\9\13\44\214\5\103\13\36\33\192\3\114\20\61\42", "\100\82\68\151\102\19")));
	globals.weapon_type = globals.weapon:get_prop(LUAOBFUSACTOR_DECRYPT_STR_0("\173\54\158\237\136\17\164\238\157\22\179\198\139\23\181\206\139\14\164\230\157\7\172", "\233\98\193\175"), LUAOBFUSACTOR_DECRYPT_STR_0("\187\126\173\246\109\177\206\146\68\162\214\119\189\215\191\78\170\246\119\176\198\174", "\214\33\196\191\25\212\163")):get_int();
	globals.view_angles = engine.get_view_angles();
end;
cstrike.weapons = {[LUAOBFUSACTOR_DECRYPT_STR_0("\227\228\226\228\249\231", "\135\129\131\131\149\130\43\96")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\38\41\186\175\92", "\66\92\219\195\47")]=2,[LUAOBFUSACTOR_DECRYPT_STR_0("\26\179\169\94\182\242\10\191\177", "\124\218\223\59\197\151")]=3,[LUAOBFUSACTOR_DECRYPT_STR_0("\23\77\10\64\217", "\112\33\101\35\178")]=4,[LUAOBFUSACTOR_DECRYPT_STR_0("\117\213\154", "\20\162\234\232\136\148\33\96")]=9,[LUAOBFUSACTOR_DECRYPT_STR_0("\220\222\253\254\141", "\187\237\142\153\188")]=11,[LUAOBFUSACTOR_DECRYPT_STR_0("\150\243\255\89\219", "\226\150\156\45")]=30,[LUAOBFUSACTOR_DECRYPT_STR_0("\151\243\76\34\96", "\231\193\124\18\80\200\125\31")]=32,[LUAOBFUSACTOR_DECRYPT_STR_0("\165\146\174\16", "\213\160\155\32\179\199")]=36,[LUAOBFUSACTOR_DECRYPT_STR_0("\167\34\174\13\107\233", "\212\65\207\127\89\217")]=38,[LUAOBFUSACTOR_DECRYPT_STR_0("\5\81\30\246\181", "\118\34\121\198\141")]=40,[LUAOBFUSACTOR_DECRYPT_STR_0("\254\173\81\132\115\250\173\85", "\140\200\39\235\31")]=64,[LUAOBFUSACTOR_DECRYPT_STR_0("\243\1\205", "\134\114\189\181")]=262205};
cstrike.get_health = function(entity)
	if entity then
		local health = entity:get_prop(LUAOBFUSACTOR_DECRYPT_STR_0("\114\123\187\3\87\92\129\17\90\78\157\36\68", "\54\47\228\65"), LUAOBFUSACTOR_DECRYPT_STR_0("\211\13\195\7\169\200\210\38\194", "\190\82\170\79\204\169")):get_int();
		return math.round(health);
	end
	return nil;
end;
cstrike.get_velocity = function(entity)
	if entity then
		local x = entity:get_prop(LUAOBFUSACTOR_DECRYPT_STR_0("\44\48\157\109\114\190\21\56\8\163\86\118\191", "\104\100\194\47\19\205\112"), LUAOBFUSACTOR_DECRYPT_STR_0("\31\20\203\39\195\60\47\38\29\40\212\54\217\49\122\23", "\114\75\189\66\160\106\74\74")):get_float();
		local y = entity:get_prop(LUAOBFUSACTOR_DECRYPT_STR_0("\151\228\66\199\89\87\35\43\191\209\100\224\74", "\211\176\29\133\56\36\70\123"), LUAOBFUSACTOR_DECRYPT_STR_0("\228\114\220\246\63\223\72\198\252\63\224\89\211\200\109\212", "\137\45\170\147\92")):get_float();
		return math.round(math.sqrt((x * x) + (y * y)));
	end
end;
cstrike.is_alive = function(entity)
	if entity then
		local health = cstrike.get_health(entity);
		if (health > 0) then
			return true;
		end
	end
	return false;
end;
cstrike.is_standing = function(entity)
	if entity then
		local is_moving = cstrike.is_moving(entity);
		if not is_moving then
			return true;
		end
	end
	return false;
end;
cstrike.is_slowwalking = function(entity)
	if entity then
		if ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\16\49\93\115", "\93\88\46\16\208\218\214\178"), LUAOBFUSACTOR_DECRYPT_STR_0("\228\119\127\88\163\84\21", "\163\18\17\61\209\53\121"), LUAOBFUSACTOR_DECRYPT_STR_0("\218\241\237\207\207\242\240\239", "\151\158\155\170\162"), LUAOBFUSACTOR_DECRYPT_STR_0("\15\216\63\187\191\10\121\71\53\219\62\236\244\2\111", "\92\180\80\204\159\103\22\51")):get_key() then
			return true;
		end
	end
	return false;
end;
cstrike.is_crouching = function(entity)
	if entity then
		if cstrike.cmd:has_flag(4) then
			return true;
		end
	end
	return false;
end;
cstrike.is_fake_ducking = function(entity)
	if entity then
		local duck_speed = entity:get_prop(LUAOBFUSACTOR_DECRYPT_STR_0("\198\152\146\247\25\77\217\187\238\173\180\208\10", "\130\204\205\181\120\62\188\235"), LUAOBFUSACTOR_DECRYPT_STR_0("\137\115\48\69\222\68\129\143\127\38\76\255\85", "\228\44\86\41\154\49\226")):get_float();
		local duck_amount = entity:get_prop(LUAOBFUSACTOR_DECRYPT_STR_0("\247\8\33\161\201\192\57\46\143\201\202\57\12", "\179\92\126\227\168"), LUAOBFUSACTOR_DECRYPT_STR_0("\227\190\93\32\84\76\160\229\160\86\35\101\87\183", "\142\225\59\76\16\57\195")):get_float();
		if ((duck_speed == 8) and (duck_amount > 0) and not cstrike.cmd:has_flag(1)) then
			return true;
		end
	end
	return false;
end;
cstrike.is_inair = function(entity)
	if entity then
		local local_player = entity_list.get_client_entity(engine.get_local_player());
		local ground_entity = local_player:get_prop(LUAOBFUSACTOR_DECRYPT_STR_0("\234\51\245\91\87\221\2\250\117\87\215\2\216", "\174\103\170\25\54"), LUAOBFUSACTOR_DECRYPT_STR_0("\195\32\84\157\165\56\219\17\88\159\185\35\199\11\69", "\174\127\60\218\215\87")):get_int();
		if (ground_entity == -1) then
			return true;
		end
	end
	return false;
end;
cstrike.is_moving = function(entity)
	local local_player = entity_list.get_client_entity(engine.get_local_player());
	if entity then
		local velocity = cstrike.get_velocity(entity);
		if ((velocity > 4) and not cstrike.is_inair(local_player)) then
			return true;
		end
	end
	return false;
end;
cstrike.is_scoped = function(entity)
	if entity then
		local scoped = entity:get_prop(LUAOBFUSACTOR_DECRYPT_STR_0("\146\0\106\111\24\97\186\53\76\73\57", "\214\84\53\44\75\49"), LUAOBFUSACTOR_DECRYPT_STR_0("\192\56\227\144\91\126\206\8\241\188\76", "\173\103\129\217\40\45")):get_int();
		if (scoped == 1) then
			return true;
		end
	end
	return false;
end;
math.radian_to_degree = function(radian)
	return (radian * 180) / math.pi;
end;
math.degree_to_radian = function(degree)
	return (degree * math.pi) / 180;
end;
math.round = function(x)
	return (((x % 1) >= 0.5) and math.ceil(x)) or math.floor(x);
end;
math.normalize = function(angle)
	while angle < -180 do
		angle = angle + 360;
	end
	while angle > 180 do
		angle = angle - 360;
	end
	return angle;
end;
math.angle_to_vector = function(angle)
	local pitch = angle.x;
	local yaw = angle.y;
	return vector.new(math.cos((math.pi / 180) * pitch) * math.cos((math.pi / 180) * yaw), math.cos((math.pi / 180) * pitch) * math.sin((math.pi / 180) * yaw), -math.sin((math.pi / 180) * pitch));
end;
math.calculate_angles = function(from, to)
	local sub = {[LUAOBFUSACTOR_DECRYPT_STR_0("\223", "\167\91\147\160\155\230")]=(to.x - from.x),[LUAOBFUSACTOR_DECRYPT_STR_0("\82", "\43\158\187\209\20\57")]=(to.y - from.y),[LUAOBFUSACTOR_DECRYPT_STR_0("\245", "\143\122\196\185\23")]=(to.z - from.z)};
	local hyp = math.sqrt((sub.x * sub.x * 2) + (sub.y * sub.y * 2));
	local yaw = math.radian_to_degree(math.atan2(sub.y, sub.x));
	local pitch = math.radian_to_degree(-math.atan2(sub.z, hyp));
	return QAngle.new(pitch, yaw, 0);
end;
math.calculate_fov = function(from, to, angles)
	local calculated = math.calculate_angles(from, to);
	local yaw_delta = angles.yaw - calculated.yaw;
	local pitch_delta = angles.pitch - calculated.pitch;
	if (yaw_delta > 180) then
		yaw_delta = yaw_delta - 360;
	end
	if (yaw_delta < -180) then
		yaw_delta = yaw_delta + 360;
	end
	return math.sqrt((yaw_delta * yaw_delta * 2) + (pitch_delta * pitch_delta * 2));
end;
local utils = {};
utils.clamp = function(v, min, max)
	local num = v;
	num = ((num < min) and min) or num;
	num = ((num > max) and max) or num;
	return num;
end;
utils.fluctuate = function(min, max)
	local used = false;
	local ret = 0;
	if used then
		ret = math.random(min, max);
		used = false;
	else
		ret = math.random(min, max);
		used = true;
	end
	return ret;
end;
utils.get_crosshair_target = function()
	if not globals.local_player then
		return;
	end
	local data = {[LUAOBFUSACTOR_DECRYPT_STR_0("\174\85\214\138\222\174", "\218\52\164\237\187")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\73\133\7", "\47\234\113\71")]=180};
	local players = entity_list.get_all(LUAOBFUSACTOR_DECRYPT_STR_0("\38\3\66\132\28\4\57\116\166", "\101\64\17\212\112"));
end;
local antiaim = {};
antiaim.run = function()
	local fake_yaw_type = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\137\254\224\216", "\219\159\135\189"), LUAOBFUSACTOR_DECRYPT_STR_0("\141\119\76\61\118\173\112\85", "\204\25\56\84\91"), LUAOBFUSACTOR_DECRYPT_STR_0("\85\21\79\228\96\17\77", "\18\112\33\129"), LUAOBFUSACTOR_DECRYPT_STR_0("\119\65\217\219\67\15\80\87\146\202\26\6\84", "\49\32\178\190\99\118"));
	local body_yaw_limit = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\47\51\199\197", "\125\82\160\160\57\119"), LUAOBFUSACTOR_DECRYPT_STR_0("\63\163\241\170\3\35\23\160", "\126\205\133\195\46\66"), LUAOBFUSACTOR_DECRYPT_STR_0("\134\42\186\177\46\178\37", "\193\79\212\212\92\211\73"), LUAOBFUSACTOR_DECRYPT_STR_0("\161\11\130\93\6\154\5\145\4\74\138\9\143\80", "\227\100\230\36\38"));
	local fake_yaw_limit = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\142\58\235\129", "\220\91\140\228\79"), LUAOBFUSACTOR_DECRYPT_STR_0("\231\206\234\209\93\237\40\188", "\166\160\158\184\112\140\65\209"), LUAOBFUSACTOR_DECRYPT_STR_0("\159\136\213\122\171\126\94", "\216\237\187\31\217\31\50"), LUAOBFUSACTOR_DECRYPT_STR_0("\10\121\29\193\148\230\232\59\56\26\205\217\246\253", "\76\24\118\164\180\159\137"));
	local yaw_jitter = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\60\24\25\87", "\110\121\126\50\214\51\109"), LUAOBFUSACTOR_DECRYPT_STR_0("\17\163\176\161\125\172\173\165", "\80\205\196\200"), LUAOBFUSACTOR_DECRYPT_STR_0("\165\194\183\119\250\9\142", "\226\167\217\18\136\104"), LUAOBFUSACTOR_DECRYPT_STR_0("\123\71\157\97\34\36\86\82\143\51", "\34\38\234\65\72\77"));
	local yaw_jitter_conditions = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\101\226\238\248", "\55\131\137\157\94\222\191"), LUAOBFUSACTOR_DECRYPT_STR_0("\161\112\180\128\183\173\177\62", "\224\30\192\233\154\204\216\83"), LUAOBFUSACTOR_DECRYPT_STR_0("\146\81\134\92\193\202\33", "\213\52\232\57\179\171\77\157"), LUAOBFUSACTOR_DECRYPT_STR_0("\34\60\61\254\92\209\15\41\47\172\22\219\20\51\46\183\66\209\20\51\57", "\123\93\74\222\54\184"));
	local yaw_jitter_type = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\6\238\209\241", "\84\143\182\148\86"), LUAOBFUSACTOR_DECRYPT_STR_0("\136\248\144\17\79\168\255\137", "\201\150\228\120\98"), LUAOBFUSACTOR_DECRYPT_STR_0("\17\175\138\201\215\55\166", "\86\202\228\172\165"), LUAOBFUSACTOR_DECRYPT_STR_0("\143\91\48\152\8\9\162\78\34\202\66\20\175\74\34", "\214\58\71\184\98\96"));
	local yaw_jitter_range = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\245\232\77\227", "\167\137\42\134"), LUAOBFUSACTOR_DECRYPT_STR_0("\55\236\49\53\30\23\235\40", "\118\130\69\92\51"), LUAOBFUSACTOR_DECRYPT_STR_0("\164\251\39\126\145\255\37", "\227\158\73\27"), LUAOBFUSACTOR_DECRYPT_STR_0("\188\239\165\91\91\140\250\166\30\67\197\252\179\21\86\128", "\229\142\210\123\49"));
	local fake_yaw_direction = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\237\166\32\202", "\191\199\71\175\210\198\75"), LUAOBFUSACTOR_DECRYPT_STR_0("\38\209\44\88\74\222\49\92", "\103\191\88\49"), LUAOBFUSACTOR_DECRYPT_STR_0("\161\85\240\193\29\135\92", "\230\48\158\164\111"), LUAOBFUSACTOR_DECRYPT_STR_0("\84\75\168\254\28\107\75\180\187\88\123\88\166\248\72\123\69\173", "\18\42\195\155\60"));
	local yaw_additive = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\133\31\90\203", "\215\126\61\174\163\146\237"), LUAOBFUSACTOR_DECRYPT_STR_0("\45\12\14\45\65\3\19\41", "\108\98\122\68"), LUAOBFUSACTOR_DECRYPT_STR_0("\120\31\243\198\155\68\26", "\63\122\157\163\233\37\118\30"), LUAOBFUSACTOR_DECRYPT_STR_0("\17\205\224\116\30\75\44\197\227\61\9\74", "\72\172\151\84\127\47"));
	local body_roll = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\105\228\242\45", "\59\133\149\72\149\211\34\201"), LUAOBFUSACTOR_DECRYPT_STR_0("\37\88\217\193\226\5\95\192", "\100\54\173\168\207"), LUAOBFUSACTOR_DECRYPT_STR_0("\255\13\85\243\242\58\212", "\184\104\59\150\128\91"), LUAOBFUSACTOR_DECRYPT_STR_0("\29\197\55\57\127\216\60\44\51", "\95\170\83\64"));
	local body_roll_amount = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\253\185\70\75", "\175\216\33\46\184\51"), LUAOBFUSACTOR_DECRYPT_STR_0("\231\69\26\224\246\207\207\70", "\166\43\110\137\219\174"), LUAOBFUSACTOR_DECRYPT_STR_0("\6\86\215\225\178\32\95", "\65\51\185\132\192"), LUAOBFUSACTOR_DECRYPT_STR_0("\31\30\27\97\21\246\203\207\49\81\30\117\90\241\202\215", "\93\113\127\24\53\132\164\163"));
	local inverter_state = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\200\230\234\224", "\154\135\141\133\234\198\94"), LUAOBFUSACTOR_DECRYPT_STR_0("\46\138\8\4\12\126\6\137", "\111\228\124\109\33\31"), LUAOBFUSACTOR_DECRYPT_STR_0("\18\19\210\24\163\36\212", "\85\118\188\125\209\69\184\167"), LUAOBFUSACTOR_DECRYPT_STR_0("\45\203\248\1\65\196\229\5\76\204\226\30\9\215\248", "\108\165\140\104"));
	if (antiaim_options:get() == 0) then
	end
	if (antiaim_options:get() == 1) then
		if (cstrike.is_standing(globals.local_player) or cstrike.is_slowwalking(globals.local_player)) then
			fake_yaw_direction:set(0);
			yaw_jitter:set(true);
			yaw_jitter_conditions:set(LUAOBFUSACTOR_DECRYPT_STR_0("\45\5\85\27\52\23\31\83", "\126\113\52\117\80"), true);
			yaw_jitter_conditions:set(LUAOBFUSACTOR_DECRYPT_STR_0("\113\205\231\57\5\38\90", "\38\172\139\82\108\72\61"), true);
			yaw_jitter_type:set(2);
			yaw_jitter_range:set(-38);
			body_yaw_limit:set(23);
			fake_yaw_limit:set(24);
			fake_yaw_limit:set(27);
			fake_yaw_type:set(1);
		end
		if (cstrike.is_inair(globals.local_player) and not cstrike.is_moving(globals.local_player)) then
			yaw_additive:set(0);
			yaw_jitter:set(true);
			yaw_jitter_conditions:set(LUAOBFUSACTOR_DECRYPT_STR_0("\38\238\104\203\228\21", "\111\128\72\170\141\103\137"), true);
			yaw_jitter_type:set(2);
			yaw_jitter_range:set(-34);
			fake_yaw_type:set(1);
			body_yaw_limit:set(42);
			fake_yaw_limit:set(37);
			fake_yaw_direction:set(0);
			body_roll:set(0);
		end
		if (not cstrike.is_slowwalking(globals.local_player) and cstrike.is_moving(globals.local_player)) then
			yaw_additive:set(0);
			yaw_jitter:set(true);
			yaw_jitter_conditions:set(LUAOBFUSACTOR_DECRYPT_STR_0("\15\2\232\119\5\178", "\66\109\158\30\107\213"), true);
			yaw_jitter_type:set(2);
			yaw_jitter_range:set(-42);
			fake_yaw_type:set(1);
			body_yaw_limit:set(60);
			fake_yaw_limit:set(58);
			fake_yaw_direction:set(0);
			body_roll:set(0);
		end
		if (not cstrike.is_inair(globals.local_player) and cstrike.is_crouching(globals.local_player)) then
			yaw_additive:set(0);
			yaw_jitter:set(true);
			yaw_jitter_conditions:set(LUAOBFUSACTOR_DECRYPT_STR_0("\124\206\224\5\160\229", "\49\161\150\108\206\130\119\132"), true);
			yaw_jitter_type:set(2);
			yaw_jitter_range:set(-44);
			fake_yaw_type:set(1);
			body_yaw_limit:set(46);
			fake_yaw_limit:set(38);
			fake_yaw_direction:set(0);
			body_roll:set(0);
		end
	end
	if (antiaim_options:get() == 2) then
		if (cstrike.is_standing(globals.local_player) or cstrike.is_slowwalking(globals.local_player)) then
			fake_yaw_direction:set(0);
			yaw_jitter:set(true);
			yaw_jitter_conditions:set(LUAOBFUSACTOR_DECRYPT_STR_0("\72\109\128\54\127\112\143\63", "\27\25\225\88"), true);
			yaw_jitter_conditions:set(LUAOBFUSACTOR_DECRYPT_STR_0("\215\90\165\250\43\197\246", "\128\59\201\145\66\171\145"), true);
			yaw_jitter_type:set(2);
			yaw_jitter_range:set(-24);
			body_yaw_limit:set(33);
			fake_yaw_limit:set(28);
			fake_yaw_type:set(1);
		end
		if (cstrike.is_inair(globals.local_player) and not cstrike.is_moving(globals.local_player)) then
			yaw_additive:set(0);
			yaw_jitter:set(true);
			yaw_jitter_conditions:set(LUAOBFUSACTOR_DECRYPT_STR_0("\202\12\85\196\49\100", "\131\98\117\165\88\22\183\147"), true);
			yaw_jitter_type:set(2);
			yaw_jitter_range:set(-37);
			fake_yaw_type:set(1);
			body_yaw_limit:set(55);
			fake_yaw_limit:set(53);
			fake_yaw_direction:set(0);
			body_roll:set(0);
		end
		if (not cstrike.is_slowwalking(globals.local_player) and cstrike.is_moving(globals.local_player)) then
			yaw_additive:set(0);
			yaw_jitter:set(true);
			yaw_jitter_conditions:set(LUAOBFUSACTOR_DECRYPT_STR_0("\219\160\205\44\29\41", "\150\207\187\69\115\78\174\222"), true);
			yaw_jitter_type:set(2);
			yaw_jitter_range:set(-34);
			fake_yaw_type:set(1);
			body_yaw_limit:set(58);
			fake_yaw_limit:set(36);
			fake_yaw_direction:set(0);
			body_roll:set(0);
		end
		if (not cstrike.is_inair(globals.local_player) and cstrike.is_crouching(globals.local_player)) then
			yaw_additive:set(0);
			yaw_jitter:set(true);
			yaw_jitter_conditions:set(LUAOBFUSACTOR_DECRYPT_STR_0("\46\58\57\52\222\63", "\99\85\79\93\176\88\91\126"), true);
			yaw_jitter_type:set(2);
			yaw_jitter_range:set(7);
			fake_yaw_type:set(1);
			body_yaw_limit:set(46);
			fake_yaw_limit:set(38);
			fake_yaw_direction:set(0);
			body_roll:set(0);
		end
	end
	if (antiaim_options:get() == 3) then
		if (cstrike.is_standing(globals.local_player) or cstrike.is_slowwalking(globals.local_player)) then
			fake_yaw_direction:set(0);
			yaw_jitter:set(true);
			yaw_jitter_conditions:set(LUAOBFUSACTOR_DECRYPT_STR_0("\59\146\79\0\45\22\88\15", "\104\230\46\110\73\127\54"), true);
			yaw_jitter_conditions:set(LUAOBFUSACTOR_DECRYPT_STR_0("\60\21\90\50\2\26\81", "\107\116\54\89"), true);
			yaw_jitter_type:set(2);
			yaw_jitter_range:set(-29);
			body_yaw_limit:set(23);
			fake_yaw_limit:set(24);
			fake_yaw_type:set(1);
		end
		if (cstrike.is_inair(globals.local_player) and not cstrike.is_moving(globals.local_player)) then
			yaw_additive:set(0);
			yaw_jitter:set(true);
			yaw_jitter_conditions:set(LUAOBFUSACTOR_DECRYPT_STR_0("\145\6\3\176\9\105", "\216\104\35\209\96\27"), true);
			yaw_jitter_type:set(2);
			yaw_jitter_range:set(-38);
			fake_yaw_type:set(1);
			body_yaw_limit:set(42);
			fake_yaw_direction:set(0);
			body_roll:set(0);
		end
		if (not cstrike.is_slowwalking(globals.local_player) and cstrike.is_moving(globals.local_player)) then
			yaw_additive:set(0);
			yaw_jitter:set(true);
			yaw_jitter_conditions:set(LUAOBFUSACTOR_DECRYPT_STR_0("\84\244\74\170\119\252", "\25\155\60\195"), true);
			yaw_jitter_type:set(2);
			yaw_jitter_range:set(8);
			fake_yaw_type:set(1);
			body_yaw_limit:set(60);
			fake_yaw_direction:set(0);
			body_roll:set(0);
		end
		if (not cstrike.is_inair(globals.local_player) and cstrike.is_crouching(globals.local_player)) then
			yaw_additive:set(0);
			yaw_jitter:set(true);
			yaw_jitter_conditions:set(LUAOBFUSACTOR_DECRYPT_STR_0("\192\167\178\56\122\42", "\141\200\196\81\20\77"), true);
			yaw_jitter_type:set(2);
			yaw_jitter_range:set(12);
			fake_yaw_type:set(1);
			body_yaw_limit:set(46);
			fake_yaw_direction:set(0);
			body_roll:set(0);
		end
	end
end;
antiaim.handle_visibility = function()
	local state = antiaim_options:get();
end;
local on_post_move = function(cmd)
	globals.update();
	cstrike.update(cmd);
	antiaim.run();
end;
callbacks.register(LUAOBFUSACTOR_DECRYPT_STR_0("\209\253\57\156\254\255\37\158\196", "\161\146\74\232"), on_post_move);
ui.add_label(LUAOBFUSACTOR_DECRYPT_STR_0("", "\79\160\20\114\110\164\182"));
ui.add_label(LUAOBFUSACTOR_DECRYPT_STR_0("\61\97\31\158\109\91\26\153\61\97\31\158\109\91\26\153\61\97\31\158\31\26\93\220\127\46\75\158\109\91\26\153\61\97\31\158\109\91\26\153\61\97\31\158", "\29\65\63\190\77\123\58\185"));
local tickbase_boost = ui.add_checkbox(LUAOBFUSACTOR_DECRYPT_STR_0("\97\3\176\114\235\70\70\68\28\229\89\234\83\64\74\26\160\125\226\77\70", "\37\108\197\16\135\35\50"));
tickbase_boost:set(false);
local ideal_tick = ui.add_checkbox(LUAOBFUSACTOR_DECRYPT_STR_0("\52\203\254\126\194\103\41\198\248\116", "\125\175\155\31\174\71"));
local cmd_ticks = cvar.find_var(LUAOBFUSACTOR_DECRYPT_STR_0("\8\23\188\202\205\3\20\144\213\207\22\5\147\213\195\24\4\144\212\216\18\2\136\212", "\123\97\227\167\172"));
callbacks.register(LUAOBFUSACTOR_DECRYPT_STR_0("\88\203\74\104\185\182\2\94\193", "\40\164\57\28\230\219\109"), function()
	if (ideal_tick:get() == true) then
		cmd_ticks:set_value_int(19);
	end
	if (ideal_tick:get() == false) then
		cmd_ticks:set_value_int(16);
	end
end);
local cmd_ticks = cvar.find_var(LUAOBFUSACTOR_DECRYPT_STR_0("\195\109\238\47\33\18\197\104\195\33\45\14\192\105\222\33\37\25\195\111\216\33\43\25", "\176\27\177\66\64\106"));
function TickbaseBoost()
	if (tickbase_boost:get() == true) then
		cmd_ticks:set_value_int(19);
	else
		cmd_ticks:set_value_int(16);
	end
end
callbacks.register(LUAOBFUSACTOR_DECRYPT_STR_0("\94\81\110\106\116\67\81\107\123", "\46\62\29\30\43"), TickbaseBoost);
local disable_lc_checkbox = ui.add_checkbox(LUAOBFUSACTOR_DECRYPT_STR_0("\2\22", "\67\78\138\190\84\233\232"));
local cl_lagcompensation = cvar.find_var(LUAOBFUSACTOR_DECRYPT_STR_0("\163\227\25\171\161\232\37\168\173\255\35\169\179\238\50\174\175\225", "\192\143\70\199"));
local TEAM_TERRORIST = 2;
local TEAM_CT = 3;
local function get_player_team(player)
	local m_iTeamNum = player:get_prop(LUAOBFUSACTOR_DECRYPT_STR_0("\86\152\46\151\181\97\169\52\187\160\123\184\8", "\18\204\113\213\212"), LUAOBFUSACTOR_DECRYPT_STR_0("\165\247\89\153\9\243\165\101\189\197", "\200\168\48\205\108\146\200\43"));
	return m_iTeamNum:get_int();
end
local function IsConnectedUserInfoChangeAllowed(player)
	local team_num = get_player_team(player);
	if ((team_num == TEAM_TERRORIST) or (team_num == TEAM_CT)) then
		return false;
	end
	return true;
end
local previous_dlc_state = disable_lc_checkbox:get();
local changing_from_team = false;
local previous_team_num = -1;
local team_swap_time = -1;
local function on_paint()
	local local_player_idx = engine.get_local_player();
	local local_player = entity_list.get_client_entity(local_player_idx);
	if (not engine.is_connected() or IsConnectedUserInfoChangeAllowed(local_player)) then
		cl_lagcompensation:set_value_int((disable_lc_checkbox:get() and 0) or 1);
		if (changing_from_team and (global_vars.curtime > team_swap_time)) then
			engine.execute_client_cmd(LUAOBFUSACTOR_DECRYPT_STR_0("\45\114\46\126\80\93\10\12\103", "\71\29\71\16\36\56\107\97") .. tostring(previous_team_num) .. LUAOBFUSACTOR_DECRYPT_STR_0("\197\25", "\229\40\176\57\113\22\124\220"));
			changing_from_team = false;
		end
	elseif (disable_lc_checkbox:get() ~= previous_dlc_state) then
		previous_team_num = get_player_team(local_player);
		engine.execute_client_cmd(LUAOBFUSACTOR_DECRYPT_STR_0("\49\37\123\170\189\205\54\48", "\66\85\30\201\201\172"));
		changing_from_team = true;
		team_swap_time = global_vars.curtime + 1.5;
		previous_dlc_state = disable_lc_checkbox:get();
	end
end
local function init()
	callbacks.register(LUAOBFUSACTOR_DECRYPT_STR_0("\155\254\247\49\178", "\235\159\158\95\198\55\122\231"), on_paint);
end
init();
ui.add_label(LUAOBFUSACTOR_DECRYPT_STR_0("", "\230\108\201\39\99"));
ui.add_label(LUAOBFUSACTOR_DECRYPT_STR_0("\236\81\196\152\236\81\196\152\236\81\196\152\236\81\196\152\236\81\196\152\236\39\141\203\185\16\136\203\236\81\196\152\236\81\196\152\236\81\196\152\236\81\196\152\236\81", "\204\113\228\184"));
local indic_toggle = ui.add_checkbox(LUAOBFUSACTOR_DECRYPT_STR_0("\24\93\82\47\253\89\49\23\35\64", "\81\51\54\70\158\56\69\120"));
local arrows_checkbox = ui.add_checkbox(LUAOBFUSACTOR_DECRYPT_STR_0("\241\230\211\228\93\163\174\230\234\196\248\19\129\252\199\236\215\238", "\181\131\160\157\51\192\142"));
local indicators_color = ui.add_cog(LUAOBFUSACTOR_DECRYPT_STR_0("\117\167\109\227\111\71\245\124\227\116\91\167", "\52\213\31\140\24"), true, false);
local indicators = {[LUAOBFUSACTOR_DECRYPT_STR_0("\90\204\202\219\183\17", "\41\175\184\190\210\127\141")]={render.get_screen()},[LUAOBFUSACTOR_DECRYPT_STR_0("\234\162\244\202\12\90\63\14\252\175\242\202\27", "\153\193\134\175\105\52\96\109")]=vector2d.new(0, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\215\130\227\157\120\110\216\149\232\133", "\177\237\141\233\39\30")]=render.create_font(LUAOBFUSACTOR_DECRYPT_STR_0("\235\215\38\219\176\252\250\215\212\51\196", "\184\186\71\183\220\220\188"), 8, 300, bit.bor(font_flags.outline)),[LUAOBFUSACTOR_DECRYPT_STR_0("\97\244\69\42\85\212\112\237\89\49\81", "\17\129\41\89\48\139")]=255,[LUAOBFUSACTOR_DECRYPT_STR_0("\172\134\211\92\195\191\154\216\76", "\202\233\189\40\156")]=font_pixel,[LUAOBFUSACTOR_DECRYPT_STR_0("\197\23\134\203", "\183\114\224\184\203\235\174")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\168\250\67\182", "\202\155\42\219")]=ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\179\16\211\194", "\225\113\180\167\142"), LUAOBFUSACTOR_DECRYPT_STR_0("\113\223\24\240\40\21", "\48\182\117\146\71\97"), LUAOBFUSACTOR_DECRYPT_STR_0("\84\63\27\85\146\199\248\254", "\21\92\120\32\224\166\155\135"), LUAOBFUSACTOR_DECRYPT_STR_0("\9\56\168\29\181\255\45\56\190\7\253\190\38\58\250\21\181\166", "\79\87\218\126\208\223")),[LUAOBFUSACTOR_DECRYPT_STR_0("\31\174", "\121\202\109\138\196\221\218\199")]=ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\213\75\217\226", "\135\42\190\135\135"), LUAOBFUSACTOR_DECRYPT_STR_0("\85\54\84\252\57\25\73\248", "\20\88\32\149"), LUAOBFUSACTOR_DECRYPT_STR_0("\135\171\44\171\141\173\171\32", "\193\202\71\206\160"), LUAOBFUSACTOR_DECRYPT_STR_0("\139\14\58\39\237\11\36\33\166\79\58\39\180", "\205\111\81\66")),[LUAOBFUSACTOR_DECRYPT_STR_0("\0\94", "\100\42\82\137\62\78\193")]=ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\73\127\241\190", "\27\30\150\219\181\85\165\44"), LUAOBFUSACTOR_DECRYPT_STR_0("\122\31\200\139\143\86\19\203", "\63\103\184\231\224"), LUAOBFUSACTOR_DECRYPT_STR_0("\234\171\61\122\172\204\162", "\173\206\83\31\222"), LUAOBFUSACTOR_DECRYPT_STR_0("\9\86\204\114\230\1\155\57\88\201\48\225\1\194", "\77\57\185\16\138\100\187")),[LUAOBFUSACTOR_DECRYPT_STR_0("\25\177\196\93\12\183\192\86\27", "\127\195\161\56")]=ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\66\221\243\224", "\16\188\148\133\101"), LUAOBFUSACTOR_DECRYPT_STR_0("\123\79\161\194\127\96\194\69", "\58\33\213\171\82\33\171\40"), LUAOBFUSACTOR_DECRYPT_STR_0("\124\78\63\40\98\208\255", "\59\43\81\77\16\177\147"), LUAOBFUSACTOR_DECRYPT_STR_0("\23\3\65\72\228\21\139\23\53\24\74\74\183\10\143\0", "\81\113\36\45\151\97\234\121")),[LUAOBFUSACTOR_DECRYPT_STR_0("\5\234", "\106\153\185\105\24\135")]=ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\71\190\48\41", "\21\223\87\76\150"), LUAOBFUSACTOR_DECRYPT_STR_0("\164\58\23\95\238\143\194\146", "\225\66\103\51\129\230\182"), LUAOBFUSACTOR_DECRYPT_STR_0("\93\18\1\56\41\123\27", "\26\119\111\93\91"), LUAOBFUSACTOR_DECRYPT_STR_0("\137\6\119\0\100\3\12\60\181\28\51\14\33\9", "\193\111\19\101\68\112\100\83")),[LUAOBFUSACTOR_DECRYPT_STR_0("\212\179\160", "\176\222\199\117\186\27")]=ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\130\243\223\1", "\208\146\184\100\104\174\120\112"), LUAOBFUSACTOR_DECRYPT_STR_0("\206\243\178\112\93\241", "\143\154\223\18\50\133"), LUAOBFUSACTOR_DECRYPT_STR_0("\24\123\75\175\45\127\73", "\95\30\37\202"), LUAOBFUSACTOR_DECRYPT_STR_0("\97\94\249\74\231\254\88\12\83\246\78\235\236\80\12\88\225\70\248\249\92\72\82\183\72\239\242", "\44\55\151\35\138\139\53"))}};
indicators.draw = function(table)
	for key, indicator in pairs(table) do
		key = key + 1;
		local actual_index = key - 1;
		local font_size = {indicators.font_used:get_size(indicator.text)};
		indicators.font_used:text(render.center_screen.w - 0.5, render.center_screen.h + 6 + (font_size[2] * actual_index), indicator.color, indicator.text);
	end
end;
indicators.main = function()
	if (not globals.local_player or not client.is_alive()) then
		return;
	end
	if not indic_toggle:get() then
		return;
	end
	indicators.font_used = indicators.font_pixel;
	indicators.pulse_alpha = math.sin(math.abs((math.pi * -1) + ((global_vars.curtime * 2) % (math.pi * 1)))) * 255;
	indicators.font_used:text(render.center_screen.w - 20, render.center_screen.h + 6, color.new(135, 130, 129, 255), LUAOBFUSACTOR_DECRYPT_STR_0("\104\153\154\26\118\46", "\44\208\204\83\56\107"));
	indicators.font_used:text(render.center_screen.w + 4, render.center_screen.h + 6, color.new(135, 130, 129, math.max(indicators.pulse_alpha, 25)), LUAOBFUSACTOR_DECRYPT_STR_0("\160\103\161\203\231", "\228\34\227\158\160\169"));
	indicators.indicators = {};
	local body_roll_amount = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\64\134\253\232", "\18\231\154\141"), LUAOBFUSACTOR_DECRYPT_STR_0("\167\207\210\80\231\226\143\204", "\230\161\166\57\202\131"), LUAOBFUSACTOR_DECRYPT_STR_0("\38\79\165\114\181\4\89", "\97\42\203\23\199\101\53"), LUAOBFUSACTOR_DECRYPT_STR_0("\26\231\174\252\96\229\94\52\228\234\228\45\248\68\54\252", "\88\136\202\133\64\151\49"));
	if (math.abs(cstrike.roll) > 0) then
		table.insert(indicators.indicators, {[LUAOBFUSACTOR_DECRYPT_STR_0("\170\169\183\12", "\222\204\207\120\232\64")]=LUAOBFUSACTOR_DECRYPT_STR_0("\115\116\80\148", "\33\59\28\216\131\162\91"),[LUAOBFUSACTOR_DECRYPT_STR_0("\132\244\223\28\149", "\231\155\179\115")]=color.new(255, 150, 255)});
	end
	if indicators.refs.dt:get_key() then
		table.insert(indicators.indicators, {[LUAOBFUSACTOR_DECRYPT_STR_0("\161\35\195\10", "\213\70\187\126\78\51")]=LUAOBFUSACTOR_DECRYPT_STR_0("\140\176", "\200\228\65\219\43\89\167"),[LUAOBFUSACTOR_DECRYPT_STR_0("\173\86\113\140\209", "\206\57\29\227\163\21")]=((exploits.ready() and color.new(135, 130, 129, 255)) or color.new(171, 169, 169))});
	end
	if indicators.refs.os:get_key() then
		table.insert(indicators.indicators, {[LUAOBFUSACTOR_DECRYPT_STR_0("\177\34\220\190", "\197\71\164\202")]=LUAOBFUSACTOR_DECRYPT_STR_0("\171\209", "\228\130\148\167\98\91\103\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\206\89\50\119\209", "\173\54\94\24\163\102\126\204")]=color.new(135, 130, 129, 255)});
	end
	if indicators.refs.fd:get_key() then
		table.insert(indicators.indicators, {[LUAOBFUSACTOR_DECRYPT_STR_0("\212\167\161\238", "\160\194\217\154\169\21\187\228")]=LUAOBFUSACTOR_DECRYPT_STR_0("\170\138", "\236\206\117\149"),[LUAOBFUSACTOR_DECRYPT_STR_0("\138\71\184\74\224", "\233\40\212\37\146\229\77")]=color.new(135, 130, 129, 255)});
	end
	if indicators.refs.dmg:get_key() then
		table.insert(indicators.indicators, {[LUAOBFUSACTOR_DECRYPT_STR_0("\169\116\253\211", "\221\17\133\167\39\114\157")]=LUAOBFUSACTOR_DECRYPT_STR_0("\50\225", "\127\165\62\96\223\94"),[LUAOBFUSACTOR_DECRYPT_STR_0("\92\219\229\131\77", "\63\180\137\236")]=color.new(135, 130, 129, 255)});
	end
	indicators.draw(indicators.indicators);
end;
local elements = {[1]=LUAOBFUSACTOR_DECRYPT_STR_0("\178\64\84\44\209\84\193\88\80\63\203", "\225\52\53\88\184\55"),[2]=LUAOBFUSACTOR_DECRYPT_STR_0("\127\81\79\255\71\24\11\188\64\86\27\240\78\86\95", "\47\56\59\156"),[3]=LUAOBFUSACTOR_DECRYPT_STR_0("\248\248\48\64\33\228\212\115\204\231", "\171\148\89\36\68\196\184\22")};
local interval = 0;
local function rgb_health_based(percentage)
	local r = (124 * 2) - (124 * percentage);
	local g = 195 * percentage;
	local b = 13;
	return r, g, b;
end
local function remap(val, newmin, newmax, min, max, clamp)
	min = min or 0;
	max = max or 1;
	local pct = (val - min) / (max - min);
	if (clamp ~= false) then
		pct = math.min(1, math.max(0, pct));
	end
	return newmin + ((newmax - newmin) * pct);
end
local function rectangle_outline(x, y, w, h, r, g, b, a, s)
	s = s or 1;
	render.rectangle(x, y, w, s, color.new(r, g, b, a));
	render.rectangle(x, (y + h) - s, w, s, color.new(r, g, b, a));
	render.rectangle(x, y + s, s, h - (s * 2), color.new(r, g, b, a));
	render.rectangle((x + w) - s, y + s, s, h - (s * 2), color.new(r, g, b, a));
end
local function drawBar(modifier, r, g, b, a, text)
	local text_width = 95;
	local sw, sh = render.get_screen();
	local x, y = (sw / 2) - text_width, sh * 0.35;
	if (a > 0.7) then
		render.rectangle(x + 13, y + 11, 8, 20, color.new(16, 16, 16, 255 * a));
	end
	render.text(x + 8, y + 3, string.format(LUAOBFUSACTOR_DECRYPT_STR_0("\250\186\199\146\112\60", "\223\201\231\183\94\90"), text, modifier * 100), color.new(255, 255, 255, 255 * a));
	local rx, ry, rw, rh = x + 8, y + 3 + 17, text_width, 12;
	rectangle_outline(rx, ry, rw, rh, 0, 0, 0, 255 * a, 1);
	render.rectangle_filled(rx + 1, ry + 1, rw - 2, rh - 2, color.new(16, 16, 16, 180 * a));
	render.rectangle_filled(rx + 1, ry + 1, math.floor((rw - 2) * modifier), rh - 2, color.new(r, g, b, 180 * a));
end
local font = render.create_font(LUAOBFUSACTOR_DECRYPT_STR_0("\246\19\37\36\32\3\193", "\160\118\87\64\65\109"), 12, 400, bit.bor(font_flags.outline));
local g_col_disabled = color.new(153, 124, 122);
local g_col_enabled = color.new(153, 124, 122);
local lag_history = {0,0,0,0,0,0};
local jitter = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\239\219\172\89", "\189\186\203\60\142"), LUAOBFUSACTOR_DECRYPT_STR_0("\40\252\239\197\150\40\251\246", "\105\146\155\172\187"), LUAOBFUSACTOR_DECRYPT_STR_0("\249\192\30\230\236\223\201", "\190\165\112\131\158"), LUAOBFUSACTOR_DECRYPT_STR_0("\128\199\93\0\70\143\173\210\79\82", "\217\166\42\32\44\230"));
local exploit = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\103\141\173\191", "\53\236\202\218\163\102"), LUAOBFUSACTOR_DECRYPT_STR_0("\253\77\204\212\39\201\210\71", "\184\53\188\184\72\160\166\52"), LUAOBFUSACTOR_DECRYPT_STR_0("\160\193\224\29\190\134\200", "\231\164\142\120\204"), LUAOBFUSACTOR_DECRYPT_STR_0("\206\196\217\176\114\187\196", "\139\170\184\210\30\222\160"));
local dt = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\101\41\65\47", "\55\72\38\74"), LUAOBFUSACTOR_DECRYPT_STR_0("\223\111\14\54\14\176\150\233", "\154\23\126\90\97\217\226"), LUAOBFUSACTOR_DECRYPT_STR_0("\24\14\215\38\237\62\7", "\95\107\185\67\159"), LUAOBFUSACTOR_DECRYPT_STR_0("\245\143\146\16\134\118\23\197\129\151\82\129\118\78", "\177\224\231\114\234\19\55"));
local dmg = ui.get_rage(LUAOBFUSACTOR_DECRYPT_STR_0("\49\160\190\130\153\124\162", "\118\197\208\231\235\29\206"), LUAOBFUSACTOR_DECRYPT_STR_0("\245\202\171\1\213\214\168\72\220\194\168\9\223\198\229\7\206\198\183\26\209\199\160\72\211\198\188", "\184\163\197\104"));
local fs = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\106\183\223\73", "\56\214\184\44\139\175\90"), LUAOBFUSACTOR_DECRYPT_STR_0("\155\30\218\36\247\17\199\32", "\218\112\174\77"), LUAOBFUSACTOR_DECRYPT_STR_0("\200\45\197\31\253\41\199", "\143\72\171\122"), LUAOBFUSACTOR_DECRYPT_STR_0("\123\201\194\9\78\207\198\2\89\210\201\11\29\208\194\21", "\61\187\167\108"));
local fd = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\36\187\7\255", "\118\218\96\154\219\107"), LUAOBFUSACTOR_DECRYPT_STR_0("\128\175\192\255\147\160\168\217", "\193\193\180\150\190"), LUAOBFUSACTOR_DECRYPT_STR_0("\231\92\3\57\83\29\133\17", "\161\61\104\92\126\113\228\118"), LUAOBFUSACTOR_DECRYPT_STR_0("\248\235\119\33\158\238\105\39\213\170\119\33\199", "\190\138\28\68"));
local sw = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\52\139\75\173", "\121\226\56\206\197\113"), LUAOBFUSACTOR_DECRYPT_STR_0("\195\243\54\124\89\161\30", "\132\150\88\25\43\192\114\160"), LUAOBFUSACTOR_DECRYPT_STR_0("\112\230\23\12\241\217\181\89", "\61\137\97\105\156\188\219\45"), LUAOBFUSACTOR_DECRYPT_STR_0("\146\77\218\62\191\172\78\193\32\240\175\1\222\44\230", "\193\33\181\73\159"));
local indicator_checkbox = ui.add_checkbox(LUAOBFUSACTOR_DECRYPT_STR_0("\139\76\72\198\73\79\173\166\67\65\206\77\75\249\160\95", "\207\45\37\167\46\42\141"));
local g_col_disabled = color.new(255, 255, 255);
local g_col_enabled = color.new(255, 255, 255);
local screen_width, screen_height = render.get_screen();
local center_x = screen_width / 2;
local center_y = screen_height / 2;
local dmg = ui.get_rage(LUAOBFUSACTOR_DECRYPT_STR_0("\159\85\27\185\234\67\116", "\216\48\117\220\152\34\24\161"), LUAOBFUSACTOR_DECRYPT_STR_0("\141\237\209\28\215\39\173\164\219\20\215\51\167\225\159\26\204\55\178\246\214\17\223\114\171\225\198", "\192\132\191\117\186\82"));
local function getMinimumDamage(var)
	local minimum_damage = var:get();
	if (minimum_damage == 0) then
		return LUAOBFUSACTOR_DECRYPT_STR_0("\255\57\95\40", "\158\76\43\71");
	elseif (minimum_damage > 100) then
		return string.format(LUAOBFUSACTOR_DECRYPT_STR_0("\164\41\61\30", "\149\25\24\122\154"), minimum_damage - 100);
	else
		return tostring(minimum_damage);
	end
end
local function drawDmg()
	local is_overriding = dmg:get_key();
	local dmg1 = ui.get_rage(LUAOBFUSACTOR_DECRYPT_STR_0("\158\229\166\80\177\188\181", "\217\128\200\53\195\221"), LUAOBFUSACTOR_DECRYPT_STR_0("\0\138\48\60\76\69\173\109\135\63\56\64\87\165", "\77\227\94\85\33\48\192"));
	local dmg2 = ui.get_rage(LUAOBFUSACTOR_DECRYPT_STR_0("\106\182\49\231\61\19\123", "\45\211\95\130\79\114\23"), LUAOBFUSACTOR_DECRYPT_STR_0("\196\196\193\182\113\103\117\25\237\204\194\190\123\119\56\86\255\200\221\173\117\118\125", "\137\173\175\223\28\18\24\57"));
	local v = getMinimumDamage((is_overriding and dmg2) or dmg1);
	font:text(center_x + 5, center_y - 20, (is_overriding and g_col_enabled) or g_col_disabled, string.format(LUAOBFUSACTOR_DECRYPT_STR_0("\68\153", "\97\234\222\161\181\97"), v));
end
local function onPaint()
	if (indicator_checkbox:get() == true) then
		if not client.is_alive() then
			return;
		end
		drawDmg();
	end
end
callbacks.register(LUAOBFUSACTOR_DECRYPT_STR_0("\217\207\67\193\34", "\169\174\42\175\86\209\176"), onPaint);
local custom_scopre = ui.add_checkbox(LUAOBFUSACTOR_DECRYPT_STR_0("\162\21\22\191\222\39\193\19\6\164\193\47", "\225\96\101\203\177\74"));
local scope_color_label = ui.add_label(LUAOBFUSACTOR_DECRYPT_STR_0("\217\54\12\234\239\117\0\245\230\58\17", "\138\85\99\154"));
local scope_color = ui.add_cog(LUAOBFUSACTOR_DECRYPT_STR_0("\196\25\124\238", "\160\106\24\143\165\52\200\117"), true, false);
local scope_size = ui.add_slider(LUAOBFUSACTOR_DECRYPT_STR_0("\230\83\18\82\61\139\198\89\7\71", "\181\48\125\34\88\171"), 0, 500);
local scope_padding = ui.add_slider(LUAOBFUSACTOR_DECRYPT_STR_0("\158\224\251\187\179\60\160\172\231\240\162\184\123", "\205\131\148\203\214\28\208"), 0, 250);
local scopetype = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\104\89\210\255\39\82\67", "\62\48\161\138\70"), LUAOBFUSACTOR_DECRYPT_STR_0("\151\223\182\73\32\177\214", "\208\186\216\44\82"), LUAOBFUSACTOR_DECRYPT_STR_0("\36\58\73\37\59\233\226\88\4\59\81", "\107\78\33\64\73\201\133\42"), LUAOBFUSACTOR_DECRYPT_STR_0("\203\138\9\199\44\234\112\254\143\3\212\61\234\97\225\153\3", "\152\233\102\183\73\202\21"));
local entity_get_client_entity = entity_list.get_client_entity;
local alpha = 0;
function scope_on_paint()
	if custom_scopre:get() then
		scopetype:set(0);
		local screen_size_x, screen_size_y = render.get_screen();
		local screen_center = vector2d.new(screen_size_x / 2, screen_size_y / 2);
		local_player = entity_get_client_entity(engine.get_local_player());
		if not engine.in_game() then
			return;
		end
		if (local_player == nil) then
			return;
		end
		if (local_player:get_prop(LUAOBFUSACTOR_DECRYPT_STR_0("\222\42\26\57\251\13\32\43\246\31\60\30\232", "\154\126\69\123"), LUAOBFUSACTOR_DECRYPT_STR_0("\231\50\226\145\85\55\172\254\5", "\138\109\139\217\48\86\192")):get_int() <= 0) then
			return;
		end
		local multiplier = (1 / (225 / 1000)) * global_vars.frametime;
		if local_player:get_prop(LUAOBFUSACTOR_DECRYPT_STR_0("\163\240\200\16\10\233\78\134\221\242\33", "\231\164\151\83\89\185\34"), LUAOBFUSACTOR_DECRYPT_STR_0("\223\130\120\213\107\122\83\221\173\127\248", "\178\221\26\156\24\41\48")):get_bool() then
			if (alpha < 1) then
				alpha = alpha + multiplier;
			end
		elseif (alpha > 0) then
			alpha = alpha - multiplier;
		end
		if (alpha >= 1) then
			alpha = 1;
		end
		if (alpha <= 0) then
			alpha = 0;
			return;
		end
		local r, g, b, a = scope_color:get_color():r(), scope_color:get_color():g(), scope_color:get_color():b(), scope_color:get_color():a();
		local sizee = scope_size:get();
		pos = vector2d.new(screen_center.x, screen_center.y - sizee);
		size = vector2d.new(1, sizee * alpha);
		pos.y = pos.y - (scope_padding:get() - 1);
		render.gradient(pos.x, pos.y, size.x, size.y, color.new(0, 0, 0, 0), color.new(r, g, b, a * alpha), false);
		pos = vector2d.new(screen_center.x, screen_center.y + (sizee * (1 - alpha)));
		size = vector2d.new(1, scope_size:get() - (sizee * (1 - alpha)));
		pos.y = pos.y + scope_padding:get();
		render.gradient(pos.x, pos.y, size.x, size.y, color.new(r, g, b, a * alpha), color.new(0, 0, 0, 0), false);
		pos = vector2d.new(screen_center.x - sizee, screen_center.y);
		size = vector2d.new(sizee * alpha, 1);
		pos.x = pos.x - (scope_padding:get() - 1);
		render.gradient(pos.x, pos.y, size.x, size.y, color.new(0, 0, 0, 0), color.new(r, g, b, a * alpha), true);
		pos = vector2d.new(screen_center.x + (sizee * (1 - alpha)), screen_center.y);
		size = vector2d.new(sizee - (sizee * (1 - alpha)), 1);
		pos.x = pos.x + scope_padding:get();
		render.gradient(pos.x, pos.y, size.x, size.y, color.new(r, g, b, a * alpha), color.new(0, 0, 0, 0), true);
	end
	if (custom_scopre:get() == false) then
		scopetype:set(1);
	end
end
callbacks.register(LUAOBFUSACTOR_DECRYPT_STR_0("\184\13\72\40\165", "\200\108\33\70\209\196"), scope_on_paint);
local dist_ref = ui.add_slider(LUAOBFUSACTOR_DECRYPT_STR_0("\10\93\125\100\41\72\84\44\70\123\120\109\92\88\45\65\117\120\46\93", "\94\53\20\22\77\56\49"), 0, 200);
local get_cam_idealdist = cvar.find_var(LUAOBFUSACTOR_DECRYPT_STR_0("\166\59\242\98\7\75\112\127\169\62\246\78\26", "\197\90\159\61\110\47\21\30"));
callbacks.register(LUAOBFUSACTOR_DECRYPT_STR_0("\152\230\165\12\8", "\232\135\204\98\124\233\20"), function()
	get_cam_idealdist:set_value_int(dist_ref:get());
end);
ui.add_label(LUAOBFUSACTOR_DECRYPT_STR_0("", "\122\209\133\60"));
ui.add_label(LUAOBFUSACTOR_DECRYPT_STR_0("\72\229\161\121\72\229\161\121\72\229\161\121\72\229\204\48\27\166\228\53\4\164\239\60\7\176\242\121\72\229\161\121\72\229\161\121\72\229\161\121\72\229\161\121\72\229\161", "\104\197\129\89"));
local viewmodel_in_scope = ui.add_checkbox(LUAOBFUSACTOR_DECRYPT_STR_0("\234\133\179\226\236\215\65\217\128\246\252\239\152\86\223\131\166\240", "\188\236\214\149\129\184\37"));
local cstrike = {};
cstrike.is_scoped = function(entity)
	if entity then
		local scoped = entity:get_prop(LUAOBFUSACTOR_DECRYPT_STR_0("\110\103\74\219\151\122\95\116\225\161\88", "\42\51\21\152\196"), LUAOBFUSACTOR_DECRYPT_STR_0("\133\147\70\152\200\187\175\75\161\222\140", "\232\204\36\209\187")):get_int();
		if (scoped == 1) then
			return true;
		end
	end
	return false;
end;
local on_paint = function()
	local fov_cs_debug = cvar.find_var(LUAOBFUSACTOR_DECRYPT_STR_0("\55\13\242\24\165\166\14\6\225\37\179\178", "\81\98\132\71\198\213"));
	if not viewmodel_in_scope:get() then
		fov_cs_debug:set_value_int(0);
		return;
	end
	local local_player = entity_list.get_client_entity(engine.get_local_player());
	if not local_player then
		return;
	end
	if cstrike.is_scoped(local_player) then
		fov_cs_debug:set_value_int(90);
	else
		fov_cs_debug:set_value_int(0);
	end
end;
callbacks.register(LUAOBFUSACTOR_DECRYPT_STR_0("\73\95\251\244\77", "\57\62\146\154"), on_paint);
local animations = {[LUAOBFUSACTOR_DECRYPT_STR_0("\139\220\220\112\54\87\198", "\228\178\131\28\87\57\162")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\161\213\212\196\65\177\254\217\213\79\161\254\218\222", "\210\161\181\176\40")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\101\55\226\28\56\117\121\63\248\27\15\69\123", "\21\94\150\127\80\42")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\224\7\201\35\57\81\244\52\204\34\55\76\204\4\206", "\147\107\160\71\80\63")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\59\83\182\66\162\46\39", "\84\35\194\43\205\64")]=ui.add_multi_dropdown(LUAOBFUSACTOR_DECRYPT_STR_0("\107\215\172\179\113\170\162\44\70\203\178\166\106\174\237\35\91", "\40\162\223\199\30\199\130\77"), {elements[1],elements[2],elements[3]})};
animations.main = function(ent)
	if ((ent:index() ~= engine.get_local_player()) or not globals.local_player or not client.is_alive()) then
		return;
	end
	animations.static_legs_on = animations.options:get(elements[1]);
	animations.pitch_land_on = animations.options:get(elements[2]);
	animations.sliding_legs_on = animations.options:get(elements[3]);
	animations.sliding_legs(ent);
	animations.static_legs(ent);
	animations.pitch_land(ent);
end;
animations.sliding_legs = function(ent)
	if not animations.sliding_legs_on then
		return;
	end
	local m_flPoseParameter = ent:get_prop(LUAOBFUSACTOR_DECRYPT_STR_0("\169\192\57\17\140\158\241\39\61\132\128\245\18\58\131\138", "\237\148\102\83\237"), LUAOBFUSACTOR_DECRYPT_STR_0("\69\220\142\186\222\243\220\17\120\226\154\183\227\249\219\17\90", "\40\131\232\214\142\156\175\116"));
	m_flPoseParameter:set_float_index(0, 1);
end;
animations.static_legs = function(ent)
	if not animations.static_legs_on then
		return;
	end
	local m_flPoseParameter = ent:get_prop(LUAOBFUSACTOR_DECRYPT_STR_0("\107\246\252\3\25\32\74\227\205\40\21\50\91\203\205\38", "\47\162\163\65\120\83"), LUAOBFUSACTOR_DECRYPT_STR_0("\19\135\175\22\179\253\13\189\153\27\145\243\19\189\189\31\145", "\126\216\201\122\227\146"));
	m_flPoseParameter:set_float_index(6, 1);
end;
animations.pitch_land = function(ent)
	if not animations.pitch_land_on then
		return;
	end
	if not animations.on_land then
		return;
	end
	local m_flPoseParameter = ent:get_prop(LUAOBFUSACTOR_DECRYPT_STR_0("\167\6\7\41\130\33\61\42\141\59\53\10\151\59\54\12", "\227\82\88\107"), LUAOBFUSACTOR_DECRYPT_STR_0("\116\25\143\67\113\184\198\124\22\136\93\64\186\208\109\35\155", "\25\70\233\47\33\215\181"));
	m_flPoseParameter:set_float_index(12, 0.45);
end;
local ground_ticks = 0;
local end_time = 0;
animations.update_land = function()
	if (not globals.local_player or not client.is_alive()) then
		return;
	end
	local on_ground = bit.band(globals.local_player:get_prop(LUAOBFUSACTOR_DECRYPT_STR_0("\249\75\41\162\30\24\174\227\209\126\15\133\13", "\189\31\118\224\127\107\203\179"), LUAOBFUSACTOR_DECRYPT_STR_0("\55\240\141\21\125\169\55\247", "\90\175\235\83\17\200\80\132")):get_int(), 1);
	if (on_ground == 1) then
		ground_ticks = ground_ticks + 1;
	else
		ground_ticks = 0;
		end_time = global_vars.curtime + 1;
	end
	animations.on_land = false;
	if ((ground_ticks > 2) and (end_time > global_vars.curtime)) then
		animations.on_land = true;
	end
end;
local x, y = render.get_screen();
local font = render.create_font(LUAOBFUSACTOR_DECRYPT_STR_0("\171\217\218\222\199\200\30\26\245\196\210\202\206\193\77\89", "\216\180\187\178\171\173\109\110"), 12, 250, bit.bor(font_flags.outline));
local on_paint = function()
	render.update();
	indicators.main();
	antiaim.handle_visibility();
	animations.update_land();
end;
callbacks.register(LUAOBFUSACTOR_DECRYPT_STR_0("\165\46\17\143\234", "\213\79\120\225\158\219\35\227"), on_paint);
callbacks.register(LUAOBFUSACTOR_DECRYPT_STR_0("\207\181\73\15\235\6\19\181\210\133\79\11\208\6\9\185", "\191\218\58\123\180\103\125\220"), animations.main);
local screen_x, screen_y = render.get_screen();
local verdana = render.create_font(LUAOBFUSACTOR_DECRYPT_STR_0("\12\4\166\250\253\163\59", "\90\97\212\158\156\205"), 12, 500, bit.bor(font_flags.dropshadow, font_flags.outline));
ffi.cdef(LUAOBFUSACTOR_DECRYPT_STR_0("", "\140\122\63\199\213\165"));
local hit_log = ui.add_multi_dropdown(LUAOBFUSACTOR_DECRYPT_STR_0("\56\181\208\11\220\31\187\215", "\112\220\164\43\176"), {LUAOBFUSACTOR_DECRYPT_STR_0("\44\161\110\133\191\248", "\127\194\28\224\218\150")});
local active = {};
function addLog(time, ...)
	table.insert(active, {[LUAOBFUSACTOR_DECRYPT_STR_0("\169\69\223\236", "\221\32\167\152\85\157\178\158")]={...},[LUAOBFUSACTOR_DECRYPT_STR_0("\196\139\47\248", "\176\226\66\157\117\148")]=time,[LUAOBFUSACTOR_DECRYPT_STR_0("\176\116\90\133\45", "\212\17\54\228\84\151\156\104")]=(global_vars.realtime + time),[LUAOBFUSACTOR_DECRYPT_STR_0("\85\66\187\183\68", "\54\45\215\216")]={{5,20,40},{5,20,40}},[LUAOBFUSACTOR_DECRYPT_STR_0("\200\209\64\178\25", "\176\142\48\211\125")]=-11,[LUAOBFUSACTOR_DECRYPT_STR_0("\97\102\221\80\197\145\236", "\25\57\173\49\161\206\142\116")]=-11});
end
local function PrintInChat(text)
	local FindElement = ffi.cast(LUAOBFUSACTOR_DECRYPT_STR_0("\37\206\77\49\16\62\197\90\120\27\63\206\89\112\40\15\212\86\49\4\51\193\82\52\93\121\136\72\55\30\52\138\18\120\20\63\206\77\44\87\51\200\95\42\93\121", "\80\160\62\88\119"), client.find_sig(LUAOBFUSACTOR_DECRYPT_STR_0("\132\8\169\12\250\180\27\141\139\8", "\231\100\192\105\148\192\53\233"), LUAOBFUSACTOR_DECRYPT_STR_0("\125\105\88\232\34\137\8\11\124\77\227\64\145\15\104\105\60\240\80\145\109\125\106\88\229\87\137\117\10\124\62\233\64\154\126\104\26\78\240\83\144\109\127\107\88\226\88", "\72\92\120\208\96\169\77")));
	local CHudChat = FindElement(ffi.cast(LUAOBFUSACTOR_DECRYPT_STR_0("\14\95\181\220\30\21\84\162\149\21\20\95\161\159\83", "\123\49\198\181\121"), ffi.cast(LUAOBFUSACTOR_DECRYPT_STR_0("\249\2\114\218\252\31\110\241\248", "\140\107\28\174"), client.find_sig(LUAOBFUSACTOR_DECRYPT_STR_0("\48\248\52\23\36\5\249\247\63\248", "\83\148\93\114\74\113\215\147"), LUAOBFUSACTOR_DECRYPT_STR_0("\99\160\178\12\140\30\185\173\19\147\1\220\170\19\147\1\166\178\12\140\30\185\170\113\140\20\221\178\3\148", "\33\153\146\51\172"))) + 1)[0], LUAOBFUSACTOR_DECRYPT_STR_0("\221\56\233\74\221\24\253\90", "\158\112\156\46"));
	local FFI_ChatPrint = ffi.cast(LUAOBFUSACTOR_DECRYPT_STR_0("\216\190\196\175\155\181\241\178\201\174\208\134\132\248\133\162\221\158\130\241\196\165\199\198\142\184\195\191\159\202\205\190\195\184\199\202\205\185\204\185\153\198\142\255\131\229\154", "\174\209\173\203\179\234"), ffi.cast(LUAOBFUSACTOR_DECRYPT_STR_0("\229\233\117\120\185\172\54", "\147\134\28\28"), CHudChat)[0][27]);
	FFI_ChatPrint(CHudChat, 0, 0, string.format(LUAOBFUSACTOR_DECRYPT_STR_0("\89\221\112", "\124\174\80\163"), text));
end
local function en_hit_box(int_hitgroup)
	if (int_hitgroup == nil) then
		return;
	elseif (int_hitgroup == 0) then
		return LUAOBFUSACTOR_DECRYPT_STR_0("\130\33\190\191", "\224\78\218\198\133\153\154\194");
	elseif (int_hitgroup == 1) then
		return LUAOBFUSACTOR_DECRYPT_STR_0("\74\1\120\197", "\34\100\25\161");
	elseif (int_hitgroup == 2) then
		return LUAOBFUSACTOR_DECRYPT_STR_0("\178\226\19\108\33", "\209\138\118\31\85");
	elseif (int_hitgroup == 3) then
		return LUAOBFUSACTOR_DECRYPT_STR_0("\160\240\79\64\178\231\72", "\211\132\32\45");
	elseif (int_hitgroup == 4) then
		return LUAOBFUSACTOR_DECRYPT_STR_0("\9\64\235\32\80\83\109\8", "\101\37\141\84\112\50\31");
	elseif (int_hitgroup == 5) then
		return LUAOBFUSACTOR_DECRYPT_STR_0("\18\221\141\119\243\117\13\18\217", "\96\180\234\31\135\85\108");
	elseif (int_hitgroup == 6) then
		return LUAOBFUSACTOR_DECRYPT_STR_0("\189\31\114\104\241\22\113\123", "\209\122\20\28");
	elseif (int_hitgroup == 7) then
		return LUAOBFUSACTOR_DECRYPT_STR_0("\223\254\130\114\169\94\171\200\240", "\173\151\229\26\221\126\199");
	elseif (int_hitgroup == 10) then
		return LUAOBFUSACTOR_DECRYPT_STR_0("\135\121\55\178", "\229\22\83\203\121\183\184\180");
	end
end
callbacks.register(LUAOBFUSACTOR_DECRYPT_STR_0("\66\116\89\64\204\110\109\112\77\75\221", "\50\24\56\57\169\28"), function(event)
	local Hit_Color = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\59\245\91\79\239\134\178", "\107\135\52\41\134\234\215\215"), LUAOBFUSACTOR_DECRYPT_STR_0("\122\113\81\58\159\92\120", "\61\20\63\95\237"), LUAOBFUSACTOR_DECRYPT_STR_0("\194\10\86\245\61\129\127\246\3\77\227\53\131\56\246", "\133\102\57\151\92\237\95"), LUAOBFUSACTOR_DECRYPT_STR_0("\119\56\201\251\157\48\232\197\95\51\211\174\222\62\231\201\72", "\58\93\167\142\189\81\139\166")):get_color();
	local me = entity_list.get_client_entity(engine.get_local_player());
	local attacker = engine.get_player_for_user_id(event:get_int(LUAOBFUSACTOR_DECRYPT_STR_0("\81\29\219\115\16\5\85\27", "\48\105\175\18\115\110")));
	local attacker_player = engine.get_player_for_user_id(event:get_int(LUAOBFUSACTOR_DECRYPT_STR_0("\181\18\120\185\169\5", "\192\97\29\203")));
	if (attacker == engine.get_local_player()) then
		local Remaining_Health = event:get_int(LUAOBFUSACTOR_DECRYPT_STR_0("\9\243\132\46\171\31", "\97\150\229\66\223\119\18"));
		local Damage_Done = event:get_int(LUAOBFUSACTOR_DECRYPT_STR_0("\228\89\123\239\21\67\225\88\104\216", "\128\52\28\176\125\38"));
		local Get_name = engine.get_player_info(attacker_player).name;
		local Get_name_2 = engine.get_player_info(attacker).name;
		local Get_hitbox = en_hit_box(event:get_int(LUAOBFUSACTOR_DECRYPT_STR_0("\209\64\15\79\203\70\14\88", "\185\41\123\40")));
		addLog(7, {Hit_Color:r(),Hit_Color:g(),Hit_Color:b(),LUAOBFUSACTOR_DECRYPT_STR_0("\51\251\131\57", "\104\191\234\79")}, {255,255,255,LUAOBFUSACTOR_DECRYPT_STR_0("\163\247\211\72\79\144\28\105", "\202\153\182\21\111\216\117\29")}, {Hit_Color:r(),Hit_Color:g(),Hit_Color:b(),(LUAOBFUSACTOR_DECRYPT_STR_0("\232", "\200\166\18\158\163\95\150\214") .. Get_name)}, {255,255,255,LUAOBFUSACTOR_DECRYPT_STR_0("\165\50\112\184\247\210\51", "\133\91\30\152\131\186\86\85")}, {Hit_Color:r(),Hit_Color:g(),Hit_Color:b(),(LUAOBFUSACTOR_DECRYPT_STR_0("\103", "\71\56\221\187\178\47\187") .. Get_hitbox)}, {255,255,255,LUAOBFUSACTOR_DECRYPT_STR_0("\119\130\43\7\104\51\133\41\20\47\50", "\87\228\68\117\72")}, {Hit_Color:r(),Hit_Color:g(),Hit_Color:b(),(LUAOBFUSACTOR_DECRYPT_STR_0("\26", "\58\66\54\142\150") .. Damage_Done)}, {255,255,255,LUAOBFUSACTOR_DECRYPT_STR_0("\72\135\219\140\9\132\223\193\64", "\104\227\186\225")}, {Hit_Color:r(),Hit_Color:g(),Hit_Color:b(),(LUAOBFUSACTOR_DECRYPT_STR_0("\25", "\57\183\162\201\33\94\83\45") .. Remaining_Health)}, {255,255,255,LUAOBFUSACTOR_DECRYPT_STR_0("\203\163\231\253\91\239\159\235\175\234\95\238\138\234\225\241\84\228\203\170", "\235\131\143\152\58\131")});
		delay = global_vars.realtime + 7;
		chat_log = LUAOBFUSACTOR_DECRYPT_STR_0("\143\107\88\102\215\244\28\125\10\155\159\6\0\118\195\199\94\84\118\191\215\7\98", "\175\55\32\86\227") .. Get_name .. LUAOBFUSACTOR_DECRYPT_STR_0("\36\92\250\6\130\133\239\175\12\76\175\23\254\148\177\205", "\120\36\202\55\162\236\129\143") .. Get_hitbox .. LUAOBFUSACTOR_DECRYPT_STR_0("\134\231\150\44\250\249\201\111\250\195\222\45\152", "\218\159\166\29") .. Damage_Done .. LUAOBFUSACTOR_DECRYPT_STR_0("\60\33\83\183\170\5\113\202\1\62\6\166\162\61\104\151\34", "\96\89\99\134\138\97\16\167") .. Remaining_Health .. LUAOBFUSACTOR_DECRYPT_STR_0("\79\86\72\15\184\212\193\114\66\12\86\184\206\193\126\79\17\80\241\210\195\58", "\19\46\120\62\152\188\164");
		if hit_log:get(LUAOBFUSACTOR_DECRYPT_STR_0("\210\208\198\54", "\177\184\167\66\105")) then
			PrintInChat(chat_log);
		end
	end
end);
function LogText(x, y, lines)
	local x_pad = 0;
	for i = 1, #lines do
		local line = lines[i];
		local r, g, b, msg = line[1], line[2], line[3], line[4];
		local w_x, w_y = verdana:get_size(msg);
		verdana:text(x + x_pad, y, color.new(r, g, b, 255), msg);
		x_pad = x_pad + w_x;
	end
end
function GetTextSize(lines)
	local fw, fh = 0;
	for i = 1, #lines do
		local w, h = verdana:get_size(lines[i][4]);
		fw, fh = fw + w, h;
	end
	return fw, fh;
end
function showLog(count, color, text, layer)
	local y = 1 + (15 * (count - 1));
	local w, h = GetTextSize(text);
	local mw = ((w < 150) and 150) or w;
	if (global_vars.realtime < layer.delay) then
		if (layer.x_pad < mw) then
			layer.x_pad = layer.x_pad + ((mw - layer.x_pad) * 0.05);
		end
		if (layer.x_pad > mw) then
			layer.x_pad = mw;
		end
		if (layer.x_pad > (mw / 1.09)) then
			if (layer.x_pad_b < (mw - 6)) then
				layer.x_pad_b = layer.x_pad_b + (((mw - 6) - layer.x_pad_b) * 0.05);
			end
		end
		if (layer.x_pad_b > (mw - 6)) then
			layer.x_pad_b = mw - 6;
		end
	else
		if (layer.x_pad_b > -11) then
			layer.x_pad_b = (layer.x_pad_b - (((mw - 5) - layer.x_pad_b) * 0.05)) + 0.01;
		end
		if ((layer.x_pad_b < (mw - 11)) and (layer.x_pad >= 0)) then
			layer.x_pad = (layer.x_pad - (((mw + 1) - layer.x_pad) * 0.05)) + 0.01;
		end
		if (layer.x_pad < 0) then
			table.remove(active, count);
		end
	end
	LogText((layer.x_pad_b - mw) + 18, y + 9, text);
end
callbacks.register(LUAOBFUSACTOR_DECRYPT_STR_0("\36\213\222\231\217", "\84\180\183\137\173\32\66\166"), function()
	if not hit_log:get(LUAOBFUSACTOR_DECRYPT_STR_0("\105\74\110\206\232\42", "\58\41\28\171\141\68")) then
		return;
	end
	for index, hitlog in pairs(active) do
		showLog(index, hitlog.color, hitlog.text, hitlog);
	end
end);
local font2 = render.create_font(LUAOBFUSACTOR_DECRYPT_STR_0("\43\16\32\223\75\66\28", "\125\117\82\187\42\44"), 12, 100, bit.bor(font_flags.outline));
local arrows = render.create_font(LUAOBFUSACTOR_DECRYPT_STR_0("\125\17\194\167\15\69\21", "\43\116\176\195\110"), 14, 500, bit.bor(font_flags.outline));
local pixel = render.create_font(LUAOBFUSACTOR_DECRYPT_STR_0("\73\173\197\112\197\218\209\172\58\144\205\100\204\211\143\239", "\26\192\164\28\169\191\162\216"), 11, 500, bit.bor(font_flags.outline));
local screen_size_x, screen_size_y = render.get_screen();
local screen_center = vector2d.new(screen_size_x / 2, screen_size_y / 2);
local function on_paint()
	local r, g, b, a = indicators_color:get_color():r(), indicators_color:get_color():g(), indicators_color:get_color():b(), indicators_color:get_color():a();
	pos = vector2d.new(screen_center.x, screen_center.y);
	if (arrows_checkbox:get() == true) then
		if anti_aim.inverted() then
			arrows:text(pos.x + 50, pos.y - 10, color.new(r, g, b, a), LUAOBFUSACTOR_DECRYPT_STR_0("\235\115\176\155", "\203\77\144\187\218\188\41\130"));
			arrows:text(pos.x - 65, pos.y - 10, color.new(45, 45, 45, 255), LUAOBFUSACTOR_DECRYPT_STR_0("\201\3\79\252", "\233\63\111\220\196\237\185\39"));
		else
			arrows:text(pos.x - 65, pos.y - 10, color.new(r, g, b, a), LUAOBFUSACTOR_DECRYPT_STR_0("\177\0\244\169", "\145\60\212\137\100\72\41"));
			arrows:text(pos.x + 50, pos.y - 10, color.new(45, 45, 45, 255), LUAOBFUSACTOR_DECRYPT_STR_0("\86\213\89\177", "\118\235\121\145\126\51\236"));
		end
	end
end
callbacks.register(LUAOBFUSACTOR_DECRYPT_STR_0("\75\169\247\241\19", "\59\200\158\159\103\69"), on_paint);
