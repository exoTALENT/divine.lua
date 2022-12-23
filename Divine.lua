--[[
cyka blyat nahuy
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
ui.add_label(LUAOBFUSACTOR_DECRYPT_STR_0("\31\62\244\32\53\50\172\37\46\54", "\91\87\130\73"));
ui.add_label(LUAOBFUSACTOR_DECRYPT_STR_0("\226\85\30\91\23\54\38\131\103\31\80\27\45\111\203", "\163\32\106\51\120\68\28"));
ui.add_label(LUAOBFUSACTOR_DECRYPT_STR_0("\106\189\79\18\6\231\142\222\14\176\85\2\10\250\152\128\0\179\91\94\35\228\154\162\118\158\106\34\93\196", "\46\212\60\113\105\149\234\228"));
render.fonts = {[LUAOBFUSACTOR_DECRYPT_STR_0("\6\214\222\210\31\214\233\140\65\199\206", "\114\183\182\189")]=render.create_font(LUAOBFUSACTOR_DECRYPT_STR_0("\23\218\36\254\46\218", "\67\187\76\145"), 13, 500, bit.bor(font_flags.dropshadow, font_flags.antialias))};
render.screen = {[LUAOBFUSACTOR_DECRYPT_STR_0("\96", "\23\31\26\156\24\229\24")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\83", "\59\154\170\39\64\128")]=0};
render.center_screen = {[LUAOBFUSACTOR_DECRYPT_STR_0("\148", "\227\193\156\233\193\167\130\165")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\254", "\150\128\54\205\227\228\115")]=0};
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
ui.add_label(LUAOBFUSACTOR_DECRYPT_STR_0("", "\17\28\236\235\158\43"));
ui.add_label(LUAOBFUSACTOR_DECRYPT_STR_0("\78\30\84\247\111\8\116\233\78\30\84\247\111\105\58\189\7\19\53\190\34\8\7\176\29\74\17\186\60\8\116\233\78\30\84\247\111\8\116\233\78\30\84\247\111\8", "\110\62\116\215\79\40\84\201"));
local aapresets = {[1]=LUAOBFUSACTOR_DECRYPT_STR_0("\229\74\44\190", "\171\37\66\219\112\42\141\116"),[2]=LUAOBFUSACTOR_DECRYPT_STR_0("\104\130\185\19\28\53\211\61\76\197\129\31\27\50\223\57", "\41\229\203\118\111\70\186\75"),[3]=LUAOBFUSACTOR_DECRYPT_STR_0("\139\226\201\198\83\126\158", "\223\131\167\173\115\63\223"),[4]=LUAOBFUSACTOR_DECRYPT_STR_0("\251\212\78\232\81\113\94\208\220\205\74\246", "\168\185\47\132\61\81\20\185")};
local antiaim_options = ui.add_dropdown(LUAOBFUSACTOR_DECRYPT_STR_0("\224\89\216\173\116\251\140\204\23\252\182\60\201\128\213\68", "\161\55\172\196\89\186\229"), {aapresets[1],aapresets[2],aapresets[3],aapresets[4]});
local cstrike = {[LUAOBFUSACTOR_DECRYPT_STR_0("\53\85\44", "\86\56\72\138\118\26\219")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\12\255\39\61", "\126\144\75\81\93\107\87")]=0};
cstrike.update = function(pdr_cmd)
	cstrike.cmd = pdr_cmd;
	cstrike.roll = pdr_cmd.viewangles.z;
end;
local globals = {[LUAOBFUSACTOR_DECRYPT_STR_0("\225\51\165\251\125\210\44\170\251\104\232\46", "\141\92\198\154\17")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\34\143\232\76\38", "\67\227\129\58")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\242\21\133\22\131\235", "\133\112\228\102\236")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\196\173\178\189\176\141\7\148\202\184\182", "\179\200\211\205\223\227\88\224")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\55\203\6\191\251\41\125\13\45\199\16", "\65\162\99\200\164\72\19\106")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\228\179\4\204\238\33\254\179\63", "\139\221\91\171\156\78")]=nil};
globals.update = function()
	globals.local_player = entity_list.get_client_entity(engine.get_local_player());
	globals.alive = client.is_alive();
	globals.weapon = entity_list.get_client_entity(globals.local_player:get_prop(LUAOBFUSACTOR_DECRYPT_STR_0("\63\184\243\129\225\160\178\56\131\193\161\225\167\148\19\141\222\162\227\167\178\9", "\123\236\172\195\128\211\215"), LUAOBFUSACTOR_DECRYPT_STR_0("\68\223\252\58\245\228\165\95\229\195\30\247\224\163\71", "\41\128\148\123\150\144\204")));
	globals.weapon_type = globals.weapon:get_prop(LUAOBFUSACTOR_DECRYPT_STR_0("\215\196\205\153\0\53\82\210\228\230\169\8\36\66\231\241\240\183\4\15\67\246\253", "\147\144\146\219\97\70\55"), LUAOBFUSACTOR_DECRYPT_STR_0("\76\36\176\111\150\163\240\101\30\191\79\140\175\233\72\20\183\111\140\162\248\89", "\33\123\217\38\226\198\157")):get_int();
	globals.view_angles = engine.get_view_angles();
end;
cstrike.weapons = {[LUAOBFUSACTOR_DECRYPT_STR_0("\42\7\237\127\220\168", "\78\98\140\24\176\205")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\245\84\160\176\77", "\145\33\193\220\62")]=2,[LUAOBFUSACTOR_DECRYPT_STR_0("\95\208\207\177\207\92\207\220\186", "\57\185\185\212\188")]=3,[LUAOBFUSACTOR_DECRYPT_STR_0("\174\16\10\239\189", "\201\124\101\140\214\176\62")]=4,[LUAOBFUSACTOR_DECRYPT_STR_0("\250\229\170", "\155\146\218\118")]=9,[LUAOBFUSACTOR_DECRYPT_STR_0("\55\39\17\67\102", "\80\20\98\36\87\146")]=11,[LUAOBFUSACTOR_DECRYPT_STR_0("\72\132\81\221\113", "\60\225\50\169\72")]=30,[LUAOBFUSACTOR_DECRYPT_STR_0("\110\235\212\106\135", "\30\217\228\90\183")]=32,[LUAOBFUSACTOR_DECRYPT_STR_0("\65\177\40\87", "\49\131\29\103\207")]=36,[LUAOBFUSACTOR_DECRYPT_STR_0("\245\193\93\37\178\123", "\134\162\60\87\128\75\201\157")]=38,[LUAOBFUSACTOR_DECRYPT_STR_0("\184\189\170\129\239", "\203\206\205\177\215")]=40,[LUAOBFUSACTOR_DECRYPT_STR_0("\173\180\166\246\233\50\190\62", "\223\209\208\153\133\68\219\76")]=64,[LUAOBFUSACTOR_DECRYPT_STR_0("\5\9\212", "\112\122\164\183\95\83")]=262205};
cstrike.get_health = function(entity)
	if entity then
		local health = entity:get_prop(LUAOBFUSACTOR_DECRYPT_STR_0("\215\27\25\146\14\55\77\195\35\39\169\10\54", "\147\79\70\208\111\68\40"), LUAOBFUSACTOR_DECRYPT_STR_0("\20\100\54\168\28\90\51\148\17", "\121\59\95\224")):get_int();
		return math.round(health);
	end
	return nil;
end;
cstrike.get_velocity = function(entity)
	if entity then
		local x = entity:get_prop(LUAOBFUSACTOR_DECRYPT_STR_0("\20\1\255\170\49\38\197\184\60\52\217\141\34", "\80\85\160\232"), LUAOBFUSACTOR_DECRYPT_STR_0("\206\197\77\91\86\213\198\246\84\93\92\247\218\193\11\99", "\163\154\59\62\53\131")):get_float();
		local y = entity:get_prop(LUAOBFUSACTOR_DECRYPT_STR_0("\60\16\74\36\36\167\29\20\121\7\60\177\10", "\120\68\21\102\69\212"), LUAOBFUSACTOR_DECRYPT_STR_0("\225\144\20\248\6\240\233\163\13\254\12\210\245\148\83\192", "\140\207\98\157\101\166")):get_float();
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
		if ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\22\73\74\121", "\91\32\57\26\103\75\37\162"), LUAOBFUSACTOR_DECRYPT_STR_0("\132\34\255\215\55\179\177", "\195\71\145\178\69\210\221"), LUAOBFUSACTOR_DECRYPT_STR_0("\159\29\95\208\201\127\188\6", "\210\114\41\181\164\26"), LUAOBFUSACTOR_DECRYPT_STR_0("\57\168\165\240\74\169\165\243\3\171\164\167\1\161\179", "\106\196\202\135")):get_key() then
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
		local duck_speed = entity:get_prop(LUAOBFUSACTOR_DECRYPT_STR_0("\222\79\196\157\251\104\254\143\246\122\226\186\232", "\154\27\155\223"), LUAOBFUSACTOR_DECRYPT_STR_0("\238\104\171\17\234\251\10\199\208\71\168\24\202", "\131\55\205\125\174\142\105\172")):get_float();
		local duck_amount = entity:get_prop(LUAOBFUSACTOR_DECRYPT_STR_0("\24\60\113\104\129\153\234\123\48\9\87\79\146", "\92\104\46\42\224\234\143\43"), LUAOBFUSACTOR_DECRYPT_STR_0("\56\147\9\239\23\32\175\4\194\62\58\185\1\247", "\85\204\111\131\83")):get_float();
		if ((duck_speed == 8) and (duck_amount > 0) and not cstrike.cmd:has_flag(1)) then
			return true;
		end
	end
	return false;
end;
cstrike.is_inair = function(entity)
	if entity then
		local local_player = entity_list.get_client_entity(engine.get_local_player());
		local ground_entity = local_player:get_prop(LUAOBFUSACTOR_DECRYPT_STR_0("\164\65\72\200\129\102\114\218\140\116\110\239\146", "\224\21\23\138"), LUAOBFUSACTOR_DECRYPT_STR_0("\26\223\213\158\5\239\200\183\19\197\211\173\30\244\196", "\119\128\189\217")):get_int();
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
		local scoped = entity:get_prop(LUAOBFUSACTOR_DECRYPT_STR_0("\95\223\187\107\221\75\231\133\81\235\105", "\27\139\228\40\142"), LUAOBFUSACTOR_DECRYPT_STR_0("\191\118\25\16\43\19\251\189\89\30\61", "\210\41\123\89\88\64\152")):get_int();
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
	local sub = {[LUAOBFUSACTOR_DECRYPT_STR_0("\218", "\162\128\32\138\187\212")]=(to.x - from.x),[LUAOBFUSACTOR_DECRYPT_STR_0("\255", "\134\182\28\94")]=(to.y - from.y),[LUAOBFUSACTOR_DECRYPT_STR_0("\166", "\220\146\225\59\119")]=(to.z - from.z)};
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
	local data = {[LUAOBFUSACTOR_DECRYPT_STR_0("\164\52\3\41\250\213", "\208\85\113\78\159\161\190")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\71\198\47", "\33\169\89\235\213")]=180};
	local players = entity_list.get_all(LUAOBFUSACTOR_DECRYPT_STR_0("\133\107\199\22\89\191\252\163\90", "\198\40\148\70\53\222\133"));
end;
local antiaim = {};
antiaim.run = function()
	local fake_yaw_type = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\7\41\240\117", "\85\72\151\16"), LUAOBFUSACTOR_DECRYPT_STR_0("\238\82\190\28\61\89\36\194", "\175\60\202\117\16\56\77"), LUAOBFUSACTOR_DECRYPT_STR_0("\17\169\48\187\198\48\58", "\86\204\94\222\180\81"), LUAOBFUSACTOR_DECRYPT_STR_0("\88\197\171\202\165\35\1\7\62\208\185\223\224", "\30\164\192\175\133\90\96\112"));
	local body_yaw_limit = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\58\180\189\247", "\104\213\218\146"), LUAOBFUSACTOR_DECRYPT_STR_0("\18\133\228\188\72\228\58\134", "\83\235\144\213\101\133"), LUAOBFUSACTOR_DECRYPT_STR_0("\30\173\61\87\88\198\220", "\89\200\83\50\42\167\176\32"), LUAOBFUSACTOR_DECRYPT_STR_0("\5\71\113\30\103\81\116\16\103\68\124\10\46\92", "\71\40\21\103"));
	local fake_yaw_limit = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\192\161\218\251", "\146\192\189\158\213\137\212\125"), LUAOBFUSACTOR_DECRYPT_STR_0("\2\195\57\95\27\34\196\32", "\67\173\77\54\54"), LUAOBFUSACTOR_DECRYPT_STR_0("\93\200\28\47\45\4\118", "\26\173\114\74\95\101"), LUAOBFUSACTOR_DECRYPT_STR_0("\124\125\243\4\26\101\249\22\26\112\241\12\83\104", "\58\28\152\97"));
	local yaw_jitter = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\106\236\140\56", "\56\141\235\93"), LUAOBFUSACTOR_DECRYPT_STR_0("\27\142\31\32\74\59\137\6", "\90\224\107\73\103"), LUAOBFUSACTOR_DECRYPT_STR_0("\1\7\84\18\100\4\133", "\70\98\58\119\22\101\233"), LUAOBFUSACTOR_DECRYPT_STR_0("\206\170\54\12\58\121\227\191\36\94", "\151\203\65\44\80\16"));
	local yaw_jitter_conditions = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\15\21\83\53", "\93\116\52\80"), LUAOBFUSACTOR_DECRYPT_STR_0("\24\90\161\235\116\85\188\239", "\89\52\213\130"), LUAOBFUSACTOR_DECRYPT_STR_0("\153\243\184\177\172\247\186", "\222\150\214\212"), LUAOBFUSACTOR_DECRYPT_STR_0("\42\127\37\131\25\119\38\215\22\108\114\192\28\112\54\202\7\119\61\205\0", "\115\30\82\163"));
	local yaw_jitter_type = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\47\45\115\229", "\125\76\20\128\200\230\115"), LUAOBFUSACTOR_DECRYPT_STR_0("\119\254\1\197\101\87\249\24", "\54\144\117\172\72"), LUAOBFUSACTOR_DECRYPT_STR_0("\36\241\229\191\34\249\15", "\99\148\139\218\80\152"), LUAOBFUSACTOR_DECRYPT_STR_0("\152\8\29\100\236\216\63\173\164\27\74\48\255\193\46", "\193\105\106\68\134\177\75\217"));
	local yaw_jitter_range = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\179\245\113\114", "\225\148\22\23\71\211\107\159"), LUAOBFUSACTOR_DECRYPT_STR_0("\38\233\253\82\74\230\224\86", "\103\135\137\59"), LUAOBFUSACTOR_DECRYPT_STR_0("\245\133\113\38\192\129\115", "\178\224\31\67"), LUAOBFUSACTOR_DECRYPT_STR_0("\102\58\166\189\164\142\186\35\90\41\241\239\175\137\169\50", "\63\91\209\157\206\231\206\87"));
	local fake_yaw_direction = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\17\235\123\196", "\67\138\28\161\134"), LUAOBFUSACTOR_DECRYPT_STR_0("\50\10\43\14\72\68\62\217", "\115\100\95\103\101\37\87\180"), LUAOBFUSACTOR_DECRYPT_STR_0("\254\18\194\121\234\216\27", "\185\119\172\28\152"), LUAOBFUSACTOR_DECRYPT_STR_0("\201\28\0\193\27\109\76\248\93\15\205\73\113\78\251\20\4\202", "\143\125\107\164\59\20\45"));
	local yaw_additive = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\54\27\74\23", "\100\122\45\114\74"), LUAOBFUSACTOR_DECRYPT_STR_0("\246\79\61\38\252\41\139\218", "\183\33\73\79\209\72\226"), LUAOBFUSACTOR_DECRYPT_STR_0("\226\26\10\55\78\140\79", "\165\127\100\82\60\237\35\119"), LUAOBFUSACTOR_DECRYPT_STR_0("\105\112\222\154\202\114\179\126\68\120\223\223", "\48\17\169\186\171\22\215\23"));
	local body_roll = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\133\30\232\165", "\215\127\143\192\186"), LUAOBFUSACTOR_DECRYPT_STR_0("\50\169\170\177\55\114\26\170", "\115\199\222\216\26\19"), LUAOBFUSACTOR_DECRYPT_STR_0("\26\171\195\93\10\120\188", "\93\206\173\56\120\25\208\39"), LUAOBFUSACTOR_DECRYPT_STR_0("\98\172\245\188\166\94\79\175\253", "\32\195\145\197\134\44"));
	local body_roll_amount = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\153\174\119\249", "\203\207\16\156\18\192\83\42"), LUAOBFUSACTOR_DECRYPT_STR_0("\212\70\39\143\184\73\58\139", "\149\40\83\230"), LUAOBFUSACTOR_DECRYPT_STR_0("\56\231\228\39\42\236\19", "\127\130\138\66\88\141"), LUAOBFUSACTOR_DECRYPT_STR_0("\100\87\94\149\239\29\234\74\84\26\141\162\0\240\72\76", "\38\56\58\236\207\111\133"));
	local inverter_state = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\96\55\160\229", "\50\86\199\128\113\41\71"), LUAOBFUSACTOR_DECRYPT_STR_0("\207\59\67\78\55\7\63\214", "\142\85\55\39\26\102\86\187"), LUAOBFUSACTOR_DECRYPT_STR_0("\109\26\40\116\88\30\42", "\42\127\70\17"), LUAOBFUSACTOR_DECRYPT_STR_0("\98\72\184\248\154\66\79\161\177\222\77\80\169\227\195", "\35\38\204\145\183"));
	if (antiaim_options:get() == 0) then
	end
	if (antiaim_options:get() == 1) then
		if (cstrike.is_standing(globals.local_player) or cstrike.is_slowwalking(globals.local_player)) then
			fake_yaw_direction:set(0);
			yaw_jitter:set(true);
			yaw_jitter_conditions:set(LUAOBFUSACTOR_DECRYPT_STR_0("\21\248\48\53\28\47\226\54", "\70\140\81\91\120"), true);
			yaw_jitter_conditions:set(LUAOBFUSACTOR_DECRYPT_STR_0("\69\227\173\142\74\117\42", "\18\130\193\229\35\27\77"), true);
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
			yaw_jitter_conditions:set(LUAOBFUSACTOR_DECRYPT_STR_0("\131\204\20\223\163\208", "\202\162\52\190"), true);
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
			yaw_jitter_conditions:set(LUAOBFUSACTOR_DECRYPT_STR_0("\147\36\242\214\176\44", "\222\75\132\191"), true);
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
			yaw_jitter_conditions:set(LUAOBFUSACTOR_DECRYPT_STR_0("\206\164\64\204\237\172", "\131\203\54\165"), true);
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
			yaw_jitter_conditions:set(LUAOBFUSACTOR_DECRYPT_STR_0("\46\94\187\2\179\31\160\54", "\125\42\218\108\215\118\206\81"), true);
			yaw_jitter_conditions:set(LUAOBFUSACTOR_DECRYPT_STR_0("\177\53\229\64\78\32\129", "\230\84\137\43\39\78"), true);
			yaw_jitter_type:set(2);
			yaw_jitter_range:set(-24);
			body_yaw_limit:set(33);
			fake_yaw_limit:set(28);
			fake_yaw_type:set(1);
		end
		if (cstrike.is_inair(globals.local_player) and not cstrike.is_moving(globals.local_player)) then
			yaw_additive:set(0);
			yaw_jitter:set(true);
			yaw_jitter_conditions:set(LUAOBFUSACTOR_DECRYPT_STR_0("\144\206\122\22\202\40", "\217\160\90\119\163\90\171"), true);
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
			yaw_jitter_conditions:set(LUAOBFUSACTOR_DECRYPT_STR_0("\205\245\248\77\238\253", "\128\154\142\36"), true);
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
			yaw_jitter_conditions:set(LUAOBFUSACTOR_DECRYPT_STR_0("\152\197\32\112\82\178", "\213\170\86\25\60"), true);
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
			yaw_jitter_conditions:set(LUAOBFUSACTOR_DECRYPT_STR_0("\78\6\216\52\176\217\230\55", "\29\114\185\90\212\176\136\80"), true);
			yaw_jitter_conditions:set(LUAOBFUSACTOR_DECRYPT_STR_0("\189\198\116\63\131\201\127", "\234\167\24\84"), true);
			yaw_jitter_type:set(2);
			yaw_jitter_range:set(-29);
			body_yaw_limit:set(23);
			fake_yaw_limit:set(24);
			fake_yaw_type:set(1);
		end
		if (cstrike.is_inair(globals.local_player) and not cstrike.is_moving(globals.local_player)) then
			yaw_additive:set(0);
			yaw_jitter:set(true);
			yaw_jitter_conditions:set(LUAOBFUSACTOR_DECRYPT_STR_0("\93\71\238\237\64\146", "\20\41\206\140\41\224\31\197"), true);
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
			yaw_jitter_conditions:set(LUAOBFUSACTOR_DECRYPT_STR_0("\124\53\0\4\25\49", "\49\90\118\109\119\86\55\89"), true);
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
			yaw_jitter_conditions:set(LUAOBFUSACTOR_DECRYPT_STR_0("\213\53\53\60\22\255", "\152\90\67\85\120"), true);
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
callbacks.register(LUAOBFUSACTOR_DECRYPT_STR_0("\100\249\186\221\75\251\166\223\113", "\20\150\201\169"), on_post_move);
ui.add_label(LUAOBFUSACTOR_DECRYPT_STR_0("", "\234\78\83\207\184\162\236\210"));
ui.add_label(LUAOBFUSACTOR_DECRYPT_STR_0("\31\238\136\186\143\9\31\238\136\186\143\9\31\238\136\186\143\9\31\238\250\251\200\76\93\161\220\186\143\9\31\238\136\186\143\9\31\238\136\186\143\9\31\238", "\63\206\168\154\175\41"));
local tickbase_boost = ui.add_checkbox(LUAOBFUSACTOR_DECRYPT_STR_0("\245\143\190\13\227\169\58\208\144\235\38\226\188\60\222\150\174\2\234\162\58", "\177\224\203\111\143\204\78"));
tickbase_boost:set(false);
local ideal_tick = ui.add_checkbox(LUAOBFUSACTOR_DECRYPT_STR_0("\6\214\127\183\10\62\182\38\209\113", "\79\178\26\214\102\30\226"));
local cmd_ticks = cvar.find_var(LUAOBFUSACTOR_DECRYPT_STR_0("\243\35\223\66\253\248\32\243\93\255\237\49\240\93\243\227\48\243\92\232\233\54\235\92", "\128\85\128\47\156"));
callbacks.register(LUAOBFUSACTOR_DECRYPT_STR_0("\174\139\52\70\148\17\68\202\187", "\222\228\71\50\203\124\43\188"), function()
	if (ideal_tick:get() == true) then
		cmd_ticks:set_value_int(19);
	end
	if (ideal_tick:get() == false) then
		cmd_ticks:set_value_int(16);
	end
end);
local cmd_ticks = cvar.find_var(LUAOBFUSACTOR_DECRYPT_STR_0("\110\69\128\28\197\78\104\64\173\18\201\82\109\65\176\18\193\69\110\71\182\18\207\69", "\29\51\223\113\164\54"));
function TickbaseBoost()
	if (tickbase_boost:get() == true) then
		cmd_ticks:set_value_int(19);
	else
		cmd_ticks:set_value_int(16);
	end
end
callbacks.register(LUAOBFUSACTOR_DECRYPT_STR_0("\16\217\49\199\187\235\117\254\5", "\96\182\66\179\228\134\26\136"), TickbaseBoost);
local disable_lc_checkbox = ui.add_checkbox(LUAOBFUSACTOR_DECRYPT_STR_0("\99\151", "\34\207\137\135\140\47"));
local cl_lagcompensation = cvar.find_var(LUAOBFUSACTOR_DECRYPT_STR_0("\31\6\25\112\207\8\31\5\43\108\203\1\15\11\50\117\193\1", "\124\106\70\28\174\111"));
local TEAM_TERRORIST = 2;
local TEAM_CT = 3;
local function get_player_team(player)
	local m_iTeamNum = player:get_prop(LUAOBFUSACTOR_DECRYPT_STR_0("\99\66\138\214\70\101\176\209\73\98\188\224\94", "\39\22\213\148"), LUAOBFUSACTOR_DECRYPT_STR_0("\60\189\10\58\185\188\60\31\151\14", "\81\226\99\110\220\221\81"));
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
			engine.execute_client_cmd(LUAOBFUSACTOR_DECRYPT_STR_0("\138\57\237\26\224\133\55\233\84", "\224\86\132\116\148") .. tostring(previous_team_num) .. LUAOBFUSACTOR_DECRYPT_STR_0("\240\112", "\208\65\225\172\188\166\108"));
			changing_from_team = false;
		end
	elseif (disable_lc_checkbox:get() ~= previous_dlc_state) then
		previous_team_num = get_player_team(local_player);
		engine.execute_client_cmd(LUAOBFUSACTOR_DECRYPT_STR_0("\2\227\95\19\186\25\42\20", "\113\147\58\112\206\120\94"));
		changing_from_team = true;
		team_swap_time = global_vars.curtime + 1.5;
		previous_dlc_state = disable_lc_checkbox:get();
	end
end
local function init()
	callbacks.register(LUAOBFUSACTOR_DECRYPT_STR_0("\191\185\117\187\187", "\207\216\28\213"), on_paint);
end
init();
ui.add_label(LUAOBFUSACTOR_DECRYPT_STR_0("", "\216\136\43\95\211"));
ui.add_label(LUAOBFUSACTOR_DECRYPT_STR_0("\201\121\74\61\254\201\121\74\61\254\201\121\74\61\254\201\121\74\61\254\201\15\3\110\171\136\53\25\61\254\201\121\74\61\254\201\121\74\61\254\201\121\74\61\254\201", "\233\89\106\29\222"));
local indic_toggle = ui.add_checkbox(LUAOBFUSACTOR_DECRYPT_STR_0("\132\215\241\171\62\238\185\214\231\177", "\205\185\149\194\93\143"));
local arrows_checkbox = ui.add_checkbox(LUAOBFUSACTOR_DECRYPT_STR_0("\6\33\15\173\44\39\92\135\43\32\25\244\3\54\14\187\53\55", "\66\68\124\212"));
local indicators_color = ui.add_cog(LUAOBFUSACTOR_DECRYPT_STR_0("\242\186\153\62\196\187\203\50\220\164\132\35", "\179\200\235\81"), true, false);
local indicators = {[LUAOBFUSACTOR_DECRYPT_STR_0("\10\234\92\249\176\228", "\121\137\46\156\213\138")]={render.get_screen()},[LUAOBFUSACTOR_DECRYPT_STR_0("\182\32\167\131\160\45\138\133\160\45\161\131\183", "\197\67\213\230")]=vector2d.new(0, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\61\217\92\51\229\197\76\253\62\218", "\91\182\50\71\186\181\37\133")]=render.create_font(LUAOBFUSACTOR_DECRYPT_STR_0("\128\65\183\196\179\123\149\67\184\220\172", "\211\44\214\168\223\91"), 8, 300, bit.bor(font_flags.outline)),[LUAOBFUSACTOR_DECRYPT_STR_0("\232\180\28\111\83\200\249\173\0\116\87", "\152\193\112\28\54\151")]=255,[LUAOBFUSACTOR_DECRYPT_STR_0("\46\32\190\37\156\10\59\42\180", "\72\79\208\81\195\127")]=font_pixel,[LUAOBFUSACTOR_DECRYPT_STR_0("\203\248\82\155", "\185\157\52\232\99\131\182")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\164\49\248\21", "\198\80\145\120\91\208\164\142")]=ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\205\138\142\190", "\159\235\233\219\199\167\123"), LUAOBFUSACTOR_DECRYPT_STR_0("\229\136\162\228\59\12", "\164\225\207\134\84\120"), LUAOBFUSACTOR_DECRYPT_STR_0("\110\74\75\33\187\161\184\86", "\47\41\40\84\201\192\219"), LUAOBFUSACTOR_DECRYPT_STR_0("\42\20\104\89\81\247\14\20\126\67\25\182\5\22\58\81\81\174", "\108\123\26\58\52\215")),[LUAOBFUSACTOR_DECRYPT_STR_0("\122\90", "\28\62\115\181\216")]=ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\218\7\44\242", "\136\102\75\151\85\104"), LUAOBFUSACTOR_DECRYPT_STR_0("\193\239\106\226\248\193\232\115", "\128\129\30\139\213"), LUAOBFUSACTOR_DECRYPT_STR_0("\2\27\172\62\56\40\27\160", "\68\122\199\91\21"), LUAOBFUSACTOR_DECRYPT_STR_0("\113\130\116\119\138\210\234\54\92\195\116\119\211", "\55\227\31\18\170\182\159\85")),[LUAOBFUSACTOR_DECRYPT_STR_0("\125\227", "\25\151\95\202")]=ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\128\116\0\85", "\210\21\103\48\35"), LUAOBFUSACTOR_DECRYPT_STR_0("\141\94\185\137\79\161\82\186", "\200\38\201\229\32"), LUAOBFUSACTOR_DECRYPT_STR_0("\214\174\62\196\104\232\41", "\145\203\80\161\26\137\69"), LUAOBFUSACTOR_DECRYPT_STR_0("\11\126\176\81\38\42\49\177\82\58\111\122\160\74", "\79\17\197\51\74")),[LUAOBFUSACTOR_DECRYPT_STR_0("\185\30\193\49\172\24\197\58\187", "\223\108\164\84")]=ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\44\32\27\127", "\126\65\124\26\216"), LUAOBFUSACTOR_DECRYPT_STR_0("\22\221\235\182\154\22\218\242", "\87\179\159\223\183"), LUAOBFUSACTOR_DECRYPT_STR_0("\47\95\209\83\96\163\90", "\104\58\191\54\18\194\54\112"), LUAOBFUSACTOR_DECRYPT_STR_0("\53\186\5\166\158\50\3\29\172\9\173\138\102\9\22\177", "\115\200\96\195\237\70\98")),[LUAOBFUSACTOR_DECRYPT_STR_0("\43\92", "\68\47\226\22\106")]=ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\52\243\94\195", "\102\146\57\166"), LUAOBFUSACTOR_DECRYPT_STR_0("\139\156\58\222\43\71\186\151", "\206\228\74\178\68\46"), LUAOBFUSACTOR_DECRYPT_STR_0("\53\44\8\90\0\40\10", "\114\73\102\63"), LUAOBFUSACTOR_DECRYPT_STR_0("\204\0\255\129\69\242\130\253\240\26\187\143\0\248", "\132\105\155\228\101\129\234\146")),[LUAOBFUSACTOR_DECRYPT_STR_0("\121\51\3", "\29\94\100\188")]=ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\235\134\93\206", "\185\231\58\171"), LUAOBFUSACTOR_DECRYPT_STR_0("\202\4\214\216\238\10", "\139\109\187\186\129\126\125"), LUAOBFUSACTOR_DECRYPT_STR_0("\50\93\255\77\225\200\32", "\117\56\145\40\147\169\76\173"), LUAOBFUSACTOR_DECRYPT_STR_0("\0\115\250\33\58\177\251\109\126\245\37\54\163\243\109\117\226\45\37\182\255\41\127\180\35\50\189", "\77\26\148\72\87\196\150"))}};
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
	indicators.font_used:text(render.center_screen.w - 20, render.center_screen.h + 6, color.new(135, 130, 129, 255), LUAOBFUSACTOR_DECRYPT_STR_0("\115\234\252\85\6\37", "\55\163\170\28\72\96\104\23"));
	indicators.font_used:text(render.center_screen.w + 4, render.center_screen.h + 6, color.new(135, 130, 129, math.max(indicators.pulse_alpha, 25)), LUAOBFUSACTOR_DECRYPT_STR_0("\42\53\118\179\92", "\110\112\52\230\27\144\217"));
	indicators.indicators = {};
	local body_roll_amount = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\135\240\203\165", "\213\145\172\192"), LUAOBFUSACTOR_DECRYPT_STR_0("\85\136\184\218\207\119\32\121", "\20\230\204\179\226\22\73"), LUAOBFUSACTOR_DECRYPT_STR_0("\89\53\70\247\60\127\60", "\30\80\40\146\78"), LUAOBFUSACTOR_DECRYPT_STR_0("\138\196\47\207\64\241\25\192\164\139\42\219\15\246\24\216", "\200\171\75\182\96\131\118\172"));
	if (math.abs(cstrike.roll) > 0) then
		table.insert(indicators.indicators, {[LUAOBFUSACTOR_DECRYPT_STR_0("\178\1\215\41", "\198\100\175\93\214\41\55")]=LUAOBFUSACTOR_DECRYPT_STR_0("\137\11\229\167", "\219\68\169\235"),[LUAOBFUSACTOR_DECRYPT_STR_0("\243\123\213\142\99", "\144\20\185\225\17\60\198")]=color.new(255, 150, 255)});
	end
	if indicators.refs.dt:get_key() then
		table.insert(indicators.indicators, {[LUAOBFUSACTOR_DECRYPT_STR_0("\29\124\204\63", "\105\25\180\75\81\119\132")]=LUAOBFUSACTOR_DECRYPT_STR_0("\129\222", "\197\138\67\141\214\186\232\181"),[LUAOBFUSACTOR_DECRYPT_STR_0("\162\84\95\169\37", "\193\59\51\198\87\138\43\91")]=((exploits.ready() and color.new(135, 130, 129, 255)) or color.new(171, 169, 169))});
	end
	if indicators.refs.os:get_key() then
		table.insert(indicators.indicators, {[LUAOBFUSACTOR_DECRYPT_STR_0("\77\222\198\200", "\57\187\190\188\107\182\99")]=LUAOBFUSACTOR_DECRYPT_STR_0("\218\22", "\149\69\127\144"),[LUAOBFUSACTOR_DECRYPT_STR_0("\209\18\137\217\153", "\178\125\229\182\235\217\194\75")]=color.new(135, 130, 129, 255)});
	end
	if indicators.refs.fd:get_key() then
		table.insert(indicators.indicators, {[LUAOBFUSACTOR_DECRYPT_STR_0("\188\74\54\182", "\200\47\78\194\28\128\128")]=LUAOBFUSACTOR_DECRYPT_STR_0("\55\168", "\113\236\146\94\65\65\29"),[LUAOBFUSACTOR_DECRYPT_STR_0("\35\82\74\135\43", "\64\61\38\232\89\48\118")]=color.new(135, 130, 129, 255)});
	end
	if indicators.refs.dmg:get_key() then
		table.insert(indicators.indicators, {[LUAOBFUSACTOR_DECRYPT_STR_0("\50\234\186\149", "\70\143\194\225\112\183\205")]=LUAOBFUSACTOR_DECRYPT_STR_0("\97\62", "\44\122\178\83\197\196"),[LUAOBFUSACTOR_DECRYPT_STR_0("\225\198\77\137\175", "\130\169\33\230\221\85\63\152")]=color.new(135, 130, 129, 255)});
	end
	indicators.draw(indicators.indicators);
end;
local elements = {[1]=LUAOBFUSACTOR_DECRYPT_STR_0("\125\52\60\245\171\17\14\44\56\230\177", "\46\64\93\129\194\114"),[2]=LUAOBFUSACTOR_DECRYPT_STR_0("\218\26\144\233\193\122\133\128\229\29\196\230\200\52\209", "\138\115\228\138\169\90\181\160"),[3]=LUAOBFUSACTOR_DECRYPT_STR_0("\144\228\53\38\230\122\214\166\239\47", "\195\136\92\66\131\90\186")};
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
	render.text(x + 8, y + 3, string.format(LUAOBFUSACTOR_DECRYPT_STR_0("\17\103\19\224\126\75", "\52\20\51\197\80\45\56"), text, modifier * 100), color.new(255, 255, 255, 255 * a));
	local rx, ry, rw, rh = x + 8, y + 3 + 17, text_width, 12;
	rectangle_outline(rx, ry, rw, rh, 0, 0, 0, 255 * a, 1);
	render.rectangle_filled(rx + 1, ry + 1, rw - 2, rh - 2, color.new(16, 16, 16, 180 * a));
	render.rectangle_filled(rx + 1, ry + 1, math.floor((rw - 2) * modifier), rh - 2, color.new(r, g, b, 180 * a));
end
local font = render.create_font(LUAOBFUSACTOR_DECRYPT_STR_0("\124\230\46\236\190\34\28", "\42\131\92\136\223\76\125\159"), 12, 400, bit.bor(font_flags.outline));
local g_col_disabled = color.new(153, 124, 122);
local g_col_enabled = color.new(153, 124, 122);
local lag_history = {0,0,0,0,0,0};
local jitter = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\132\95\161\201", "\214\62\198\172"), LUAOBFUSACTOR_DECRYPT_STR_0("\207\168\54\27\90\42\2\122", "\142\198\66\114\119\107\107\23"), LUAOBFUSACTOR_DECRYPT_STR_0("\196\142\213\235\92\133\121", "\131\235\187\142\46\228\21\150"), LUAOBFUSACTOR_DECRYPT_STR_0("\179\136\162\100\84\131\157\161\33\76", "\234\233\213\68\62"));
local exploit = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\250\89\220\3", "\168\56\187\102\54\137\28"), LUAOBFUSACTOR_DECRYPT_STR_0("\53\50\94\193\251\230\4\57", "\112\74\46\173\148\143"), LUAOBFUSACTOR_DECRYPT_STR_0("\119\165\22\197\174\122\203", "\48\192\120\160\220\27\167\205"), LUAOBFUSACTOR_DECRYPT_STR_0("\165\19\41\231\209\174\217", "\224\125\72\133\189\203\189\202"));
local dt = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\20\221\73\131", "\70\188\46\230\52"), LUAOBFUSACTOR_DECRYPT_STR_0("\56\89\14\24\243\20\85\13", "\125\33\126\116\156"), LUAOBFUSACTOR_DECRYPT_STR_0("\39\250\37\35\84\1\243", "\96\159\75\70\38"), LUAOBFUSACTOR_DECRYPT_STR_0("\13\224\43\183\63\170\28\61\238\46\245\56\170\69", "\73\143\94\213\83\207\60"));
local dmg = ui.get_rage(LUAOBFUSACTOR_DECRYPT_STR_0("\146\10\94\125\198\217\232", "\213\111\48\24\180\184\132\115"), LUAOBFUSACTOR_DECRYPT_STR_0("\26\131\245\175\82\34\135\187\162\94\58\139\252\163\31\56\156\254\180\77\62\142\254\230\84\50\147", "\87\234\155\198\63"));
local fs = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\145\121\204\236", "\195\24\171\137\40"), LUAOBFUSACTOR_DECRYPT_STR_0("\253\125\15\245\243\221\122\22", "\188\19\123\156\222"), LUAOBFUSACTOR_DECRYPT_STR_0("\201\165\130\2\11\247\11", "\142\192\236\103\121\150\103"), LUAOBFUSACTOR_DECRYPT_STR_0("\137\31\45\50\223\218\174\3\44\62\194\201\239\6\45\46", "\207\109\72\87\172\174"));
local fd = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\191\215\217\67", "\237\182\190\38\208\58"), LUAOBFUSACTOR_DECRYPT_STR_0("\110\163\24\2\108\78\164\1", "\47\205\108\107\65"), LUAOBFUSACTOR_DECRYPT_STR_0("\12\74\121\32\161\65\2\45", "\74\43\18\69\140\45\99"), LUAOBFUSACTOR_DECRYPT_STR_0("\226\28\218\215\23\217\220\68\207\93\218\215\78", "\164\125\177\178\55\189\169\39"));
local sw = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\3\24\62\78", "\78\113\77\45\216"), LUAOBFUSACTOR_DECRYPT_STR_0("\91\27\247\27\236\123\112", "\28\126\153\126\158\26"), LUAOBFUSACTOR_DECRYPT_STR_0("\85\37\173\0\168\160\18\246", "\24\74\219\101\197\197\124\130"), LUAOBFUSACTOR_DECRYPT_STR_0("\2\199\247\101\12\60\196\236\123\67\63\139\243\119\85", "\81\171\152\18\44"));
local indicator_checkbox = ui.add_checkbox(LUAOBFUSACTOR_DECRYPT_STR_0("\35\9\251\113\192\244\153\197\9\12\255\115\198\229\214\222", "\103\104\150\16\167\145\185\172"));
local g_col_disabled = color.new(255, 255, 255);
local g_col_enabled = color.new(255, 255, 255);
local screen_width, screen_height = render.get_screen();
local center_x = screen_width / 2;
local center_y = screen_height / 2;
local dmg = ui.get_rage(LUAOBFUSACTOR_DECRYPT_STR_0("\220\67\209\84\233\71\211", "\155\38\191\49"), LUAOBFUSACTOR_DECRYPT_STR_0("\100\63\90\184\68\35\89\241\77\55\89\176\78\51\20\190\95\51\70\163\64\50\81\241\66\51\77", "\41\86\52\209"));
local function getMinimumDamage(var)
	local minimum_damage = var:get();
	if (minimum_damage == 0) then
		return LUAOBFUSACTOR_DECRYPT_STR_0("\85\61\13\246", "\52\72\121\153");
	elseif (minimum_damage > 100) then
		return string.format(LUAOBFUSACTOR_DECRYPT_STR_0("\40\213\105\166", "\25\229\76\194\188\19\31\20"), minimum_damage - 100);
	else
		return tostring(minimum_damage);
	end
end
local function drawDmg()
	local is_overriding = dmg:get_key();
	local dmg1 = ui.get_rage(LUAOBFUSACTOR_DECRYPT_STR_0("\44\114\199\121\2\51\235", "\107\23\169\28\112\82\135"), LUAOBFUSACTOR_DECRYPT_STR_0("\52\137\219\132\35\62\161\89\132\212\128\47\44\169", "\121\224\181\237\78\75\204"));
	local dmg2 = ui.get_rage(LUAOBFUSACTOR_DECRYPT_STR_0("\253\214\112\65\211\120\39", "\186\179\30\36\161\25\75"), LUAOBFUSACTOR_DECRYPT_STR_0("\115\4\87\4\212\11\83\77\93\12\212\31\89\8\25\2\207\27\76\31\80\9\220", "\62\109\57\109\185\126"));
	local v = getMinimumDamage((is_overriding and dmg2) or dmg1);
	font:text(center_x + 5, center_y - 20, (is_overriding and g_col_enabled) or g_col_disabled, string.format(LUAOBFUSACTOR_DECRYPT_STR_0("\149\191", "\176\204\144\178\228\167\60\53"), v));
end
local function onPaint()
	if (indicator_checkbox:get() == true) then
		if not client.is_alive() then
			return;
		end
		drawDmg();
	end
end
callbacks.register(LUAOBFUSACTOR_DECRYPT_STR_0("\160\41\76\1\250", "\208\72\37\111\142\102\129\187"), onPaint);
local custom_scopre = ui.add_checkbox(LUAOBFUSACTOR_DECRYPT_STR_0("\125\101\87\39\76\83\48\87\48\76\78\117", "\62\16\36\83\35"));
local scope_color_label = ui.add_label(LUAOBFUSACTOR_DECRYPT_STR_0("\246\33\212\220\217\22\51\6\201\45\201", "\165\66\187\172\188\54\80\105"));
local scope_color = ui.add_cog(LUAOBFUSACTOR_DECRYPT_STR_0("\228\153\22\227", "\128\234\114\130\87\95"), true, false);
local scope_size = ui.add_slider(LUAOBFUSACTOR_DECRYPT_STR_0("\190\204\169\101\247\90\160\132\213\163", "\237\175\198\21\146\122\211"), 0, 500);
local scope_padding = ui.add_slider(LUAOBFUSACTOR_DECRYPT_STR_0("\56\245\62\151\64\173\27\247\53\131\76\227\12", "\107\150\81\231\37\141"), 0, 250);
local scopetype = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\104\125\239\12\191\219\222", "\62\20\156\121\222\183\173\91"), LUAOBFUSACTOR_DECRYPT_STR_0("\199\135\244\3\222\197\84", "\128\226\154\102\172\164\56"), LUAOBFUSACTOR_DECRYPT_STR_0("\99\33\255\184\107\78\75\39\248\168\105", "\44\85\151\221\25\110"), LUAOBFUSACTOR_DECRYPT_STR_0("\138\10\73\148\11\162\218\191\15\67\135\26\162\203\160\25\67", "\217\105\38\228\110\130\191"));
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
		if (local_player:get_prop(LUAOBFUSACTOR_DECRYPT_STR_0("\39\109\30\204\2\74\36\222\15\88\56\235\17", "\99\57\65\142"), LUAOBFUSACTOR_DECRYPT_STR_0("\85\254\234\46\93\192\239\18\80", "\56\161\131\102")):get_int() <= 0) then
			return;
		end
		local multiplier = (1 / (225 / 1000)) * global_vars.frametime;
		if local_player:get_prop(LUAOBFUSACTOR_DECRYPT_STR_0("\91\242\34\12\39\96\48\126\223\24\61", "\31\166\125\79\116\48\92"), LUAOBFUSACTOR_DECRYPT_STR_0("\38\38\121\221\85\201\53\36\9\126\240", "\75\121\27\148\38\154\86")):get_bool() then
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
callbacks.register(LUAOBFUSACTOR_DECRYPT_STR_0("\156\242\140\190\229", "\236\147\229\208\145\173\42"), scope_on_paint);
local dist_ref = ui.add_slider(LUAOBFUSACTOR_DECRYPT_STR_0("\5\185\247\49\195\238\83\85\34\190\240\99\195\247\69\83\48\191\253\38", "\81\209\158\67\167\158\54\39"), 0, 200);
local get_cam_idealdist = cvar.find_var(LUAOBFUSACTOR_DECRYPT_STR_0("\247\36\232\188\131\59\137\52\248\33\236\144\158", "\148\69\133\227\234\95\236\85"));
callbacks.register(LUAOBFUSACTOR_DECRYPT_STR_0("\97\138\173\168\38", "\17\235\196\198\82"), function()
	get_cam_idealdist:set_value_int(dist_ref:get());
end);
ui.add_label(LUAOBFUSACTOR_DECRYPT_STR_0("", "\32\202\25\183\218\75\156\159"));
ui.add_label(LUAOBFUSACTOR_DECRYPT_STR_0("\19\159\135\127\92\19\159\135\127\92\19\159\135\127\49\90\204\196\58\16\95\222\201\58\19\70\204\135\127\92\19\159\135\127\92\19\159\135\127\92\19\159\135\127\92\19\159", "\51\191\167\95\124"));
local viewmodel_in_scope = ui.add_checkbox(LUAOBFUSACTOR_DECRYPT_STR_0("\148\220\176\46\176\173\209\176\53\253\171\219\245\42\190\173\197\176", "\194\181\213\89\221"));
local cstrike = {};
cstrike.is_scoped = function(entity)
	if entity then
		local scoped = entity:get_prop(LUAOBFUSACTOR_DECRYPT_STR_0("\85\228\198\8\78\113\166\213\104\213\235", "\17\176\153\75\29\33\202\180"), LUAOBFUSACTOR_DECRYPT_STR_0("\208\9\79\13\152\78\222\57\93\33\143", "\189\86\45\68\235\29")):get_int();
		if (scoped == 1) then
			return true;
		end
	end
	return false;
end;
local on_paint = function()
	local fov_cs_debug = cvar.find_var(LUAOBFUSACTOR_DECRYPT_STR_0("\68\212\231\207\65\200\206\244\71\217\228\247", "\34\187\145\144"));
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
callbacks.register(LUAOBFUSACTOR_DECRYPT_STR_0("\242\92\64\40\238", "\130\61\41\70\154\103\120\154"), on_paint);
local animations = {[LUAOBFUSACTOR_DECRYPT_STR_0("\45\92\129\205\36\171\218", "\66\50\222\161\69\197\190\64")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\191\72\117\181\133\161\254\160\89\115\178\179\173\207", "\204\60\20\193\236\194\161")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\33\142\161\7\251\14\139\180\10\247\14\136\187", "\81\231\213\100\147")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\71\82\39\118\162\189\43\61\88\91\41\97\148\188\34", "\52\62\78\18\203\211\76\98")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\142\106\158\124\221\143\105", "\225\26\234\21\178")]=ui.add_multi_dropdown(LUAOBFUSACTOR_DECRYPT_STR_0("\146\93\224\89\48\170\49\119\191\65\254\76\43\174\126\120\162", "\209\40\147\45\95\199\17\22"), {elements[1],elements[2],elements[3]})};
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
	local m_flPoseParameter = ent:get_prop(LUAOBFUSACTOR_DECRYPT_STR_0("\137\114\61\49\246\190\67\35\29\254\160\71\22\26\249\170", "\205\38\98\115\151"), LUAOBFUSACTOR_DECRYPT_STR_0("\68\134\184\13\61\125\155\187\121\184\172\0\0\119\156\187\91", "\41\217\222\97\109\18\232\222"));
	m_flPoseParameter:set_float_index(0, 1);
end;
animations.static_legs = function(ent)
	if not animations.static_legs_on then
		return;
	end
	local m_flPoseParameter = ent:get_prop(LUAOBFUSACTOR_DECRYPT_STR_0("\83\190\196\101\235\100\143\218\73\227\122\139\239\78\228\112", "\23\234\155\39\138"), LUAOBFUSACTOR_DECRYPT_STR_0("\52\33\189\137\178\168\42\27\139\132\144\166\52\27\175\128\144", "\89\126\219\229\226\199"));
	m_flPoseParameter:set_float_index(6, 1);
end;
animations.pitch_land = function(ent)
	if not animations.pitch_land_on then
		return;
	end
	if not animations.on_land then
		return;
	end
	local m_flPoseParameter = ent:get_prop(LUAOBFUSACTOR_DECRYPT_STR_0("\248\76\183\194\219\214\210\127\210\113\133\225\206\204\217\89", "\188\24\232\128\186\165\183\62"), LUAOBFUSACTOR_DECRYPT_STR_0("\95\12\44\4\128\47\10\87\3\43\26\177\45\28\70\54\56", "\50\83\74\104\208\64\121"));
	m_flPoseParameter:set_float_index(12, 0.45);
end;
local ground_ticks = 0;
local end_time = 0;
animations.update_land = function()
	if (not globals.local_player or not client.is_alive()) then
		return;
	end
	local on_ground = bit.band(globals.local_player:get_prop(LUAOBFUSACTOR_DECRYPT_STR_0("\113\106\153\23\84\77\163\5\89\95\191\48\71", "\53\62\198\85"), LUAOBFUSACTOR_DECRYPT_STR_0("\194\224\116\163\49\249\200\204", "\175\191\18\229\93\152")):get_int(), 1);
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
local font = render.create_font(LUAOBFUSACTOR_DECRYPT_STR_0("\154\178\43\166\133\186\57\190\196\175\35\178\140\179\106\253", "\233\223\74\202"), 12, 250, bit.bor(font_flags.outline));
local on_paint = function()
	render.update();
	indicators.main();
	antiaim.handle_visibility();
	animations.update_land();
end;
callbacks.register(LUAOBFUSACTOR_DECRYPT_STR_0("\97\160\244\189\231", "\17\193\157\211\147\119"), on_paint);
callbacks.register(LUAOBFUSACTOR_DECRYPT_STR_0("\46\18\92\231\1\28\65\250\51\34\90\227\58\28\91\246", "\94\125\47\147"), animations.main);
local screen_x, screen_y = render.get_screen();
local verdana = render.create_font(LUAOBFUSACTOR_DECRYPT_STR_0("\105\16\248\162\15\249\240", "\63\117\138\198\110\151\145\173"), 12, 500, bit.bor(font_flags.dropshadow, font_flags.outline));
ffi.cdef(LUAOBFUSACTOR_DECRYPT_STR_0("", "\109\215\128\198\224\102\210\96"));
local hit_log = ui.add_multi_dropdown(LUAOBFUSACTOR_DECRYPT_STR_0("\23\191\197\13\163\41\180\44", "\95\214\177\45\207\70\211"), {LUAOBFUSACTOR_DECRYPT_STR_0("\115\184\226\56\72\50", "\32\219\144\93\45\92")});
local active = {};
function addLog(time, ...)
	table.insert(active, {[LUAOBFUSACTOR_DECRYPT_STR_0("\84\228\93\235", "\32\129\37\159\18")]={...},[LUAOBFUSACTOR_DECRYPT_STR_0("\228\123\174\179", "\144\18\195\214")]=time,[LUAOBFUSACTOR_DECRYPT_STR_0("\245\211\171\242\72", "\145\182\199\147\49\101\107")]=(global_vars.realtime + time),[LUAOBFUSACTOR_DECRYPT_STR_0("\232\138\49\197\186", "\139\229\93\170\200")]={{5,20,40},{5,20,40}},[LUAOBFUSACTOR_DECRYPT_STR_0("\108\107\218\0\248", "\20\52\170\97\156")]=-11,[LUAOBFUSACTOR_DECRYPT_STR_0("\222\69\30\133\95\74\53", "\166\26\110\228\59\21\87")]=-11});
end
local function PrintInChat(text)
	local FindElement = ffi.cast(LUAOBFUSACTOR_DECRYPT_STR_0("\164\164\25\66\24\191\175\14\11\19\190\164\13\3\32\142\190\2\66\12\178\171\6\71\85\248\226\28\68\22\181\224\70\11\28\190\164\25\95\95\178\162\11\89\85\248", "\209\202\106\43\127"), client.find_sig(LUAOBFUSACTOR_DECRYPT_STR_0("\238\66\212\74\7\249\0\217\67\5", "\141\46\189\47\105"), LUAOBFUSACTOR_DECRYPT_STR_0("\74\186\170\183\61\175\207\204\95\186\185\175\71\205\170\186\59\175\186\183\95\186\188\175\74\184\170\183\61\175\204\182\95\188\185\175\57\185\170\188\70\175\189\184\95\189\178", "\127\143\138\143")));
	local CHudChat = FindElement(ffi.cast(LUAOBFUSACTOR_DECRYPT_STR_0("\70\195\95\254\182\93\200\72\183\189\92\195\75\189\251", "\51\173\44\151\209"), ffi.cast(LUAOBFUSACTOR_DECRYPT_STR_0("\188\33\20\219\157\239\187\23\14", "\201\72\122\175\237\155"), client.find_sig(LUAOBFUSACTOR_DECRYPT_STR_0("\30\243\208\61\241\243\83\251\213\52", "\125\159\185\88\159\135"), LUAOBFUSACTOR_DECRYPT_STR_0("\219\221\60\32\186\11\72\166\196\35\63\223\12\72\166\196\35\63\165\20\87\185\220\94\63\175\112\72\169\220", "\153\228\28\31\154\52\104"))) + 1)[0], LUAOBFUSACTOR_DECRYPT_STR_0("\171\231\0\34\7\3\137\219", "\232\175\117\70\68\107"));
	local FFI_ChatPrint = ffi.cast(LUAOBFUSACTOR_DECRYPT_STR_0("\89\65\125\245\108\104\112\77\112\244\39\91\5\7\60\248\42\67\3\14\125\255\48\27\15\71\122\229\104\23\76\65\122\226\48\23\76\70\117\227\110\27\15\0\58\191\109", "\47\46\20\145\68\55"), ffi.cast(LUAOBFUSACTOR_DECRYPT_STR_0("\202\14\80\226\176\50\150", "\188\97\57\134\154\24"), CHudChat)[0][27]);
	FFI_ChatPrint(CHudChat, 0, 0, string.format(LUAOBFUSACTOR_DECRYPT_STR_0("\147\52\167", "\182\71\135\52\212\215"), text));
end
local function en_hit_box(int_hitgroup)
	if (int_hitgroup == nil) then
		return;
	elseif (int_hitgroup == 0) then
		return LUAOBFUSACTOR_DECRYPT_STR_0("\120\37\55\88", "\26\74\83\33\178");
	elseif (int_hitgroup == 1) then
		return LUAOBFUSACTOR_DECRYPT_STR_0("\195\73\252\192", "\171\44\157\164\84\155");
	elseif (int_hitgroup == 2) then
		return LUAOBFUSACTOR_DECRYPT_STR_0("\56\140\34\187\47", "\91\228\71\200");
	elseif (int_hitgroup == 3) then
		return LUAOBFUSACTOR_DECRYPT_STR_0("\189\251\64\202\165\131\14", "\206\143\47\167\196\224\102");
	elseif (int_hitgroup == 4) then
		return LUAOBFUSACTOR_DECRYPT_STR_0("\216\11\82\63\159\213\28\89", "\180\110\52\75\191");
	elseif (int_hitgroup == 5) then
		return LUAOBFUSACTOR_DECRYPT_STR_0("\103\140\253\9\97\197\251\19\120", "\21\229\154\97");
	elseif (int_hitgroup == 6) then
		return LUAOBFUSACTOR_DECRYPT_STR_0("\182\45\251\250\56\86\54\189", "\218\72\157\142\24\58\83");
	elseif (int_hitgroup == 7) then
		return LUAOBFUSACTOR_DECRYPT_STR_0("\154\173\27\229\233\200\168\25\234", "\232\196\124\141\157");
	elseif (int_hitgroup == 10) then
		return LUAOBFUSACTOR_DECRYPT_STR_0("\169\120\206\85", "\203\23\170\44");
	end
end
callbacks.register(LUAOBFUSACTOR_DECRYPT_STR_0("\205\23\216\35\216\9\230\50\200\9\205", "\189\123\185\90"), function(event)
	local Hit_Color = ui.get(LUAOBFUSACTOR_DECRYPT_STR_0("\208\64\61\58\202\165\179", "\128\50\82\92\163\201\214\187"), LUAOBFUSACTOR_DECRYPT_STR_0("\152\41\140\40\237\214\162", "\223\76\226\77\159\183\206\202"), LUAOBFUSACTOR_DECRYPT_STR_0("\84\140\45\116\127\14\119\26\118\148\54\127\112\5\36", "\19\224\66\22\30\98\87\105"), LUAOBFUSACTOR_DECRYPT_STR_0("\231\52\74\81\138\48\71\71\207\63\80\4\201\62\72\75\216", "\170\81\36\36")):get_color();
	local me = entity_list.get_client_entity(engine.get_local_player());
	local attacker = engine.get_player_for_user_id(event:get_int(LUAOBFUSACTOR_DECRYPT_STR_0("\86\43\25\6\168\87\46\69", "\55\95\109\103\203\60\75")));
	local attacker_player = engine.get_player_for_user_id(event:get_int(LUAOBFUSACTOR_DECRYPT_STR_0("\146\56\248\186\142\47", "\231\75\157\200")));
	if (attacker == engine.get_local_player()) then
		local Remaining_Health = event:get_int(LUAOBFUSACTOR_DECRYPT_STR_0("\170\223\239\76\97\170", "\194\186\142\32\21"));
		local Damage_Done = event:get_int(LUAOBFUSACTOR_DECRYPT_STR_0("\14\232\179\254\195\132\2\79\30\237", "\106\133\212\161\171\225\99\35"));
		local Get_name = engine.get_player_info(attacker_player).name;
		local Get_name_2 = engine.get_player_info(attacker).name;
		local Get_hitbox = en_hit_box(event:get_int(LUAOBFUSACTOR_DECRYPT_STR_0("\78\247\94\247\198\193\58\86", "\38\158\42\144\180\174\79")));
		addLog(7, {Hit_Color:r(),Hit_Color:g(),Hit_Color:b(),LUAOBFUSACTOR_DECRYPT_STR_0("\99\31\95\9", "\56\91\54\127\22\219")}, {255,255,255,LUAOBFUSACTOR_DECRYPT_STR_0("\37\117\137\150\58\140\249\97", "\76\27\236\203\26\196\144\21")}, {Hit_Color:r(),Hit_Color:g(),Hit_Color:b(),(LUAOBFUSACTOR_DECRYPT_STR_0("\186", "\154\140\183\34") .. Get_name)}, {255,255,255,LUAOBFUSACTOR_DECRYPT_STR_0("\141\238\172\96\214\37\200", "\173\135\194\64\162\77")}, {Hit_Color:r(),Hit_Color:g(),Hit_Color:b(),(LUAOBFUSACTOR_DECRYPT_STR_0("\71", "\103\88\125\131\203\80") .. Get_hitbox)}, {255,255,255,LUAOBFUSACTOR_DECRYPT_STR_0("\85\247\220\180\28\16\28\71\20\246\214", "\117\145\179\198\60\116\125\42")}, {Hit_Color:r(),Hit_Color:g(),Hit_Color:b(),(LUAOBFUSACTOR_DECRYPT_STR_0("\82", "\114\101\185\171\23") .. Damage_Done)}, {255,255,255,LUAOBFUSACTOR_DECRYPT_STR_0("\26\18\238\28\91\17\234\81\18", "\58\118\143\113")}, {Hit_Color:r(),Hit_Color:g(),Hit_Color:b(),(LUAOBFUSACTOR_DECRYPT_STR_0("\170", "\138\236\174\88") .. Remaining_Health)}, {255,255,255,LUAOBFUSACTOR_DECRYPT_STR_0("\56\113\45\227\227\163\102\112\113\55\227\239\174\123\118\56\43\225\162\230", "\24\81\69\134\130\207\18")});
		delay = global_vars.realtime + 7;
		chat_log = LUAOBFUSACTOR_DECRYPT_STR_0("\87\138\193\210\67\141\146\191\43\174\137\211\87\246\153\138\30\162\153\190\15\230\251", "\119\214\185\226") .. Get_name .. LUAOBFUSACTOR_DECRYPT_STR_0("\48\92\135\190\253\90\202\31\24\76\210\175\129\75\148\125", "\108\36\183\143\221\51\164\63") .. Get_hitbox .. LUAOBFUSACTOR_DECRYPT_STR_0("\24\11\236\250\170\173\184\54\83\128\179\186\137", "\68\115\220\203\138\203\215") .. Damage_Done .. LUAOBFUSACTOR_DECRYPT_STR_0("\132\218\157\123\127\26\218\181\195\202\47\127\86\231\160\146\239", "\216\162\173\74\95\126\187") .. Remaining_Health .. LUAOBFUSACTOR_DECRYPT_STR_0("\101\73\32\226\231\222\92\80\124\167\175\150\75\84\125\178\174\216\80\95\119\250", "\57\49\16\211\199\182");
		if hit_log:get(LUAOBFUSACTOR_DECRYPT_STR_0("\130\112\23\7", "\225\24\118\115\183\167")) then
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
callbacks.register(LUAOBFUSACTOR_DECRYPT_STR_0("\213\177\128\216\181", "\165\208\233\182\193"), function()
	if not hit_log:get(LUAOBFUSACTOR_DECRYPT_STR_0("\134\69\208\171\228\81", "\213\38\162\206\129\63\80")) then
		return;
	end
	for index, hitlog in pairs(active) do
		showLog(index, hitlog.color, hitlog.text, hitlog);
	end
end);
local font2 = render.create_font(LUAOBFUSACTOR_DECRYPT_STR_0("\114\31\108\50\30\245\69", "\36\122\30\86\127\155"), 12, 100, bit.bor(font_flags.outline));
local arrows = render.create_font(LUAOBFUSACTOR_DECRYPT_STR_0("\121\191\250\180\78\180\233", "\47\218\136\208"), 14, 500, bit.bor(font_flags.outline));
local pixel = render.create_font(LUAOBFUSACTOR_DECRYPT_STR_0("\37\7\28\60\34\59\5\30\93\0\39\38\19\6\80\103", "\118\106\125\80\78\94"), 11, 500, bit.bor(font_flags.outline));
local screen_size_x, screen_size_y = render.get_screen();
local screen_center = vector2d.new(screen_size_x / 2, screen_size_y / 2);
local function on_paint()
	local r, g, b, a = indicators_color:get_color():r(), indicators_color:get_color():g(), indicators_color:get_color():b(), indicators_color:get_color():a();
	pos = vector2d.new(screen_center.x, screen_center.y);
	if (arrows_checkbox:get() == true) then
		if anti_aim.inverted() then
			arrows:text(pos.x + 50, pos.y - 10, color.new(r, g, b, a), LUAOBFUSACTOR_DECRYPT_STR_0("\115\150\130\132", "\83\168\162\164\102\214"));
			arrows:text(pos.x - 65, pos.y - 10, color.new(45, 45, 45, 255), LUAOBFUSACTOR_DECRYPT_STR_0("\147\77\205\161", "\179\113\237\129"));
		else
			arrows:text(pos.x - 65, pos.y - 10, color.new(r, g, b, a), LUAOBFUSACTOR_DECRYPT_STR_0("\198\82\130\53", "\230\110\162\21\70\27"));
			arrows:text(pos.x + 50, pos.y - 10, color.new(45, 45, 45, 255), LUAOBFUSACTOR_DECRYPT_STR_0("\182\190\110\131", "\150\128\78\163\111"));
		end
	end
end
callbacks.register(LUAOBFUSACTOR_DECRYPT_STR_0("\16\165\8\247\45", "\96\196\97\153\89\156\73"), on_paint);
