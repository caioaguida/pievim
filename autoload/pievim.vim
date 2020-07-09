"""
""" Pievim: plugin of mapping schemes for typing (Proto-)Indo-European
""" AUTHOR:  Caio Aguida 
""" EMAIL:   caioaguida@protonmail.com
""" TWITTER: @silenus32
"""
""" License: This file is placed in public domain.
"""

let g:PIEModeOn=0

function! pievim#loadPIE()
    if !g:PIEModeOn 
        call PIEMode()
    else
        call PIEModeOFF()
    endif
endfunction

function! PIEMode()
    let g:PIEModeOn=1
    echo "PIE Mode Active"
    " Vedic Harvard-Kyoto
    inoremap <leader>hk <Esc>:call ie#vedichk#ToggleVedicHK()<CR>a
    nnoremap <leader>hk :call ie#vedichk#ToggleVedicHK()<CR>
    " Polytonic Greek
    inoremap <leader>gr <Esc>:call ie#polytonicgreek#TogglePolytonicGreek()<CR>a
    nnoremap <leader>gr :call ie#polytonicgreek#TogglePolytonicGreek()<CR>
    " Linear B
    inoremap <leader>linb <Esc>:call ie#linearb#ToggleLinearB()<CR>a
    nnoremap <leader>linb :call ie#linearb#ToggleLinearB()<CR>
    " Proto-Indo-European
    inoremap <leader>pie <Esc>:call ie#pie#TogglePIE()<CR>a
    nnoremap <leader>pie :call ie#pie#TogglePIE()<CR>
    " Avestan Transliteration
    inoremap <leader>av <Esc>:call ie#avestantrans#ToggleAV()<CR>a
    nnoremap <leader>av :call ie#avestantrans#ToggleAV()<CR>
    " Avestan Script
    inoremap <leader>avs <Esc>:call ie#avestanscript#ToggleAVScript()<CR>a
    nnoremap <leader>avs :call ie#avestanscript#ToggleAVScript()<CR>
    " Oscan
    inoremap <leader>osc <Esc>:call ie#oscan#ToggleOscan()<CR>a
    nnoremap <leader>osc :call ie#oscan#ToggleOscan()<CR>
    " Armenian Script
    inoremap <leader>arm <Esc>:call ie#armenian#ToggleArmenian()<CR>a
    nnoremap <leader>arm :call ie#armenian#ToggleArmenian()<CR>
    " Old Persian
    inoremap <leader>opers <Esc>:call ie#oldpersian#ToggleOldPersian()<CR>a
    nnoremap <leader>opers :call ie#oldpersian#ToggleOldPersian()<CR>
endfunction

function! PIEModeOFF()
    let g:PIEModeOn=0
    echo "PIE Mode Inactive"
    iunmap <leader>hk
    nunmap <leader>hk
    iunmap <leader>gr
    nunmap <leader>gr
    iunmap <leader>pie
    nunmap <leader>pie
    iunmap <leader>av
    nunmap <leader>av
    iunmap <leader>avs
    nunmap <leader>avs
    iunmap <leader>osc
    nunmap <leader>osc
    iunmap <leader>arm
    nunmap <leader>arm
    iunmap <leader>opers
    nunmap <leader>opers
    iunmap <leader>linb
    nunmap <leader>linb
endfunction
