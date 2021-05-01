local stationGarage = { --Here you can add more points
    {x=441.47, y=-987.65, z=24.7, r=20}, -- Mission row PD
    {x=1868.07, y=3697.46, z=33.92, r=20}, -- Sandy Shores PD
    {x=-457.88, y=6024.79, z=31.4, r=20}, -- Paleto Bay PD
}


RegisterCommand("extras", function(source, args, rawCommand)

			for i = 1, #stationGarage do
				ply = GetPlayerPed(-1)
				plyCoords = GetEntityCoords(ply, 0)
				local distance = GetDistanceBetweenCoords(stationGarage[i].x, stationGarage[i].y, stationGarage[i].z, plyCoords["x"], plyCoords["y"], plyCoords["z"], true)
				if(distance < stationGarage[i].r) then
					local vehicle = GetVehiclePedIsIn(ply,false)
					TriggerEvent("xp1_police:extras", vehicle)
				end
			end

end, false)