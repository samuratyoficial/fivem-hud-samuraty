


Citizen.CreateThread(function()
	RegisterFontFile('wmk')
    fontId = RegisterFontId('Freedom Font')
end)


function RGBRainbow(frequency)
    local result = {}
    local curtime = GetGameTimer() / 1000

    result.r = math.floor(math.sin(curtime * frequency + 0) * 127 + 128)
    result.g = math.floor(math.sin(curtime * frequency + 2) * 127 + 128)
    result.b = math.floor(math.sin(curtime * frequency + 4) * 127 + 128)

    return result
end


function drawScreenText(x,y ,width,height,scale, text, r,g,b,a, outline, font, center)
    SetTextFont(fontId)
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
	SetTextCentre(center)
    if(outline)then
	    SetTextOutline()
	end
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x - width/2, y - height/2 + 0.005)
end


function CalculateDayOfWeekToDisplay()
	if dayOfWeek == 1 then
		dayOfWeek = "Duminica"
	elseif dayOfWeek == 2 then
		dayOfWeek = "Luni"
	elseif dayOfWeek == 3 then
		dayOfWeek = "Marti"
	elseif dayOfWeek == 4 then
		dayOfWeek = "Miercuri"
	elseif dayOfWeek == 5 then
		dayOfWeek = "Joi"
	elseif dayOfWeek == 6 then
		dayOfWeek = "Vineri"
	elseif dayOfWeek == 7 then
		dayOfWeek = "Sambata"
	end
end

function CalculateDateToDisplay()
	if month == 1 then
		month = "Ianuarie"
	elseif month == 2 then
		month = "Februarie"
	elseif month == 3 then
		month = "Martie"
	elseif month == 4 then
		month = "Aprilie"
	elseif month == 5 then
		month = "Mai"
	elseif month == 6 then
		month = "Iunie"
	elseif month == 7 then
		month = "Iulie"
	elseif month == 8 then
		month = "August"
	elseif month == 9 then
		month = "Septembrie"
	elseif month == 10 then
		month = "Octombrie"
	elseif month == 11 then
		month = "Noiembrie"
	elseif month == 12 then
		month = "Decembrie"
	end
end

function CalculateTimeToDisplay()
	if hour < 10 then
		hour = tostring("0" .. hour)
	end
	if minute < 10 then
		minute = tostring("0" .. minute)
	end
end

function RGBRainbow(frequency)
    local result = {}
    local curtime = GetGameTimer() / 1000

    result.r = math.floor(math.sin(curtime * frequency + 0) * 127 + 128)
    result.g = math.floor(math.sin(curtime * frequency + 2) * 127 + 128)
    result.b = math.floor(math.sin(curtime * frequency + 4) * 127 + 128)

    return result
end

waterMarkState = 0
WatermarkText = "~b~ SAMURATY ~y~ROMANIA"
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1500)
		if(waterMarkState == 0)then
			--atermarkText = "~b~ SAMURATY ~y~ROMANIA ~r~Rolplay"
			waterMarkState = 1
		else
		--	WatermarkText = "~b~SAMURATY ~y~ROMANIA ~r~Rolplay"
			waterMarkState = 0
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Wait(1)		
		rgb = RGBRainbow(2)
		rgb2 = RGBRainbow(1)
		year, month, dayOfWeek, hour, minute = GetLocalTime()
		timeAndDateString = "~w~|"
		players = "~r~Online: ~g~"..#GetActivePlayers()
		
		CalculateTimeToDisplay()
		timeAndDateString = timeAndDateString .. " ~y~" .. hour+3 .. ":" .. minute .. " ~w~|"
		CalculateDateToDisplay()
		timeAndDateString = timeAndDateString .. " ~b~" .. dayOfWeek .. " " .. month .. " " .. year .. " ~w~|"
		timeAndDateString = "~g~".. players .. " " .. timeAndDateString
		
		drawScreenText(0.5, 0.04, 0.0, 0.0, 0.32, timeAndDateString, 255, 255, 255, 255, 1, 7, 1)
		drawScreenText(0.5, -0.005, 0.0, 0.0, 0.80, WatermarkText, 255, 255, 255, 255, 1, 7, 1, 1)
	end
end)

local showHud = true
local updown = true
local alphainfo = 255

Citizen.CreateThread(function()
    while true do
    	year, month, dayOfWeek, hour, minute = GetLocalTime()
		timeAndDateString = "~w~/discord.gg/samuratyvrpesxsupport"
		players = "~w~Online: ~w~"..#GetActivePlayers()
		
		CalculateTimeToDisplay()
		--timeAndDateString = timeAndDateString .. " ~w~" .. hour+3 .. ":" .. minute .. " ~w~|"
		CalculateDateToDisplay()
--		timeAndDateString = timeAndDateString .. " ~w~" .. dayOfWeek .. " " .. month .. " " .. year .. " ~w~|"
		timeAndDateString = "~w~".. players .. " " .. timeAndDateString
        if showHud then
            if updown then
                alphainfo = alphainfo-3
                if alphainfo <= 60 then
                    updown = false
                end
            else
                alphainfo = alphainfo + 3
                if alphainfo >= 255 then
                    updown = true
                end
            end

			drawScreenText(0.5, 0.1, 0.0, 0.2, 0.30, timeAndDateString, 255, 255, 255, 255, 1, 7, 1)
			drawScreenText(0.5, 0.020, 0.0, 0.0, 0.50, WatermarkText, 255, 255, 255, alphainfo, 1, 7, 1, 1)
        else
            Citizen.Wait(10000)
        end
        Citizen.Wait(0)
    end
end)

Citizen.CreateThread(function()
	
	while true do
		
		Citizen.Wait(0)

		HideHudComponentThisFrame(9)

		HideHudComponentThisFrame(7)

	end

end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0) -- prevent crashing

		-- These natives have to be called every frame.
		SetVehicleDensityMultiplierThisFrame(0.0) -- set traffic density to 0 
		SetPedDensityMultiplierThisFrame(0.0) -- set npc/ai peds density to 0
		SetRandomVehicleDensityMultiplierThisFrame(0.0) -- set random vehicles (car scenarios / cars driving off from a parking spot etc.) to 0
		SetParkedVehicleDensityMultiplierThisFrame(0.0) -- set random parked vehicles (parked car scenarios) to 0
		SetScenarioPedDensityMultiplierThisFrame(0.0, 0.0) -- set random npc/ai peds or scenario peds to 0
		SetGarbageTrucks(false) -- Stop garbage trucks from randomly spawning
		SetRandomBoats(false) -- Stop random boats from spawning in the water.
		SetCreateRandomCops(false) -- disable random cops walking/driving around.
		SetCreateRandomCopsNotOnScenarios(false) -- stop random cops (not in a scenario) from spawning.
		SetCreateRandomCopsOnScenarios(false) -- stop random cops (in a scenario) from spawning.
		
		local x,y,z = table.unpack(GetEntityCoords(PlayerPedId()))
		ClearAreaOfVehicles(x, y, z, 1000, false, false, false, false, false)
		RemoveVehiclesFromGeneratorsInArea(x - 500.0, y - 500.0, z - 500.0, x + 500.0, y + 500.0, z + 500.0);
	end
end)