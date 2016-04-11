if exists("b:current_syntax")
  finish
endif

if !exists("main_syntax")
  let main_syntax = 'tea'
endif

set iskeyword-=_

syn match TeXlabel '\v@@(\w|\ |\d)+@@'
syn match TeXlabel '\v@:(\w|\ |\d)+:(\w|\ |\d)+:@'
syn match TeXlabel '\v@:(\w|\ |\d)+@'
hi link TeXlabel DiffAdd
syn region TeXcomment matchgroup=TeXcomment start="%\[" end="\]%"
hi link TeXcomment SpecialComment
syn region TeXequation matchgroup=TeXequation start="\$" end="\$" contains=rainbowParens0,rainbowParens1,rainbowParens2,rainbowParens3,rainbowParens4,rainbowParens5,TeXlabel
syn region TeXequation matchgroup=TeXequation start="\$&" end="\$&" contains=TeXword,rainbowParens0,rainbowParens1,rainbowParens2,rainbowParens3,rainbowParens4,rainbowParens5,TeXlabel
syn region TeXequation matchgroup=TeXequation start="\$\$" end="\$\$" contains=rainbowParens0,rainbowParens1,rainbowParens2,rainbowParens3,rainbowParens4,rainbowParens5,TeXlabel
hi TeXequation ctermbg=17
syn keyword TeXword lim containedin=TeXequation contained
syn keyword TeXword tilde containedin=TeXequation contained

