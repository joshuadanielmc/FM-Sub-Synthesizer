<Cabbage> bounds(0, 0, 0, 0)
form caption("JSynth") size(671, 400), guiMode("queue"), pluginId("def1") colour(255,0,55)
keyboard bounds(6, 288, 660, 99)

groupbox bounds(4, 4, 71, 269) channel("groupbox10028") text("osc 1")
groupbox bounds(80, 4, 140, 271) channel("groupbox10029") text ("osc 2")
groupbox bounds(224, 4, 127, 271) channel("groupbox10030") text("osc mixer")
groupbox bounds(358, 4, 66, 269) channel("groupbox10031") text ("Noise")
groupbox bounds(428, 4, 80, 268) channel("groupbox10032") text ("Filter")
                                                    groupbox bounds(512, 4, 76, 268) channel("groupbox10033") text("FMod")
groupbox bounds(594, 4, 72, 266) channel("groupbox10034") text("Env")








rslider bounds(16, 34, 45, 46) channel("gain1A") range(0, 1, 0.06, 1, 0.001) text("Sine")
//rslider bounds(74, 26, 46, 44) channel("freq1") range(35, 20000, 0.003, 1, 0.001) text("Frequency")

rslider bounds(14, 84, 52, 46) channel("gain2A") range(0, 1, 0, 1, 0.001) text("Saw")
//rslider bounds(212, 26, 46, 44) channel("freq2") range(35, 20000, 0.003, 1, 0.001) text("Frequency")

rslider bounds(14, 138, 52, 47) channel("gain3A") range(0, 1, 0, 1, 0.001) text("Sqr")
//rslider bounds(346, 26, 46, 44) channel("freq3") range(35, 20000, 0.003, 1, 0.001) text("Frequency")

rslider bounds(14, 194, 52, 45) channel("gain4A") range(0, 1, 0, 1, 0.001) text("Tri")
//rslider bounds(472, 28, 46, 44) channel("freq4") range(35, 20000, 0.003, 1, 0.001) text("Frequency")

vslider bounds(232, 38, 50, 208) channel("masterA") range(0, 1, 0.187, 1, 0.001) text("osc 1")

-----------------------------------------

rslider bounds(96, 30, 52, 47) channel("gain1B") range(0, 1, 0.08, 1, 0.001) text("Sine")
//rslider bounds(74, 26, 46, 44) channel("freq1") range(35, 20000, 0.003, 1, 0.001) text("Frequency")

rslider bounds(96, 84, 52, 46) channel("gain2B") range(0, 1, 0, 1, 0.001) text("Saw")
//rslider bounds(212, 26, 46, 44) channel("freq2") range(35, 20000, 0.003, 1, 0.001) text("Frequency")

rslider bounds(96, 138, 52, 45) channel("gain3B") range(0, 1, 0, 1, 0.001) text("Sqr")
//rslider bounds(346, 26, 46, 44) channel("freq3") range(35, 20000, 0.003, 1, 0.001) text("Frequency")

rslider bounds(96, 194, 52, 48) channel("gain4B") range(0, 1, 0, 1, 0.001) text("Tri")
//rslider bounds(472, 28, 46, 44) channel("freq4") range(35, 20000, 0.003, 1, 0.001) text("Frequency")


vslider bounds(288, 40, 50, 208) channel("masterB") range(0, 1, 0.374, 1, 0.001) text ("osc 2")


checkbox bounds(30, 246, 21, 19) channel("muteA") colour:1(111, 3, 3, 255), text("mute") 
checkbox bounds(140, 246, 23, 18) channel("muteB") colour:1(171, 0, 0, 255), text("mute")


rslider bounds(444, 60, 45, 48) channel("cutoff") range(1000, 20000, 15115.8, 1, 0.001), text("cutoff") 
rslider bounds(444, 120, 47, 47)  range(0, 1, 0, 1, 0.001), text("Reso"), channel("res")

rslider bounds(366, 76, 50, 50) channel("amp") range(0, 0.2, 0, 1, 0.001), text("amp")
rslider bounds(366, 142, 48, 46) channel("lpf") range(0, 0.9, 0, 1, 0.001), text("LPF")

button bounds(440, 228, 60, 31) channel("filterenable") text("bypassed", "Enabled", "") colour:0(103, 9, 9, 255) colour:1(66, 113, 0, 255)
rslider bounds(154, 30, 50, 43) channel("sineratio") range(0, 1, 0.417, 1, 0.001)
rslider bounds(156, 84, 50, 43) channel("sawratio") range(0, 1, 0.417, 1, 0.001)
rslider bounds(156, 140, 50, 43) channel("sqratio") range(0, 1, 0.417, 1, 0.001)
rslider bounds(154, 194, 50, 46) channel("triratio") range(0, 1, 0.417, 1, 0.001) text("Ratio")




