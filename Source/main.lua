import 'CoreLibs/graphics'

local playerX, playerY = 200, 120
local playerRadius = 10

local pd <const> = playdate
local gfx <const> = pd.graphics
local playerSpeed = 3

function pd.update()
    gfx.clear()
    local crankPosition = pd.getCrankPosition() or 0
    local crankAngle = math.rad(crankPosition)
    playerX += math.sin(crankAngle) * playerSpeed
    playerY -= math.cos(crankAngle) * playerSpeed
    gfx.drawCircleAtPoint(playerX, playerY, playerRadius)
    pd.drawFPS(0, 0) -- FPS widget
end