syn keyword TeXword empty varnothing containedin=TeXequation contained
syn keyword TeXword and containedin=TeXequation contained
syn keyword TeXword sspace containedin=TeXequation contained
syn keyword TeXword bar containedin=TeXequation contained
syn keyword TeXword iff containedin=TeXequation contained
syn keyword TeXword bb containedin=TeXequation contained
syn keyword TeXword frak containedin=TeXequation contained
syn keyword TeXword cal containedin=TeXequation contained
syn keyword TeXword or containedin=TeXequation contained
syn keyword TeXword not containedin=TeXequation contained
syn keyword TeXwordb display
syn keyword TeXwordb package
syn keyword TeXword dif containedin=TeXequation contained
syn keyword TeXword simeq containedin=TeXequation contained
syn keyword TeXword boxcircle containedin=TeXequation contained
syn keyword TeXword ddot containedin=TeXequation contained
syn keyword TeXword dddot containedin=TeXequation contained
syn keyword TeXword uparrow containedin=TeXequation contained
syn keyword TeXword downarrow containedin=TeXequation contained
syn keyword TeXword equiv containedin=TeXequation contained
syn keyword TeXword ell containedin=TeXequation contained
syn keyword TeXword sum containedin=TeXequation contained
syn keyword TeXword inf containedin=TeXequation contained
syn keyword TeXword infty containedin=TeXequation contained
syn keyword TeXword dot containedin=TeXequation contained
syn keyword TeXword cdots containedin=TeXequation contained
syn keyword TeXword vdots containedin=TeXequation contained
syn keyword TeXword frac containedin=TeXequation contained
syn keyword TeXword int containedin=TeXequation contained
syn keyword TeXword cup containedin=TeXequation contained
syn keyword TeXword cap containedin=TeXequation contained
syn keyword TeXword in containedin=TeXequation contained
syn keyword TeXword ni containedin=TeXequation contained
syn keyword TeXword setminus containedin=TeXequation contained
syn keyword TeXword exists containedin=TeXequation contained
syn keyword TeXword forall containedin=TeXequation contained
syn keyword TeXword times containedin=TeXequation contained
syn keyword TeXword ast containedin=TeXequation contained
syn keyword TeXword leq containedin=TeXequation contained
syn keyword TeXword geq containedin=TeXequation contained
syn keyword TeXword neq containedin=TeXequation contained
syn keyword TeXword vee containedin=TeXequation contained
syn keyword TeXword wedge containedin=TeXequation contained
syn keyword TeXword subset containedin=TeXequation contained
syn keyword TeXword supset containedin=TeXequation contained
syn keyword TeXword subseteq containedin=TeXequation contained
syn keyword TeXword supseteq containedin=TeXequation contained
syn keyword TeXword sup containedin=TeXequation contained
syn keyword TeXword comm containedin=TeXequation contained
syn keyword TeXword circ containedin=TeXequation contained
syn keyword TeXword hat containedin=TeXequation contained
syn keyword TeXword alpha containedin=TeXequation contained
syn keyword TeXword theta containedin=TeXequation contained
syn keyword TeXword tau containedin=TeXequation contained
syn keyword TeXword beta containedin=TeXequation contained
syn keyword TeXword vartheta containedin=TeXequation contained
syn keyword TeXword pi containedin=TeXequation contained
syn keyword TeXword upsilon containedin=TeXequation contained
syn keyword TeXword gamma containedin=TeXequation contained
syn keyword TeXword gamma containedin=TeXequation contained
syn keyword TeXword varpi containedin=TeXequation contained
syn keyword TeXword phi containedin=TeXequation contained
syn keyword TeXword delta containedin=TeXequation contained
syn keyword TeXword kappa containedin=TeXequation contained
syn keyword TeXword rho containedin=TeXequation contained
syn keyword TeXword varphi containedin=TeXequation contained
syn keyword TeXword epsilon containedin=TeXequation contained
syn keyword TeXword lambda containedin=TeXequation contained
syn keyword TeXword varrho containedin=TeXequation contained
syn keyword TeXword chi containedin=TeXequation contained
syn keyword TeXword varepsilon containedin=TeXequation contained
syn keyword TeXword mu containedin=TeXequation contained
syn keyword TeXword sigma containedin=TeXequation contained
syn keyword TeXword psi containedin=TeXequation contained
syn keyword TeXword zeta containedin=TeXequation contained
syn keyword TeXword nu containedin=TeXequation contained
syn keyword TeXword varsigma containedin=TeXequation contained
syn keyword TeXword omega containedin=TeXequation contained
syn keyword TeXword eta containedin=TeXequation contained
syn keyword TeXword xi containedin=TeXequation contained
syn keyword TeXword Gamma containedin=TeXequation contained
syn keyword TeXword Lambda containedin=TeXequation contained
syn keyword TeXword Sigma containedin=TeXequation contained
syn keyword TeXword Psi containedin=TeXequation contained
syn keyword TeXword Delta containedin=TeXequation contained
syn keyword TeXword Xi containedin=TeXequation contained
syn keyword TeXword Upsilon containedin=TeXequation contained
syn keyword TeXword Omega containedin=TeXequation contained
syn keyword TeXword Theta containedin=TeXequation contained
syn keyword TeXword Pi containedin=TeXequation contained
syn keyword TeXword Phi containedin=TeXequation contained
syn keyword TeXword dot containedin=TeXequation contained
syn keyword TeXword ddot containedin=TeXequation contained
syn keyword TeXword dddot containedin=TeXequation contained
syn keyword TeXword cal containedin=TeXequation contained
syn keyword TeXword bb containedin=TeXequation contained
syn keyword TeXwordb docu
"syn keyword TeXwordb emph
syn match TexWordb 'emph\s*\[.*\]'
"syn keyword TeXwordb emph
syn keyword TeXwordb package
hi TeXword ctermbg=20
hi link TeXwordb Todo

syn region TeXaa matchgroup=TeXaa start="section" end="$" contains=TeXlabel
syn region TeXaa matchgroup=TeXaa start="subsection" end="$" contains=TeXlabel
syn region TeXaa matchgroup=TeXaa start="subsubsection" end="$" contains=TeXlabel
syn region TeXaa matchgroup=TeXaa start="paragraph" end="$" contains=TeXlabel
hi link TeXaa airline_x

let b:current_syntax = "tea"
