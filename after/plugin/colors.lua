-- set theme:
-- remove bg
--
--[[require('kanagawa').setup({
    transparent=true;
})
-- set theme
vim.cmd("colorscheme kanagawa-wave")
-- remove line number bg
vim.cmd('hi! LineNr guibg=none ctermbg=none')
-- remove telescope bg
vim.cmd('hi! TelescopeBorder guibg=none ctermbg=none')
vim.cmd('hi! TelescopeTitle guibg=none ctermbg=none')

-- hex colors highlighting:
require('colorizer').setup()
]]--
function ColorSetUp()
require('kanagawa').setup({
        transparent=true;
    })
    vim.cmd("colorscheme kanagawa-wave")
    -- remove line number bg
    vim.cmd('hi! LineNr guibg=none ctermbg=none')
    -- remove telescope bg
    vim.cmd('hi! TelescopeBorder guibg=none ctermbg=none')
    vim.cmd('hi! TelescopeTitle guibg=none ctermbg=none')
end

function RoseSetUp()
    require('rose-pine').setup({
        variant='moon',
        dark_variant='moon',
        disable_background=true,
        disable_float_background=false,
    })
            vim.cmd('colorscheme rose-pine')
    -- remove line number bg
    vim.cmd('hi! LineNr guibg=none ctermbg=none')
    -- remove telescope bg
    vim.cmd('hi! TelescopeBorder guibg=none ctermbg=none')
    vim.cmd('hi! TelescopeTitle guibg=none ctermbg=none')

    require('colorizer').setup()
end

--RoseSetUp()
--
function FoxSetUp()
    require('nightfox').setup({
        options = {
            terminal_colors = true,
            colorblind = {
                enable = true,        -- Enable colorblind support
                simulate_only = false, -- Only show simulated colorblind colors and not diff shifted
                severity = {
                    protan = 0,          -- Severity [0,1] for protan (red)
                    deutan = 0.5,          -- Severity [0,1] for deutan (green)
                    tritan = 0,          -- Severity [0,1] for tritan (blue)
                },
            },
            transparent = false
        }
    })
    vim.cmd('colorscheme carbonfox')
-- remove line number bg
    vim.cmd('hi! LineNr guibg=none ctermbg=none')
    -- remove telescope bg
    vim.cmd('hi! TelescopeBorder guibg=none ctermbg=none')
    vim.cmd('hi! TelescopeTitle guibg=none ctermbg=none')

    require('colorizer').setup()
end

FoxSetUp()
