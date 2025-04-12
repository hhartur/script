print("Hello from github")
local url = "http://localhost:3000".."/".. scriptHub.API_KEY

local sucess, response = pcall(function()
	return Http:GetAsync(url)
end)
local _, response = pcall(function()
	return Http:JSONDecode(response)
end)

if response and response.status == 200 then
	print("Natan buti")
else
	print("Natan MUITO buti")
end
