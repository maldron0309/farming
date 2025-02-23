pico-8 cartridge // http://www.pico-8.com
version 42
__lua__
function _init()
	iplr()
	icrops()
	
end

function _update()
	uplr()
	ucrops()
	
end

function _draw()
	cls(11)
	map()
	dplr()
	dcrops()
	
end


-->8
--player--

function iplr()
	plr={
		x=63,
		y=63
	}
end

function uplr()

--movement--
	if btn(➡️) then 
		plr.x+=1
		elseif btn(⬅️) then
			plr.x-=1
		elseif btn(⬆️) then
			plr.y-=1
		elseif btn(⬇️) then
			plr.y+=1
	end
	--player seed--
	local ptx=(plr.x+4)/8
	local pty=(plr.y+7)/8
	
	if btnp(❎) then
		mset(ptx,pty,2)
	end
	
end

function dplr()
	spr(12,plr.x,plr.y)
end
-->8
--nature's way--

function icrops()
	croptimer=300
end

function ucrops()
	if criptimer>0 then
		croptimer-=1
	else
		growcrops()
		croptimer=300
	end	
end

function dcrops()
	print(croptimer)
end

function growcrops()
	for x=0,15 do
		for y=0,15 do
			mset(x,y,2)
		end
	end
end
__gfx__
000000000000003004444440044444400444444000000000000000000000000000000000000000000000000000000000000c7000000000000000000000000000
00000000000003004424444444244444444b4b440000000000000000000000000000000000000000000000000000000000cccc00000000000000000000000000
00700700030003004444442444444a244444b44400000000000000000000000000000000000000000000000000000000007cc700000000000000000000000000
00077000003000004444244444a4244444499944000000000000000000000000000000000000000000000000000000000dd77660000000000000000000000000
00077000003000004444444444444444442999240000000000000000000000000000000000000000000000000000000000dd6600000000000000000000000000
0070070000000000442442444424a244444222440000000000000000000000000000000000000000000000000000000000dd6600000000000000000000000000
000000000000000044444444444444444444444400000000000000000000000000000000000000000000000000000000000aa000000000000000000000000000
00000000000000000444444004444440044444400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000101000000111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000001b1b100001656510000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000001bb10000166aaa1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000001bb99100016aaba1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000118891001aa9aa1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000001189101797761000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000011001777661000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000100000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000001000007000100000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000040404000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000202020000010000040404000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000010202030000000000040202000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000203020000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000100000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
