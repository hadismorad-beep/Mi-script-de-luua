-- Crear GUI
local player = game.Players.LocalPlayer

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")

-- Función para crear botones
local function crearBoton(texto, posicionY)
    local boton = Instance.new("TextButton")
    boton.Size = UDim2.new(0, 200, 0, 50)
    boton.Position = UDim2.new(0.5, -100, 0, posicionY)
    boton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    boton.TextColor3 = Color3.fromRGB(255, 255, 255)
    boton.TextSize = 20
    boton.Text = texto
    boton.Parent = screenGui
    return boton
end

-- Crear botones
local botonBrainrot = crearBoton("Duplicar Brainrot", 150)
local botonTokens = crearBoton("Duplicar Tokens", 220)

-- Función para duplicar valores
local function duplicarValor(nombreValor)
    local leaderstats = player:FindFirstChild("leaderstats")
    if leaderstats then
        local stat = leaderstats:FindFirstChild(nombreValor)
        if stat then
     stat.Value = stat.Value * 2
        end
    end
end

-- Eventos
botonBrainrot.MouseButton1Click:Connect(function()
    duplicarValor("Brainrot")
end)

botonTokens.MouseButton1Click:Connect(function()
    duplicarValor("Tokens")
end)
