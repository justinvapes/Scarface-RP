
--[[
AztupBrew(Fork of IronBrew2): obfuscation; Version 2.7.2
]]
return(function(h,a,m)local k=string.char;local e=string.sub;local o=table.concat;local n=math.ldexp;local r=getfenv or function()return _ENV end;local l=select;local g=unpack or table.unpack;local i=tonumber;local function p(h)local b,c,d="","",{}local f=256;local g={}for a=0,f-1 do g[a]=k(a)end;local a=1;local function j()local b=i(e(h,a,a),36)a=a+1;local c=i(e(h,a,a+b-1),36)a=a+b;return c end;b=k(j())d[1]=b;while a<#h do local a=j()if g[a]then c=g[a]else c=b..e(b,1,1)end;g[f]=b..e(c,1,1)d[#d+1],b,f=c,c,f+1 end;return table.concat(d)end;local j=p('22021S27521S21V276151J1O21S21Z2761321521G21521M21121A21S22427F21E2111X21G2111K21427Q1X21021S2282761I21121321521F27T21E1E21121G1521I27L21G21S21X27628621A21121H21S2272761121021028D28F181X21A21021821121E21S22327621221821H2132141X21228F21C21S22527627Q21521A23E27T29021C21B21E21G22V27621S22A29T29W21S21T29Y27629V2A029Z2752A229Z21U27622O27529Z29Z27821U22E21S2A829W21W2A02A829Z2A621S2AK2A52752A828I29W2A72A02AO21Y2A12AS28H27621Y2332772A32A021S22G29X2752222A02782AN2AB2AP2B02AH27D29X2AW2BG2A02AZ2AR2BK27E2AS2AG2AE29T2382BE2AX22U2AL2A92AC2BZ2B42BK2BF2B82BA2BB2AK2BN29U2BH2AQ2CE2BK2742AV2BK2BO29Z2BQ2CH2A82CJ2AH2BV2BI2762BY2AD2C02C227522O2C42CX2AF2BK2AU2752AZ2CD2CK2B32762BT27527827527A1O27827O2751K21E21521321329128U21A28G22B27621121F21K23E2DQ21G1J29A27Q2101F1Y2162111Z28G2DD27G27I27K27M2CG1N1X27H2A429X2262A12C12BH27522U2392762CC2BK21W2D62EW2EY27629G2AN2EQ2B62A522P2A02CG2D42AI29T22L2762AM2CH2752D62AA29W2AZ2AO2DD29W2FG2CG2762EM2FS29T2EM2FT2DF21S2DH2FC22A2FY2FT2FV2FU2BB2FC21S22Y2BB2DA2B82D729T2942751G2181X21L2911G2112101927Z28P2751728B152DT27H21L1321B29P21021F28O2761J2GV2GX21G2GZ2H121E2H321T25U25B25B23J2581B25S23K2FX21I26D2HN25A2HH22N2461R239102812A522Q2B72CK2AW2A22A82G82DE2GD2FF2BK2A82A22782FY2EV2GD2A228I2CG2A22AZ2D62A227E2CO2762CR29W2212GB2BD2BB2942G42B62IY2BM2G62752DK2752ED27H27J27L2CU21S2EJ2EL29X24W23J2932762GI2GK2GM2GO2GQ2B92762GU21G1428621G28X1Z2111228B21J21127L2H02H22H42GS21S2JR2GW27I2HA2K42HD2H42CO2H021A2122DO21S2IU2DG29J29I21F21127C2KM2FZ2KO2112862111P2KL2792KV2KX1Q2G41021B102H52752H728C2H92HB2K522W2EP2J322O22K2FP2CH2CX2G72I929X2IQ2742C42F12752LS2AP2D62BH22A2F52FR2K72I42BH2IN2B12IQ2I82LO2I62CH2782DD2FK2IE21S2742A22AK2ME2752AK2AK2IU2II2BL2D02FI2B22IW2GE2IZ2CN2BK2EQ29Z22H2A02942LU21S2N229Z2N52LZ2C129Z2J52802BK29T2ID2MR21S2MF2B62MI2MM2NI2FK2MN2L02MQ2ML2B228I2MV21S2M82DC2GB2IS29T2IU2MX2L02N82J22GC2AJ29T2D62JV1Y2902NX27621H21A21C1X1Z2172L921S2LB2KA2GY2KD2H32JI2GH2GJ2GL21E2GN2GP2102HZ29U22Z2I22NJ2BH2AW2IA2BB2AW2782MJ2F62CH2IJ29X28I2P82MW29X27E2I72MH2PE2762KT29W2NW2GF2GB27O2IZ2AK2PW2O72I92G82A22OO28B142K221C1F2JX28X1J1Z1X29021E2IZ2NN2A52F52EM22A2F82PJ2OF2B12O42BB');local a=(bit or bit32);local d=a and a.bxor or function(a,c)local b,d,e=1,0,10 while a>0 and c>0 do local e,f=a%2,c%2 if e~=f then d=d+b end a,c,b=(a-e)/2,(c-f)/2,b*2 end if a<c then a=c end while a>0 do local c=a%2 if c>0 then d=d+b end a,b=(a-c)/2,b*2 end return d end local function c(c,a,b)if b then local a=(c/2^(a-1))%2^((b-1)-(a-1)+1);return a-a%1;else local a=2^(a-1);return(c%(a+a)>=a)and 1 or 0;end;end;local a=1;local function b()local e,b,c,f=h(j,a,a+3);e=d(e,64)b=d(b,64)c=d(c,64)f=d(f,64)a=a+4;return(f*16777216)+(c*65536)+(b*256)+e;end;local function i()local b=d(h(j,a,a),64);a=a+1;return b;end;local function f()local c,b=h(j,a,a+2);c=d(c,64)b=d(b,64)a=a+2;return(b*256)+c;end;local function q()local a=b();local b=b();local e=1;local d=(c(b,1,20)*(2^32))+a;local a=c(b,21,31);local b=((-1)^c(b,32));if(a==0)then if(d==0)then return b*0;else a=1;e=0;end;elseif(a==2047)then return(d==0)and(b*(1/0))or(b*(0/0));end;return n(b,a-1023)*(e+(d/(2^52)));end;local n=b;local function p(b)local c;if(not b)then b=n();if(b==0)then return'';end;end;c=e(j,a,a+b-1);a=a+b;local b={}for a=1,#c do b[a]=k(d(h(e(c,a,a)),64))end return o(b);end;local a=b;local function n(...)return{...},l('#',...)end local function k()local h={};local j={};local a={};local l={[#{{593;522;645;436};"1 + 1 = 111";}]=j,[#{{239;464;374;483};"1 + 1 = 111";"1 + 1 = 111";}]=nil,[#{"1 + 1 = 111";{210;824;520;316};{810;816;125;667};"1 + 1 = 111";}]=a,[#{"1 + 1 = 111";}]=h,};local a=b()local d={}for c=1,a do local b=i();local a;if(b==2)then a=(i()~=0);elseif(b==1)then a=q();elseif(b==0)then a=p();end;d[c]=a;end;for j=1,b()do local a=i();if(c(a,1,1)==0)then local e=c(a,2,3);local g=c(a,4,6);local a={f(),f(),nil,nil};if(e==0)then a[3]=f();a[4]=f();elseif(e==1)then a[3]=b();elseif(e==2)then a[3]=b()-(2^16)elseif(e==3)then a[3]=b()-(2^16)a[4]=f();end;if(c(g,1,1)==1)then a[2]=d[a[2]]end if(c(g,2,2)==1)then a[3]=d[a[3]]end if(c(g,3,3)==1)then a[4]=d[a[4]]end h[j]=a;end end;l[3]=i();for a=1,b()do j[a-1]=k();end;return l;end;local function i(a,h,f)a=(a==true and k())or a;return(function(...)local d=a[1];local e=a[3];local k=a[2];local a=n local b=1;local a=-1;local o={};local n={...};local l=l('#',...)-1;local j={};local c={};for a=0,l do if(a>=e)then o[a-e]=n[a+1];else c[a]=n[a+#{{936;425;204;765};}];end;end;local a=l-e+1 local a;local e;while true do a=d[b];e=a[1];if e<=26 then if e<=12 then if e<=5 then if e<=2 then if e<=0 then do return end;elseif e==1 then c[a[2]]=c[a[3]][a[4]];else local a=a[2]c[a]=c[a]()end;elseif e<=3 then f[a[3]]=c[a[2]];elseif e>4 then b=a[3];else local e;e=a[2]c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];end;elseif e<=8 then if e<=6 then local a=a[2]c[a](c[a+1])elseif e==7 then local b=a[2]local e={c[b](c[b+1])};local d=0;for a=b,a[4]do d=d+1;c[a]=e[d];end else c[a[2]]=(a[3]~=0);end;elseif e<=10 then if e>9 then local e;e=a[2]c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];else for a=a[2],a[3]do c[a]=nil;end;end;elseif e>11 then local d=a[2]local e={c[d](c[d+1])};local b=0;for a=d,a[4]do b=b+1;c[a]=e[b];end else local b=a[2]c[b]=c[b](g(c,b+1,a[3]))end;elseif e<=19 then if e<=15 then if e<=13 then c[a[2]]=f[a[3]];elseif e==14 then local a=a[2]c[a]=c[a](c[a+1])else local e;e=a[2]c[e]=c[e]()b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]c[e]=c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,a[3]))b=b+1;a=d[b];if(c[a[2]]<a[4])then b=b+1;else b=a[3];end;end;elseif e<=17 then if e>16 then if not c[a[2]]then b=b+1;else b=a[3];end;else local e;c[a[2]]=c[a[3]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];e=a[2]c[e](g(c,e+1,a[3]))b=b+1;a=d[b];b=a[3];end;elseif e==18 then c[a[2]]=(a[3]~=0);b=b+1;a=d[b];for a=a[2],a[3]do c[a]=nil;end;b=b+1;a=d[b];f[a[3]]=c[a[2]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];else for a=a[2],a[3]do c[a]=nil;end;end;elseif e<=22 then if e<=20 then h[a[3]]=c[a[2]];elseif e==21 then if(c[a[2]]~=a[4])then b=b+1;else b=a[3];end;else c[a[2]]=i(k[a[3]],nil,f);end;elseif e<=24 then if e>23 then c[a[2]]=c[a[3]];else local b=a[2]c[b](g(c,b+1,a[3]))end;elseif e==25 then c[a[2]]=(a[3]~=0);else do return end;end;elseif e<=39 then if e<=32 then if e<=29 then if e<=27 then local b=a[2]c[b]=c[b](g(c,b+1,a[3]))elseif e>28 then local e;e=a[2]c[e](g(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](c[e+1])b=b+1;a=d[b];b=a[3];else local e;c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=h[a[3]];b=b+1;a=d[b];if not c[a[2]]then b=b+1;else b=a[3];end;end;elseif e<=30 then local k=k[a[3]];local g;local e={};g=m({},{__index=function(b,a)local a=e[a];return a[1][a[2]];end,__newindex=function(c,a,b)local a=e[a]a[1][a[2]]=b;end;});for f=1,a[4]do b=b+1;local a=d[b];if a[1]==24 then e[f-1]={c,a[3]};else e[f-1]={h,a[3]};end;j[#j+1]=e;end;c[a[2]]=i(k,g,f);elseif e==31 then c[a[2]]=h[a[3]];else c[a[2]]=c[a[3]][a[4]];end;elseif e<=35 then if e<=33 then c[a[2]]=a[3];elseif e==34 then local e;c[a[2]]=f[a[3]];b=b+1;a=d[b];e=a[2]c[e]=c[e]()b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]c[e]=c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];e=a[2]c[e](g(c,e+1,a[3]))b=b+1;a=d[b];do return end;else f[a[3]]=c[a[2]];end;elseif e<=37 then if e>36 then local a=a[2]c[a]=c[a](c[a+1])else local a=a[2]c[a](c[a+1])end;elseif e>38 then c[a[2]]=i(k[a[3]],nil,f);else c[a[2]]=f[a[3]];end;elseif e<=46 then if e<=42 then if e<=40 then c[a[2]]=c[a[3]];elseif e>41 then h[a[3]]=c[a[2]];else local e;e=a[2]c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e](c[e+1])b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=a[3];end;elseif e<=44 then if e==43 then local h;local i;local e;c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]i={c[e](c[e+1])};h=0;for a=e,a[4]do h=h+1;c[a]=i[h];end b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];c[a[2]]=f[a[3]];b=b+1;a=d[b];e=a[2]c[e]=c[e]()b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];c[a[2]]=(a[3]~=0);b=b+1;a=d[b];e=a[2]c[e](g(c,e+1,a[3]))b=b+1;a=d[b];do return end;else local a=a[2]c[a]=c[a]()end;elseif e==45 then if(c[a[2]]<a[4])then b=b+1;else b=a[3];end;else if(c[a[2]]<a[4])then b=b+1;else b=a[3];end;end;elseif e<=49 then if e<=47 then local k=k[a[3]];local g;local e={};g=m({},{__index=function(b,a)local a=e[a];return a[1][a[2]];end,__newindex=function(c,a,b)local a=e[a]a[1][a[2]]=b;end;});for f=1,a[4]do b=b+1;local a=d[b];if a[1]==24 then e[f-1]={c,a[3]};else e[f-1]={h,a[3]};end;j[#j+1]=e;end;c[a[2]]=i(k,g,f);elseif e==48 then c[a[2]]=h[a[3]];else if not c[a[2]]then b=b+1;else b=a[3];end;end;elseif e<=51 then if e>50 then c[a[2]]=a[3];else b=a[3];end;elseif e>52 then if(c[a[2]]~=a[4])then b=b+1;else b=a[3];end;else local b=a[2]c[b](g(c,b+1,a[3]))end;b=b+1;end;end);end;return i(true,{},r())();end)(string.byte,table.insert,setmetatable);
