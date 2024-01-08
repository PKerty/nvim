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
function KanagawaSetUp()
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
        disable_background=false,
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
        },
        styles = {
            keywords='bold'
        }
    })
    vim.cmd('colorscheme carbonfox')
    -- remove line number bg
    vim.cmd('hi! LineNr guibg=none ctermbg=none')
    -- remove telescope bg
    vim.cmd('hi! TelescopeBorder guibg=none ctermbg=none')
    vim.cmd('hi! TelescopeTitle guibg=none ctermbg=none')

   -- require('colorizer').setup()
end
function DarkerSetup()

    require('onedark').setup  {
        -- Main options --
        style = 'darker', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
        transparent = true,  -- Show/hide background
        term_colors = true,
        code_style = {
            comments = 'none',
            keywords = 'bold',
            functions = 'none',
            strings = 'none',
            variables = 'italic'
        },

    }
    vim.cmd('colorscheme onedark')
    -- remove line number bg
    vim.cmd('hi! LineNr guibg=none ctermbg=none')
    -- remove telescope bg
    vim.cmd('hi! TelescopeBorder guibg=none ctermbg=none')
    vim.cmd('hi! TelescopeTitle guibg=none ctermbg=none')

    require('colorizer').setup()

end

function NordicSetUp()

    require('nordic').setup({
        bold_keywords = true,
        reduced_blue = true,
        cursorline = {
            -- Bold font in cursorline.
            bold = true,
            -- Bold cursorline number.
            bold_number = true,
            -- Avialable styles: 'dark', 'light'.
            theme = 'dark',
            -- Blending the cursorline bg with the buffer bg.
            blend = 0.85,
            noice = {
                -- Available styles: `classic`, `flat`.
                style = 'flat',
            },
            telescope = {
                -- Available styles: `classic`, `flat`.
                style = 'flat',
            },
        },

    })

    vim.cmd('colorscheme nordic');
    -- remove line number bg
    vim.cmd('hi! LineNr guibg=none ctermbg=none')
    -- remove telescope bg
    vim.cmd('hi! TelescopeBorder guibg=none ctermbg=none')
    vim.cmd('hi! TelescopeTitle guibg=none ctermbg=none')

    require('colorizer').setup()
end


NordicSetUp()
