
--[[Start2syl]]
!retime("start2syl",50*(syl.i-$syln)-100,0)!{\alpha&H80&\an5\pos($center,$middle)\1c!line.styleref.color2!\fad(300,0)\fscx0\fscy0\t(!set_temp("time_2",math.random(500))!,!temp.time_2+300!,\fscx140\fscy140)\t(!temp.time_2+300!,!temp.time_2+600!,\fscx100\fscy100)}

--[[syl]]
!retime("syl",0,$dur)!{\an5\pos(!$center!,!$middle!)\bord1\blur1\t(0,!$dur/2!,\fscx130\fscy130\1c&HFFFFFF&)\t(!$dur/2!,$dur,\fscx100\fscy100\1c!line.styleref.color1!)}

--[[Syl2end]]
!retime("syl2end",0,60*(syl.i-$syln))!{\an5\pos($center,$middle)\fad(0,300)}


--[[Reff]]


--[[shape]]
shape = "m 0 0 m -43 -31 b -43 -31 -43 -31 -43 -31 b -43 -31 -43 -31 -43 -31 b -40 -24 -36 -17 -33 -10 b -30 -2 -26 6 -22 14 b -22 18 -21 23 -20 27 b -19 32 -19 37 -19 42 b -19 42 -18 43 -18 43 b -18 38 -18 34 -17 29 b -17 26 -17 23 -16 20 b -16 19 -15 17 -14 14 b -13 11 -10 6 -8 1 b -6 -3 -3 -7 -1 -11 b 1 -15 3 -19 5 -23 b 3 -24 1 -23 -1 -21 b -2 -20 -5 -17 -8 -13 b -10 -10 -13 -4 -14 0 b -15 4 -15 7 -16 9 b -16 13 -17 16 -17 20 b -18 12 -18 5 -19 -3 b -19 -9 -20 -14 -22 -20 b -24 -24 -25 -27 -27 -30 b -28 -32 -30 -35 -32 -37 b -34 -38 -35 -39 -37 -40 b -36 -37 -34 -34 -33 -31 b -32 -28 -30 -24 -29 -21 b -27 -17 -26 -14 -24 -10 b -23 -5 -21 0 -20 5 b -20 6 -21 8 -21 9 b -21 7 -22 4 -22 2 b -24 -3 -25 -7 -27 -12 b -28 -15 -30 -18 -31 -21 b -33 -23 -36 -26 -38 -28 b -40 -29 -41 -30 -43 -31 ";

--[[Code syl all]]
temp = {}; function set_temp(ref,val) temp[ref] = val; return val; end; function cyclic_tag(time,fx1,fx2) local A="" local B = 0 local C = 0 local D = 0 local count = math.ceil(line.duration/time) D = {fx1,fx2} for i = 1, count do C = i if fx1 and fx2 then if  C%2 ==0 then B = D[1] else B = D[2] end end A = A .."\\t(" ..(i-1)*time.. "," ..i*time.. ",\\" ..B..")".."" end return A end

--[[Start2syl]]
!retime("start2syl",50*(syl.i-$syln)-100,0)!{\alpha&H80&\an5\pos($center,$middle)\1c!line.styleref.color2!\fad(300,0)\fscx0\fscy0\t(!set_temp("time_2",math.random(500))!,!temp.time_2+300!,\fscx140\fscy140)\t(!temp.time_2+300!,!temp.time_2+600!,\fscx100\fscy100)}

--[[syl]]
!retime("syl",0,$dur)!{\an5\pos(!$center!,!$middle!)\bord1\blur1\t(0,!$dur/2!,\fscx130\fscy130\1c&HFFFFFF&)\t(!$dur/2!,$dur,\fscx100\fscy100\1c!line.styleref.color1!)}

--[[syl shape]]
!retime("syl",0,1500)!{\an5\bord0.333333\shad0\c&HFFFFFF&\3c&HFFFFFF&\blur2\fscx10\fscy20\move($scenter,!$smiddle+5!,!$scenter+math.random(-70,70)!,!$smiddle+math.random(-100,100)!,0,1500)\t(0,1500,\fry!math.random(-1000,1000)!\t(1000,2000,\fscx1\fscy1\fad(0,500))\p1} !shape!

--[[Syl2end]]
!retime("syl2end",0,60*(syl.i-$syln))!{\an5\pos($center,$middle)\fad(0,300)}