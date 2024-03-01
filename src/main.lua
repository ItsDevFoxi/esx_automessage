local currentResourceName = GetCurrentResourceName()
local template = LoadResourceFile(currentResourceName, "template.html")

Citizen.CreateThread(function()
  while true do
    for _, message in pairs(Config.messages) do
      TriggerEvent("chat:addMessage", {
        template = template,
        args = { Config.imageUrl, Config.color, Config.title, message }
      })

      Citizen.Wait(Config.interval)
    end
  end
end)

print("^4 esx_automessage Made By Foxi Development")
print("^4 esx_automessage Made By Foxi Development")
print("^4 esx_automessage Made By Foxi Development")