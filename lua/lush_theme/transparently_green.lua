--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require("lush")
local hsl = lush.hsl

local tg_bright = hsl(120, 100, 85)
local tg_normal = hsl(120, 85, 55)
local tg_dim = hsl(120, 70, 40)
local tg_dark = hsl(120, 50, 20)

local tg_bright_yellow = hsl(95, 100, 85)
local tg_yellow = hsl(95, 85, 65)
local tg_dim_yellow = hsl(95, 70, 35)
local tg_dark_yellow = hsl(95, 50, 20)

local tg_bright_blue = hsl(155, 100, 85)
local tg_blue = hsl(155, 85, 50)
local tg_dim_blue = hsl(155, 75, 35)
local tg_dark_blue = hsl(155, 55, 23)

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
	local sym = injected_functions.sym
	return {
		-- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
		-- groups, mostly used for styling UI elements.
		-- Comment them out and add your own properties to override the defaults.
		-- An empty definition `{}` will clear all styling, leaving elements looking
		-- like the 'Normal' group.
		-- To be able to link to a group, it must already be defined, so you may have
		-- to reorder items as you go.
		--
		-- See :h highlight-groups
		--
		ColorColumn    { bg = tg_dark, fg = tg_normal }, -- Columns set with 'colorcolumn'
		Conceal        { fg = tg_dim }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor         { bg = tg_normal, fg = tg_dark }, -- Character under the cursor
		CurSearch      { bg = tg_bright, fg = tg_dark }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
		lCursor        { bg = tg_normal, fg = tg_dark }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
		CursorIM       { bg = tg_normal, fg = tg_dark }, -- Like Cursor, but used when in IME mode |CursorIM|
		CursorColumn   { bg = tg_dark }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
		CursorLine     { bg = tg_dark }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
		Directory      { fg = tg_blue }, -- Directory names (and other special names in listings)
		DiffAdd        { fg = tg_yellow }, -- Diff mode: Added line |diff.txt|
		DiffChange     { fg = tg_yellow }, -- Diff mode: Changed line |diff.txt|
		DiffDelete     { fg = tg_bright_yellow }, -- Diff mode: Deleted line |diff.txt|
		DiffText       { fg= tg_yellow, bg = tg_dark_blue }, -- Diff mode: Changed text within a changed line |diff.txt|
		EndOfBuffer    { fg = tg_dim_blue }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
		TermCursor     { bg = tg_normal, fg = tg_dark }, -- Cursor in a focused terminal
		TermCursorNC   { bg = tg_dim, fg = tg_dark }, -- Cursor in an unfocused terminal
		ErrorMsg       { fg = tg_bright_yellow }, -- Error messages on the command line
		VertSplit      { fg = tg_normal }, -- Column separating vertically split windows
		Folded         { fg = tg_dim }, -- Line used for closed folds
		FoldColumn     { fg = tg_dim }, -- 'foldcolumn'
		SignColumn     { fg = tg_dim }, -- Column where |signs| are displayed
		IncSearch      { bg = tg_normal, fg = tg_dark }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		Substitute     { bg = tg_dim, fg = tg_bright }, -- |:substitute| replacement text highlighting
		LineNr         { fg = tg_dim }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		LineNrAbove    { fg = tg_dim }, -- Line number for when the 'relativenumber' option is set, above the cursor line
		LineNrBelow    { fg = tg_dim }, -- Line number for when the 'relativenumber' option is set, below the cursor line
		CursorLineNr   { fg = tg_normal }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		CursorLineFold { fg = tg_dim }, -- Like FoldColumn when 'cursorline' is set for the cursor line
		CursorLineSign { fg = tg_dim }, -- Like SignColumn when 'cursorline' is set for the cursor line
		MatchParen     { fg = tg_normal, bg = tg_dim }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		ModeMsg        { fg = tg_bright }, -- 'showmode' message (e.g., "-- INSERT -- ")
		MsgArea        { fg = tg_dim }, -- Area for messages and cmdline
		MsgSeparator   { fg = tg_dark, bg = tg_dim }, -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg        { fg = tg_bright_blue }, -- |more-prompt|
		NonText        { fg = tg_dim_blue }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Normal         { fg = tg_normal }, -- Normal text
		NormalFloat    { fg = tg_bright }, -- Normal text in floating windows.
		FloatBorder    { fg = tg_dim }, -- Border of floating windows.
		FloatTitle     { fg = tg_bright, gui = "bold" }, -- Title of floating windows.
		NormalNC       { fg = tg_normal }, -- normal text in non-current windows
		Pmenu          { fg = tg_normal }, -- Popup menu: Normal item.
		PmenuSel       { bg = tg_normal, fg = tg_dark }, -- Popup menu: Selected item.
		PmenuKind      { fg = tg_normal }, -- Popup menu: Normal item "kind"
		PmenuKindSel   { fg = tg_dark, bg = tg_normal }, -- Popup menu: Selected item "kind"
		PmenuExtra     { fg = tg_normal }, -- Popup menu: Normal item "extra text"
		PmenuExtraSel  { fg = tg_dark, bg = tg_normal }, -- Popup menu: Selected item "extra text"
		PmenuSbar      { fg = tg_normal }, -- Popup menu: Scrollbar.
		PmenuThumb     { fg = tg_dim, bg = tg_dark_blue  }, -- Popup menu: Thumb of the scrollbar.
		Question       { fg = tg_bright_blue }, -- |hit-enter| prompt and yes/no questions
		QuickFixLine   { fg = tg_bright_blue }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search         { bg = tg_normal, fg = tg_dark }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
		SpecialKey     { fg = tg_dim_blue }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
		SpellBad       { fg = tg_dim, gui="underline" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap       { fg = tg_dim, gui="underline" }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal     { fg = tg_dim, gui="underline" }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare      { fg = tg_dim, gui="underline" }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
		StatusLine     { bg = tg_dim, fg = tg_dark }, -- Status line of current window
		StatusLineNC   { bg = tg_dark, fg = tg_dim }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLine        { bg = tg_dark, fg = tg_normal }, -- Tab pages line, not active tab page label
		TabLineFill    { bg = tg_dark }, -- Tab pages line, where there are no labels
		TabLineSel     { bg = tg_normal, fg = tg_dark }, -- Tab pages line, active tab page label
		Title          { fg = tg_normal, gui = "bold" }, -- Titles for output from ":set all", ":autocmd" etc.
		Visual         { bg = tg_normal, fg = tg_dark }, -- Visual mode selection
		VisualNOS      { bg = tg_normal, fg = tg_dark }, -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg     { fg = tg_bright_yellow }, -- Warning messages
		Whitespace     { fg = tg_dim_blue }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		Winseparator   { fg = tg_normal }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
		WildMenu       { bg = tg_normal, fg = tg_dark }, -- Current match in 'wildmenu' completion
		WinBar         { fg = tg_dim, bg = tg_dark_blue }, -- Window bar of current window
		WinBarNC       { fg = tg_dim, bg = tg_dark_blue  }, -- Window bar of not-current windows

		-- Common vim syntax groups used for all kinds of code and markup.
		-- Commented-out groups should chain up to their preferred (*) group
		-- by default.
		--
		-- See :h group-name
		--
		-- Uncomment and edit if you want more specific syntax highlighting.

		Comment        { fg = tg_dim }, -- Any comment

		Constant       { fg = tg_blue }, -- (*) Any constant
		String         { fg = tg_blue }, --   A string constant: "this is a string"
		Character      { fg = tg_blue }, --   A character constant: 'c', '\n'
		Number         { fg = tg_blue }, --   A number constant: 234, 0xff
		Boolean        { fg = tg_blue }, --   A boolean constant: TRUE, false
		Float          { fg = tg_blue }, --   A floating point constant: 2.3e10

		Identifier     { fg = tg_normal }, -- (*) Any variable name
		Function       { fg = tg_normal }, --   Function name (also: methods for classes)

		Statement      { fg = tg_yellow }, -- (*) Any statement
		Conditional    { fg = tg_yellow }, --   if, then, else, endif, switch, etc.
		Repeat         { fg = tg_yellow }, --   for, do, while, etc.
		Label          { fg = tg_yellow }, --   case, default, etc.
		Operator       { fg = tg_yellow }, --   "sizeof", "+", "*", etc.
		Keyword        { fg = tg_yellow }, --   any other keyword
		Exception      { fg = tg_yellow }, --   try, catch, throw

		PreProc        { fg = tg_dim }, -- (*) Generic Preprocessor
		Include        { fg = tg_dim }, --   Preprocessor #include
		Define         { fg = tg_dim }, --   Preprocessor #define
		Macro          { fg = tg_dim }, --   Same as Define
		PreCondit      { fg = tg_dim }, --   Preprocessor #if, #else, #endif, etc.

		Type           { fg = tg_blue }, -- (*) int, long, char, etc.
		StorageClass   { fg = tg_blue }, --   static, register, volatile, etc.
		Structure      { fg = tg_blue }, --   struct, union, enum, etc.
		Typedef        { fg = tg_blue }, --   A typedef

		Special        { fg = tg_bright_blue }, -- (*) Any special symbol
		SpecialChar    { fg = tg_bright_blue }, --   Special character in a constant
		Tag            { fg = tg_bright_blue }, --   You can use CTRL-] on this
		Delimiter      { fg = tg_bright_blue }, --   Character that needs attention
		SpecialComment { fg = tg_bright_blue }, --   Special things inside a comment (e.g. '\n')
		Debug          { fg = tg_bright_blue }, --   Debugging statements

		Underlined { fg = tg_normal, gui = "underline" }, -- Text that stands out, HTML links
		Ignore { fg = tg_dim }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
		Error { fg = tg_bright_blue, bg = tg_dim_yellow }, -- Any erroneous construct
		Todo { bg = tg_bright, fg = tg_dark }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

		-- These groups are for the native LSP client and diagnostic system. Some
		-- other LSP clients may use these groups, or use their own. Consult your
		-- LSP client's documentation.

		-- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
		--
		LspReferenceText            { bg = tg_normal, fg = tg_dark } , -- Used for highlighting "text" references
		LspReferenceRead            { bg = tg_normal, fg = tg_dark } , -- Used for highlighting "read" references
		LspReferenceWrite           { bg = tg_normal, fg = tg_dark } , -- Used for highlighting "write" references
		LspCodeLens                 { fg = tg_dim } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
		LspCodeLensSeparator        { fg = tg_dim } , -- Used to color the seperator between two or more code lens.
		LspSignatureActiveParameter { bg = tg_normal, fg = tg_dark } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

		-- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
		--
		DiagnosticError            { fg = tg_bright_yellow } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticWarn             { fg = tg_yellow        } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticInfo             { fg = tg_blue          } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticHint             { fg = tg_dim_blue      } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticOk               { fg = tg_dim           } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticVirtualTextError { fg = tg_bright_yellow } , -- Used for "Error" diagnostic virtual text.
		DiagnosticVirtualTextWarn  { fg = tg_yellow        } , -- Used for "Warn" diagnostic virtual text.
		DiagnosticVirtualTextInfo  { fg = tg_blue          } , -- Used for "Info" diagnostic virtual text.
		DiagnosticVirtualTextHint  { fg = tg_dim_blue      } , -- Used for "Hint" diagnostic virtual text.
		DiagnosticVirtualTextOk    { fg = tg_dim           } , -- Used for "Ok" diagnostic virtual text.
		DiagnosticUnderlineError   { fg = tg_bright_yellow, gui = "underline" } , -- Used to underline "Error" diagnostics.
		DiagnosticUnderlineWarn    { fg = tg_yellow       , gui = "underline" } , -- Used to underline "Warn" diagnostics.
		DiagnosticUnderlineInfo    { fg = tg_blue         , gui = "underline" } , -- Used to underline "Info" diagnostics.
		DiagnosticUnderlineHint    { fg = tg_dim_blue     , gui = "underline" } , -- Used to underline "Hint" diagnostics.
		DiagnosticUnderlineOk      { fg = tg_dim          , gui = "underline" } , -- Used to underline "Ok" diagnostics.
		DiagnosticFloatingError    { fg = tg_bright_yellow } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
		DiagnosticFloatingWarn     { fg = tg_yellow        } , -- Used to color "Warn" diagnostic messages in diagnostics float.
		DiagnosticFloatingInfo     { fg = tg_blue          } , -- Used to color "Info" diagnostic messages in diagnostics float.
		DiagnosticFloatingHint     { fg = tg_dim_blue      } , -- Used to color "Hint" diagnostic messages in diagnostics float.
		DiagnosticFloatingOk       { fg = tg_dim           } , -- Used to color "Ok" diagnostic messages in diagnostics float.
		DiagnosticSignError        { fg = tg_bright_yellow } , -- Used for "Error" signs in sign column.
		DiagnosticSignWarn         { fg = tg_yellow        } , -- Used for "Warn" signs in sign column.
		DiagnosticSignInfo         { fg = tg_blue          } , -- Used for "Info" signs in sign column.
		DiagnosticSignHint         { fg = tg_dim_blue      } , -- Used for "Hint" signs in sign column.
		DiagnosticSignOk           { fg = tg_dim           } , -- Used for "Ok" signs in sign column.

		-- Tree-Sitter syntax groups.
		--
		-- See :h treesitter-highlight-groups, some groups may not be listed,
		-- submit a PR fix to lush-template!
		--
		-- Tree-Sitter groups are defined with an "@" symbol, which must be
		-- specially handled to be valid lua code, we do this via the special
		-- sym function. The following are all valid ways to call the sym function,
		-- for more details see https://www.lua.org/pil/5.html
		--
		-- sym("@text.literal")
		-- sym('@text.literal')
		-- sym"@text.literal"
		-- sym'@text.literal'
		--
		-- For more information see https://github.com/rktjmp/lush.nvim/issues/109

		sym"@text.literal"      { fg = tg_dim }, -- Comment
		sym"@text.reference"    { fg = tg_dim }, -- Identifier
		sym"@text.title"        { fg = tg_dim }, -- Title
		sym"@text.uri"          { fg = tg_dim }, -- Underlined
		sym"@text.underline"    { fg = tg_dim }, -- Underlined
		sym"@text.todo"         { fg = tg_dim }, -- Todo
		sym"@comment"           { fg = tg_dim }, -- Comment
		sym"@punctuation"       { fg = tg_bright }, -- Delimiter
		sym"@constant"          { fg = tg_blue }, -- Constant
		sym"@constant.builtin"  { fg = tg_bright }, -- Special
		sym"@constant.macro"    { fg = tg_blue }, -- Define
		sym"@define"            { fg = tg_dim }, -- Define
		sym"@macro"             { fg = tg_dim }, -- Macro
		sym"@string"            { fg = tg_blue }, -- String
		sym"@string.escape"     { fg = tg_bright }, -- SpecialChar
		sym"@string.special"    { fg = tg_bright }, -- SpecialChar
		sym"@character"         { fg = tg_blue }, -- Character
		sym"@character.special" { fg = tg_bright }, -- SpecialChar
		sym"@number"            { fg = tg_blue }, -- Number
		sym"@boolean"           { fg = tg_blue }, -- Boolean
		sym"@float"             { fg = tg_dim }, -- Float
		sym"@function"          { fg = tg_normal }, -- Function
		sym"@function.builtin"  { fg = tg_bright }, -- Special
		sym"@function.macro"    { fg = tg_normal }, -- Macro
		sym"@parameter"         { fg = tg_dim }, -- Identifier
		sym"@method"            { fg = tg_dim }, -- Function
		sym"@field"             { fg = tg_dim }, -- Identifier
		sym"@property"          { fg = tg_normal }, -- Identifier
		sym"@constructor"       { fg = tg_bright }, -- Special
		sym"@conditional"       { fg = tg_dim }, -- Conditional
		sym"@repeat"            { fg = tg_dim }, -- Repeat
		sym"@label"             { fg = tg_yellow }, -- Label
		sym"@operator"          { fg = tg_yellow }, -- Operator
		sym"@keyword"           { fg = tg_yellow }, -- Keyword
		sym"@exception"         { fg = tg_dim }, -- Exception
		sym"@variable"          { fg = tg_bright }, -- Identifier
		sym"@type"              { fg = tg_blue }, -- Type
		sym"@type.definition"   { fg = tg_blue }, -- Typedef
		sym"@storageclass"      { fg = tg_dim }, -- StorageClass
		sym"@structure"         { fg = tg_dim }, -- Structure
		sym"@namespace"         { fg = tg_dim }, -- Identifier
		sym"@include"           { fg = tg_dim }, -- Include
		sym"@preproc"           { fg = tg_dim }, -- PreProc
		sym"@debug"             { fg = tg_dim }, -- Debug
		sym"@tag"               { fg = tg_bright }, -- Tag
	}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
