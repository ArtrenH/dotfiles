

" replace | ... | with \abs{ ... }
:%s/|\([^|]*\)|/\\abs{\1}/g
:%s/ |\([^|]*\)| / \\abs{\1} /g
:%s/|\([^|]*\)| /\\abs{\1} /g
:%s/\\|\([^|]*\)\\|/\\abs{\1}/g

" for rvert and lvert
:%s/\\left\\lvert /\\abs{/g
:%s/\\left\\lvert/\\abs{/g
:%s/\\lvert /\\abs{/g
:%s/\\lvert/\\abs{/g
:%s/ \\right\\rvert/\}/g
:%s/\\right\\rvert/\}/g
:%s/ \\rvert/\}/g
:%s/\\rvert/\}/g

" replace \{ ... \} with \set{ ... }
:%s/\\{\([^{}]*\)\\}/\\set{\1}/g

" replace \mathcal{ ... } with \mc...
:%s/\\mathcal{\([^}]*\)}/\\mc\1/g

" replace \mathbb{ ... } with \bb...
:%s/\\mathbb{\([^}]*\)}/\\bb\1/g

" replace \( ... \) with $...$
:%s/\\( /$/g
:%s/ \\)/$/g
:%s/\\(/$/g
:%s/\\)/$/g

:silent! %s/\\( /$/g | silent! %s/ \\)/$/g | silent! %s/\\(/$/g | silent! %s/\\)/$/g


" replace \[ ... \] with \begin{align*} ... \end{align*} and keep line breaks and indents
:%s/\\\[/\\begin{align*}/g
:%s/\\\]/\\end{align*}/g

:silent! %s/\\\[/\\begin{align*}/g | silent! %s/\\\]/\\end{align*}/g
