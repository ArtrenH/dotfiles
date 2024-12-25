

" replace | ... | with \abs{ ... }
:%s/|\([^|]*\)|/\\abs{\1}/g

" replace \{ ... \} with \set{ ... }
:%s/\\{\([^{}]*\)\\}/\\set{\1}/g

" replace \mathcal{ ... } with \mc...
:%s/\\mathcal{\([^}]*\)}/\\mc\1/g

" replace \mathbb{ ... } with \bb...
:%s/\\mathbb{\([^}]*\)}/\\bb\1/g
