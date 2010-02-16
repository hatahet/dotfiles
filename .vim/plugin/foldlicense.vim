function! FoldCopyright()
    if !exists( "b:foldedCopyright" )
        let b:foldedCopyright = 1
        1,/Copyright .*\. All Rights Reserved\./;/limitations under the License\./fold
    endif
endfunction
au BufRead *.\(js\|html\) silent! call FoldCopyright()

function! DoLicense()
    if !exists( "b:didLicense" )
        let b:didLicense = 1
        se paste
        normal i// Copyright 2010 Steven Dee. All Rights Reserved.
        se nopaste
    endif
endfunction
au BufNewFile *.js call DoLicense()