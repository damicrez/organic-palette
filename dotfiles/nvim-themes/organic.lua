---@type Base46Table
local M = {}

-- Configurar el tipo de entorno como tema claro
M.type = "light"

-- Mapeo semántico para Light Theme
M.base_30 = {
  black         = "#F4F5FE", -- Fondo principal (Pale grey)
  darker_black  = "#D0D4F9", -- Fondo de secciones/sidebar (Light blue grey)
  black2        = "#A7B0F0", -- Fondos secundarios/líneas (Light periwinkle)
  one_bg        = "#D0D4F9", -- Elementos activos flotantes
  one_bg2       = "#A7B0F0",
  one_bg3       = "#8F9BE9",
  white         = "#3D3F55", -- Texto principal (Dark)
  grey          = "#666C9A", -- Comentarios / Texto secundario (Dusky blue)
  grey_fg       = "#55453D", -- Texto atenuado (Dark grey)
  grey_fg2      = "#4B553D", -- (Grey brown)
  light_grey    = "#666C9A",
  line          = "#D0D4F9", -- Separadores de ventanas (Light blue grey)
  -- Colores de sintaxis con alto contraste sobre fondo claro
  red           = "#553D3D", -- Dirty pink
  baby_pink     = "#9A7866", -- Pinkish tan
  pink          = "#C99679",
  green         = "#869A66", -- Camo
  vibrant_green = "#4B553D", -- Grey brown
  nord_blue     = "#7983C9", -- Carolina blue
  blue          = "#666C9A", -- Dusky blue
  seablue       = "#7983C9",
  yellow        = "#9A7866", -- Dark taupe (Funciona como oro viejo/amarillo visible)
  sun           = "#C99679",
  purple        = "#553D3D", -- Purplish brown
  dark_purple   = "#3D3F55",
  teal          = "#869A66",
  orange        = "#C97979",
  cyan          = "#8F9BE9", -- Perrywinkle
  -- Componentes de la interfaz de NvChad
  statusline_bg = "#D0D4F9",
  lightbg       = "#A7B0F0",
  pmenu_bg      = "#666C9A",
  folder_bg     = "#7983C9"
}

-- Definición del estándar Base16 para herramientas y editores externos integrados
M.base_16 = {
  base00 = M.base_30.black,        -- Default Background
  base01 = M.base_30.darker_black, -- Lighter Background
  base02 = M.base_30.black2,       -- Selection Background
  base03 = M.base_30.grey,         -- Comments, Invisibles
  base04 = M.base_30.grey_fg,      -- Dark Foreground
  base05 = M.base_30.white,        -- Default Foreground
  base06 = M.base_30.grey_fg2,     -- Light Foreground
  base07 = M.base_30.white,        -- Sharp Foreground
  base08 = M.base_30.red,          -- Variables
  base09 = M.base_30.orange,       -- Integers, Constants
  base0A = M.base_30.yellow,       -- Classes, Types
  base0B = M.base_30.green,        -- Strings
  base0C = M.base_30.cyan,         -- Escape Characters
  base0D = M.base_30.blue,         -- Functions
  base0E = M.base_30.purple,       -- Keywords
  base0F = M.base_30.baby_pink,    -- Deprecated
}

-- Opcional: Ajustes finos específicos de visualización sobre fondo claro
M.polish_hl = {
  defaults = {
    Comment = { fg = "#7983C9", italic = true }, -- Comentarios legibles en Reddish grey
    CursorLine = { bg = "#D0D4F9" },             -- Resaltado de línea actual sutil
  },
}

-- Registro e inicialización oficial del tema en el core de Base46
M = require("base46").override_theme(M, "organic")

return M
