function! FoldCopyright()
    if !exists( "b:foldedCopyright" )
        let b:foldedCopyright = 1
        1,/Copyright .*\. All Rights Reserved\./;/limitations under the License\./fold
    endif
endfunction
au BufRead *.js silent! call FoldCopyright()