rslider bounds(522, 60, 56, 49) channel("modindex") range(0, 10, 0, 1, 0.001) text("modindex")
rslider bounds(526, 120, 52, 52) channel("modfactor") range(0, 20, 1, 1, 0.001) text("modfactor")


rslider bounds(604, 38, 49, 47) range(0.1, 1, 0.855, 1, 0.001), text("Att."), channel("aatt")
rslider bounds(606, 90, 48, 48) range(0.1, 1, 0.4, 1, 0.001), text("Dec."), channel("adec")
rslider bounds(608, 142, 48, 48) range(0, 1, 0.5, 1, 0.001), text("Sus."), channel("asus")
rslider bounds(610, 196, 47, 47) range(0.1, 5, 0.1, 1, 0.001), text("Rel."), channel("arel")




</Cabbage>
</Cabbage>
<CsoundSynthesizer>
<CsOptions>
-n -d --displays -+rtmidi=NULL -M0 -m0d --midi-key-cps=4 --midi-velocity-amp=5
</CsOptions>
<CsInstruments>
; Initialize the global variables. 
ksmps = 32
nchnls = 2
0dbfs = 1

gife ftgen 0,0,16384,20,1,1


;instrument will be triggered by keyboard widget
instr 1
kEnv madsr .1, .2, .6, .2



kpw init 0.5 


giFt ftgen  1, 0, 8, 2, 0

giSine ftgen 0, 0, 2^10, 10, 1
giSaw ftgen 0, 0, 2^10, 10, 1,-1/2,1/3,-1/4,1/5,-1/6,1/7,-1/8,1/9
giSquare ftgen 0, 0, 2^10, 10, 1, 0, 1/3, 0, 1/5, 0, 1/7, 0, 1/9
giTri ftgen 0, 0, 2^10, 10, 1, 0, -1/9, 0, 1/25, 0, -1/49, 0, 1/81
giImp ftgen 0, 0, 2^10, 10, 1, 1, 1, 1, 1, 1, 1, 1, 1




;Sine waves
asin1 poscil chnget:k("gain1A"), p4, giSine//chnget:k("freq1")

;sawtooth wave
asaw1 poscil (chnget:k("gain2A")), p4, giSaw //chnget:k("freq2")

;square wave
asq1 poscil (chnget:k("gain3A")), p4/*, 2, kpw*/, giSquare //chnget:k("freq3"), 10

;triangle wave
atri1 poscil (chnget:k("gain4A")), p4, giTri //12chnget:k("freq4"), 12


kmasterA chnget ("masterA")
if chnget:k("muteA") == 0 then

aout1 = (asin1 + asaw1 + asq1 + atri1)*kmasterA 

else

aout1 = 0

endif



;Sine wave2
asin2 poscil chnget:k("gain1B"), p4*chnget:k("sineratio")//chnget:k("freq1")


;sawtooth wave2
asaw2 poscil (chnget:k("gain2B")), p4*chnget:k("sawratio"), giSaw //chnget:k("freq2")

;square wave
asq2 poscil (chnget:k("gain3B")), p4*chnget:k("sqratio")/*, 2, kpw*/, giSquare //chnget:k("freq3"), 10

;triangle wave
atri2 poscil (chnget:k("gain4B")), p4*chnget:k("triratio"), giTri //12chnget:k("freq4"), 12

kmasterB chnget ("masterB")

if chnget:k("muteB") == 0 then

aout2 = (asin2 + asaw2 + asq2 + atri2)*kmasterB

else

aout2 = 0

endif

anoise noise chnget:k("amp"), chnget:k("lpf")

kmodatt chnget "aatt"
kmoddec chnget "adec"
kmodsus chnget "asus"
kmodrel chnget "arel"
amodenv madsr i(kmodatt), i(kmoddec), i(kmodsus), i(kmodrel)

aout3 = (aout1 + aout2 + anoise)*amodenv/2



kmodfactor chnget "modfactor"
kmodindex chnget "modindex"


kmodfreq = kmodfactor*aout3
; Index = Am * fc/fm
kmodamp = kmodindex*kmodfactor*aout3
; Modulator 2
amod poscil kmodamp, kmodfreq


    
if chnget:k("filterenable") ==1 then
alpf moogladder aout3, chnget:k("cutoff"),chnget:k("res")



outs alpf*kEnv+amod, alpf*kEnv+amod

else

outs (aout3*kEnv)+amod, aout3*(kEnv+amod)



endif



endin






</CsInstruments>
<CsScore>
;causes Csound to run for about 7000 years...
f0 z
</CsScore>
</CsoundSynthesizer>
