if exists("g:moria_style")
    let s:moria_style = g:moria_style
else
    let s:moria_style = &background
endif

if exists("g:moria_monochrome")
    let s:moria_monochrome = g:moria_monochrome
else
    let s:moria_monochrome = 0
endif

if exists("g:moria_fontface")
    let s:moria_fontface = g:moria_fontface
else
    let s:moria_fontface = "plain"
endif

execute "command! -nargs=1 Colo let g:moria_style = \"<args>\" | colo moria"

if s:moria_style == "black" || s:moria_style == "dark"
    set background=dark
elseif s:moria_style == "light" || s:moria_style == "white"
    set background=light
else
    let s:moria_style = &background 
endif

hi clear

if exists("syntax_on")
    syntax reset
endif

let colors_name = "moria"

if &background == "dark"
    if s:moria_style == "dark"
        hi Normal ctermbg=Black ctermfg=LightGray guibg=#ffffff guifg=#000000 gui=none

        hi CursorColumn ctermbg=DarkGray ctermfg=White guibg=#ffffff gui=none
        hi CursorLine ctermbg=DarkGray ctermfg=White guibg=#ffffff gui=none
    elseif s:moria_style == "black"
        hi Normal ctermbg=Black ctermfg=LightGray guibg=#ffffff guifg=#000000 gui=none

        hi CursorColumn ctermbg=DarkGray ctermfg=White guibg=#ffffff gui=none
        hi CursorLine ctermbg=DarkGray ctermfg=White guibg=#ffffff gui=none
    endif
    if s:moria_monochrome == 1
        hi FoldColumn ctermbg=bg guibg=bg guifg=#000000 gui=none
        hi LineNr guifg=#000000 gui=none
        hi MoreMsg guibg=bg guifg=#000000 gui=bold
        hi NonText ctermfg=DarkGray guibg=bg guifg=#000000 gui=bold
        hi Pmenu guibg=#ffffff guifg=#000000 gui=none
        hi PmenuSbar guibg=#ffffff guifg=fg gui=none
        hi PmenuThumb guibg=#ffffff guifg=bg gui=none
        hi SignColumn ctermbg=bg guibg=bg guifg=#000000 gui=none
        hi StatusLine ctermbg=LightGray ctermfg=Black guibg=#ffffff guifg=fg gui=bold
        hi StatusLineNC ctermbg=DarkGray ctermfg=Black guibg=#ffffff guifg=fg gui=none
        hi TabLine guibg=#ffffff guifg=fg gui=underline
        hi TabLineFill guibg=#ffffff guifg=fg gui=underline
        hi VertSplit ctermbg=LightGray ctermfg=Black guibg=#ffffff guifg=fg gui=none
        if s:moria_fontface == "mixed"
            hi Folded guibg=#ffffff guifg=#000000 gui=bold
        else
            hi Folded guibg=#ffffff guifg=#000000 gui=none
        endif            
    else
        hi FoldColumn ctermbg=bg guibg=bg guifg=#000000 gui=none
        hi LineNr guifg=#000000 gui=none
        hi MoreMsg guibg=bg guifg=#000000 gui=bold
        hi NonText ctermfg=DarkGray guibg=bg guifg=#000000 gui=bold
        hi Pmenu guibg=#ffffff guifg=#000000 gui=none
        hi PmenuSbar guibg=#ffffff guifg=fg gui=none
        hi PmenuThumb guibg=#ffffff guifg=bg gui=none
        hi SignColumn ctermbg=bg guibg=bg guifg=#000000 gui=none
        hi StatusLine ctermbg=LightGray ctermfg=Black guibg=#ffffff guifg=fg gui=bold
        hi StatusLineNC ctermbg=DarkGray ctermfg=Black guibg=#ffffff guifg=fg gui=none
        hi TabLine guibg=#ffffff guifg=fg gui=underline
        hi TabLineFill guibg=#ffffff guifg=fg gui=underline
        hi VertSplit ctermbg=LightGray ctermfg=Black guibg=#ffffff guifg=fg gui=none
        if s:moria_fontface == "mixed"
            hi Folded guibg=#ffffff guifg=#000000 gui=bold
        else
            hi Folded guibg=#ffffff guifg=#000000 gui=none
        endif            
    endif
    hi Cursor guibg=#ffffff guifg=bg gui=none
    hi DiffAdd guibg=#ffffff guifg=fg gui=none
    hi DiffChange guibg=#ffffff guifg=fg gui=none
    hi DiffDelete guibg=#ffffff guifg=fg gui=none
    hi DiffText guibg=#ffffff guifg=fg gui=bold
    hi Directory guibg=bg guifg=#000000 gui=none
    hi ErrorMsg guibg=#ffffff guifg=#000000 gui=bold
    hi IncSearch guibg=#ffffff guifg=#000000 gui=none
    hi ModeMsg guibg=bg guifg=fg gui=bold
    hi PmenuSel guibg=#ffffff guifg=#000000 gui=none
    hi Question guibg=bg guifg=#000000 gui=bold
    hi Search guibg=#ffffff guifg=#000000 gui=none
    hi SpecialKey guibg=bg guifg=#000000 gui=none
    if has("spell")
        hi SpellBad guisp=#ee2c2c gui=undercurl
        hi SpellCap guisp=#2c2cee gui=undercurl
        hi SpellLocal guisp=#2ceeee gui=undercurl
        hi SpellRare guisp=#ee2cee gui=undercurl
    endif
    hi TabLineSel guibg=bg guifg=fg gui=bold
    hi Title ctermbg=Black ctermfg=White guifg=fg gui=bold
    if version >= 700
        hi Visual ctermbg=LightGray ctermfg=Black guibg=#ffffff gui=none
    else
        hi Visual ctermbg=LightGray ctermfg=Black guibg=#ffffff guifg=fg gui=none
    endif
    hi VisualNOS ctermbg=DarkGray ctermfg=Black guibg=bg guifg=#000000 gui=bold,underline
    hi WarningMsg guibg=bg guifg=#000000 gui=bold
    hi WildMenu guibg=#ffffff guifg=#000000 gui=bold

    hi Comment guibg=bg guifg=#000000 gui=none
    hi Constant guibg=bg guifg=#000000 gui=none
    hi Error guibg=bg guifg=#000000 gui=none
    hi Identifier guibg=bg guifg=#000000 gui=none
    hi Ignore guibg=bg guifg=bg gui=none
    hi lCursor guibg=#ffffff guifg=#000000 gui=none
    hi MatchParen guibg=#ffffff gui=none
    hi PreProc guibg=bg guifg=#000000 gui=none
    hi Special guibg=bg guifg=#000000 gui=none
    hi Todo guibg=#ffffff guifg=#000000 gui=none
    hi Underlined ctermbg=Black ctermfg=White guibg=bg guifg=#000000 gui=underline    

    if s:moria_fontface == "mixed"
        hi Statement guibg=bg guifg=#000000 gui=bold
        hi Type guibg=bg guifg=#000000 gui=bold
    else
        hi Statement guibg=bg guifg=#000000 gui=none
        hi Type guibg=bg guifg=#000000 gui=none
    endif

    hi htmlBold ctermbg=Black ctermfg=White guibg=bg guifg=fg gui=bold
    hi htmlBoldItalic ctermbg=Black ctermfg=White guibg=bg guifg=fg gui=bold,italic
    hi htmlBoldUnderline ctermbg=Black ctermfg=White guibg=bg guifg=fg gui=bold,underline
    hi htmlBoldUnderlineItalic ctermbg=Black ctermfg=White guibg=bg guifg=fg gui=bold,underline,italic
    hi htmlItalic ctermbg=Black ctermfg=White guibg=bg guifg=fg gui=italic
    hi htmlUnderline ctermbg=Black ctermfg=White guibg=bg guifg=fg gui=underline
    hi htmlUnderlineItalic ctermbg=Black ctermfg=White guibg=bg guifg=fg gui=underline,italic
