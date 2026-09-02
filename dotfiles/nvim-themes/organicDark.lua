---@type Base46Table
local M = {}

-- Configurar el tipo de entorno como tema claro
M.type = "light"

-- Mapeo semántico para Light Theme
M.base_30 = {
  black         = "#3D3F55", -- Fondo principal (Pale grey)
  darker_black  = "#666C9A", -- Fondo de secciones/sidebar (Light blue grey)
  black2        = "#7983C9", -- Fondos secundarios/líneas (Light periwinkle)
  one_bg        = "#8F9BE9", -- Elementos activos flotantes
  one_bg2       = "#A7B0F0",
  one_bg3       = "#D0D4F9",
  white         = "#F4F5FE", -- Texto principal (Dark)
  grey          = "#A7B0F0", -- Comentarios / Texto secundario (Dusky blue)
  grey_fg       = "#C97979", -- Texto atenuado (Dark grey)
  grey_fg2      = "#ABC979", -- (Grey brown)
  light_grey    = "#D0D4F9",
  line          = "#553D3D", -- Separadores de ventanas (Light blue grey)
  -- Colores de sintaxis con alto contraste sobre fondo claro
  red           = "#C97979", -- Dirty pink
  baby_pink     = "#D0D4F9", -- Pinkish tan
  pink          = "#C99679",
  green         = "#ABC979", -- Camo
  vibrant_green = "#4B553D", -- Grey brown
  nord_blue     = "#A7B0F0", -- Carolina blue
  blue          = "#A7B0F0", -- Dusky blue
  seablue       = "#7983C9",
  yellow        = "#9A7866", -- Dark taupe (Funciona como oro viejo/amarillo visible)
  sun           = "#C99679",
  purple        = "#9A7866", -- Purplish brown
  dark_purple   = "#C97979",
  teal          = "#869A66",
  orange        = "#ABC979",
  cyan          = "#8F9BE9", -- Perrywinkle
  -- Componentes de la interfaz de NvChad
  statusline_bg = "#4B553D",
  lightbg       = "#7983C9",
  pmenu_bg      = "#D0D4F9",
  folder_bg     = "#9A6666"
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
    Comment = { fg = "#A7B0F0", italic = true }, -- Comentarios legibles en Reddish grey
    CursorLine = { bg = "#D0D4F9" },             -- Resaltado de línea actual sutil
  },
}

-- Registro e inicialización oficial del tema en el core de Base46
M = require("base46").override_theme(M, "organic")

return M
