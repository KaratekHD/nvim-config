vim.g.barbar_auto_setup = false -- disable auto-setup

require'barbar'.setup {
	 sidebar_filetypes = {
    -- Use the default values: {event = 'BufWinLeave', text = '', align = 'left'}
    NvimTree = true,
    -- Or, specify the text used for the offset:
--    undotree = {
--      text = 'undotree',
--      align = 'center', -- *optionally* specify an alignment (either 'left', 'center', or 'right')
--    },
--    -- Or, specify the event which the sidebar executes when leaving:
--    ['neo-tree'] = {event = 'BufWipeout'},
    -- Or, specify all three
--    Outline = {event = 'BufWinLeave', text = 'symbols-outline', align = 'right'},
  },
}