elseif &background == "light"
    if s:moria_style == "light"
        hi Normal ctermbg=White ctermfg=Black guibg=#ffffff guifg=#000000 gui=none

        hi CursorColumn ctermbg=LightGray ctermfg=Black guibg=#ffffff gui=none
        hi CursorLine ctermbg=LightGray ctermfg=Black guibg=#ffffff gui=none
    elseif s:moria_style == "white"
        hi Normal ctermbg=White ctermfg=Black guibg=#ffffff guifg=#000000 gui=none

        hi CursorColumn ctermbg=LightGray ctermfg=Black guibg=#ffffff gui=none
        hi CursorLine ctermbg=LightGray ctermfg=Black guibg=#ffffff gui=none
    endif
    if s:moria_monochrome == 1
        hi FoldColumn ctermbg=bg guibg=bg guifg=#000000 gui=none
        hi Folded guibg=#ffffff guifg=#000000 gui=bold
        hi LineNr guifg=#000000 gui=none
        hi MoreMsg guibg=bg guifg=#000000 gui=bold
        hi NonText ctermfg=DarkGray guibg=bg guifg=#000000 gui=bold
        hi Pmenu guibg=#ffffff guifg=#000000 gui=none
        hi PmenuSbar guibg=#ffffff guifg=fg gui=none
        hi PmenuThumb guibg=#ffffff guifg=fg gui=none
        hi SignColumn ctermbg=bg guibg=bg guifg=#000000 gui=none
        hi StatusLine ctermbg=Black ctermfg=White guibg=#ffffff guifg=fg gui=bold
        hi StatusLineNC ctermbg=LightGray ctermfg=Black guibg=#ffffff guifg=fg gui=none
        hi TabLine guibg=#ffffff guifg=fg gui=underline
        hi TabLineFill guibg=#ffffff guifg=fg gui=underline
        hi VertSplit ctermbg=LightGray ctermfg=Black guibg=#ffffff guifg=fg gui=none
    else
        hi FoldColumn ctermbg=bg guibg=bg guifg=#000000 gui=none
        hi Folded guibg=#ffffff guifg=#000000 gui=bold
        hi LineNr guifg=#000000 gui=none
        hi MoreMsg guibg=bg guifg=#000000 gui=bold
        hi NonText ctermfg=DarkGray guibg=bg guifg=#000000 gui=bold
        hi Pmenu guibg=#ffffff guifg=#000000 gui=none
        hi PmenuSbar guibg=#ffffff guifg=fg gui=none
        hi PmenuThumb guibg=#ffffff guifg=fg gui=none
        hi SignColumn ctermbg=bg guibg=bg guifg=#000000 gui=none
        hi StatusLine ctermbg=Black ctermfg=White guibg=#ffffff guifg=fg gui=bold
        hi StatusLineNC ctermbg=LightGray ctermfg=Black guibg=#ffffff guifg=fg gui=none
        hi TabLine guibg=#ffffff guifg=fg gui=underline
        hi TabLineFill guibg=#ffffff guifg=fg gui=underline
        hi VertSplit ctermbg=LightGray ctermfg=Black guibg=#ffffff guifg=fg gui=none
    endif
    hi Cursor guibg=#ffffff guifg=bg gui=none
    hi DiffAdd guibg=#ffffff guifg=#000000 gui=none
    hi DiffChange guibg=#ffffff guifg=#000000 gui=none
    hi DiffDelete guibg=#ffffff guifg=#000000 gui=none
    hi DiffText guibg=#ffffff guifg=#000000 gui=bold
    hi Directory guibg=bg guifg=#000000 gui=none
    hi ErrorMsg guibg=#ffffff guifg=#000000 gui=bold
    hi IncSearch guibg=#ffffff gui=none
    hi ModeMsg ctermbg=White ctermfg=Black guibg=bg guifg=fg gui=bold
    hi PmenuSel guibg=#ffffff guifg=#000000 gui=none
    hi Question guibg=bg guifg=#000000 gui=bold
    hi Search guibg=#ffffff gui=none
    hi SpecialKey guibg=bg guifg=#000000 gui=none
    if has("spell")
        hi SpellBad guisp=#ee2c2c gui=undercurl
        hi SpellCap guisp=#2c2cee gui=undercurl
        hi SpellLocal guisp=#008b8b gui=undercurl
        hi SpellRare guisp=#ee2cee gui=undercurl
    endif
    hi TabLineSel guibg=bg guifg=fg gui=bold
    hi Title guifg=fg gui=bold
    if version >= 700
        hi Visual ctermbg=LightGray ctermfg=Black guibg=#ffffff gui=none
    else
        hi Visual ctermbg=LightGray ctermfg=Black guibg=#ffffff guifg=fg gui=none
    endif    
    hi VisualNOS ctermbg=DarkGray ctermfg=Black guibg=bg guifg=#000000 gui=bold,underline
    hi WarningMsg guibg=bg guifg=#000000 gui=bold
    hi WildMenu guibg=#ffffff guifg=fg gui=bold

    hi Comment guibg=bg guifg=#000000 gui=none
    hi Constant guibg=bg guifg=#000000 gui=none
    hi Error guibg=bg guifg=#000000 gui=none
    hi Identifier guibg=bg guifg=#000000 gui=none
    hi Ignore guibg=bg guifg=bg gui=none
    hi lCursor guibg=#ffffff guifg=#000000 gui=none
    hi MatchParen guibg=#ffffff gui=none
    hi PreProc guibg=bg guifg=#000000 gui=none
    hi Special guibg=bg guifg=#000000 gui=none
    hi Statement guibg=bg guifg=#000000 gui=bold
    hi Todo guibg=#ffffff guifg=fg gui=none
    hi Type guibg=bg guifg=#000000 gui=bold
    hi Underlined ctermbg=White ctermfg=Black guibg=bg guifg=#000000 gui=underline

    hi htmlBold ctermbg=White ctermfg=Black guibg=bg guifg=fg gui=bold
    hi htmlBoldItalic ctermbg=White ctermfg=Black guibg=bg guifg=fg gui=bold,italic
    hi htmlBoldUnderline ctermbg=White ctermfg=Black guibg=bg guifg=fg gui=bold,underline
    hi htmlBoldUnderlineItalic ctermbg=White ctermfg=Black guibg=bg guifg=fg gui=bold,underline,italic
    hi htmlItalic ctermbg=White ctermfg=Black guibg=bg guifg=fg gui=italic
    hi htmlUnderline ctermbg=White ctermfg=Black guibg=bg guifg=fg gui=underline
    hi htmlUnderlineItalic ctermbg=White ctermfg=Black guibg=bg guifg=fg gui=underline,italic
endif

hi! default link bbcodeBold htmlBold
hi! default link bbcodeBoldItalic htmlBoldItalic
hi! default link bbcodeBoldItalicUnderline htmlBoldUnderlineItalic
hi! default link bbcodeBoldUnderline htmlBoldUnderline
hi! default link bbcodeItalic htmlItalic
hi! default link bbcodeItalicUnderline htmlUnderlineItalic
hi! default link bbcodeUnderline htmlUnderline
