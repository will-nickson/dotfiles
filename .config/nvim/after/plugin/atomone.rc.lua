local status, od = pcall(require, "onedark")
if (not status) then return end

od.setup {
  style = 'warmer',
  transparent = true,
  term_colors = true,
  code_style = {
    comments = 'italic'
  },
  diagnostics = {
    darker = true, -- darker colors for diagnostic
    undercurl = true, -- use undercurl instead of underline for diagnostics
    background = true, -- use background color for virtual text
  },
  --    colors = {
  --      bright_orange = "#ff8800",    -- define a new color
  --      green = '#00ffaa',            -- redefine an existing color
  --    },
  --    highlights = {
  --      TSKeyword = {fg = '$green'},
  --      TSString = {fg = '$bright_orange', bg = '#00ff00', fmt = 'bold'},
  --      TSFunction = {fg = '#0000ff', sp = '$cyan', fmt = 'underline,italic'},
  --    }
}

od.load()
