length = 20
strength = 0
term.clear()
while true do
  strength = redstone.getAnalogInput("back")
  if strength  == 0 then
    term.setCursorPos(1,1)
    term.clearLine()
    print("Flower is active")
    sleep(30)
    term.clear()
  else
    local timer = strength*length
    term.setCursorPos(1,1)
    print("Current cooling cycle time: " .. timer .. " seconds")
    local count = timer
    while count > -1 do
      term.setCursorPos(1,3)
      term.clearLine()
      term.write("Time Remaining: " .. count .. " seconds")
      count = count - 1
      sleep(1)
    end
    term.clear()
    term.setCursorPos(1,1)
    print("Signaling Lava Dispense...")
    redstone.setOutput("right", true)
    sleep(1)
    redstone.setOutput("right", false)
    sleep(6)
  end
end
