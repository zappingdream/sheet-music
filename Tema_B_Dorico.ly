\header {
  title = "Tema en B Dorico"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4

  <b d fis>1 
  <a cis e> 
  <fis a cis> 
  <e gis b> 
  <e a cis> 
  <fis b d> 
  <fis a cis> 
  <a cis e>
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4

   \tuplet 3/2 { b8 b b } b8. b16 r8 b r16 b r b
   \tuplet 3/2 { a8 a a } a8. a16 r8 a r16 a r a
   \tuplet 3/2 { fis8 fis fis } fis8. fis16 r8 fis r16 fis r fis
   \tuplet 3/2 { g8 g g } g8. g16 r8 g r16 g r g
   \tuplet 3/2 { a8 a a } a8. a16 r8 a r16 a r a
   \tuplet 3/2 { b8 b b } b8. b16 r8 b r16 b r b
   \tuplet 3/2 { fis8 fis fis } fis8. fis16 r8 fis r16 fis r fis
   \tuplet 3/2 { a8 a a } a8. a16 r8 a r16 a r a

}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}