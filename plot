set size square
set pm3d map
#set dgrid3d 31, 31, 10, gauss 80, 80
set pm3d interpolate 3,3
#set contour
#set cntrparam levels auto 10
set term postscript enhanced color

set xlabel "X / {/Symbol m}m"
set ylabel "Y / {/Symbol m}m"
#set palette negative cubehelix saturation 2
#set palette rgb -21,-22,-23 #hot
set palette rgbformulae -22, -13, 31 # quickgrid
#set palette rgbformulae -33, -13, -10 # rainbow
#set palette rgbformulae -30, -31, -32 # complete heatmap
#matlab palette colors
#set palette defined ( 0 "#000090",\
 #                     1 "#000fff",\
  #                    2 "#0090ff",\
   #                   3 "#0fffee",\
    #                  4 "#90ff70",\
     #                 5 "#ffee00",\
      #                6 "#ff7000",\
       #               7 "#ee0000",\
        #              8 "#7f0000")
set xtics font "Helvetica, 25"
set ytics font "Helvetica, 25"
set xlabel font ",25"
set ylabel font ",25"
set cblabel font ",25"
set cbtics font ",25"
set cblabel offset 4,0
set ylabel offset -2,0
set xlabel offset 0,-1

### SCANS
set size square
set pm3d map
set dgrid3d 31, 31, 10, gauss 50, 50
set pm3d interpolate 2,2
set xtics -1500, 1500, 1500
set ytics -1500, 1500, 1500
set yrange [-1500:1500]
set xrange [-1500:1500]
#set dgrid3d 31, 31, 1
set cblabel "E vs. Fe target / V"

### SCANS
set size square
set pm3d map
set dgrid3d 61, 61, 10, gauss 30, 30
set pm3d interpolate 2,2
set xtics -1500, 1500, 1500
set ytics -1500, 1500, 1500
set yrange [-1500:1500]
set xrange [-1500:1500]
#set dgrid3d 31, 31, 1
set cblabel "E vs. Fe target / V"

#set palette negative cubehelix saturation 2
#set palette rgb -21,-22,-23 #hot
#set palette rgbformulae -22, -13, 31 # quickgrid
#set palette rgbformulae -33, -13, -10 # rainbow
#set palette rgbformulae -30, -31, -32 # complete heatmap
#matlab palette colors
#set palette defined ( 0 "#000090",\
 #                     1 "#000fff",\
  #                    2 "#0090ff",\
   #                   3 "#0fffee",\
    #                  4 "#90ff70",\
     #                 5 "#ffee00",\
      #                6 "#ff7000",\
       #               7 "#ee0000",\
        #              8 "#7f0000")




set object 1 circle at 340,80 size first 640 fc rgb "white" front
set cbrange [0:0.5]
set label "A2" at -1300, 1200 tc rgb "white" font ",40" front
set out "18012406.eps"
splot "18012406.txt" u (($1-30)*50):(-($2-30)*50):($3) notitle
unset label

set label "A2" at -1300, 1200 tc rgb "white" font ",40" front
set out "18012406_deconvoluted.eps"
splot "18012406_deconvoluted.txt" u (($1-30)*50):(-($2-30)*50):($3) notitle
unset label
unset object 1

set object 1 circle at 140,80 size first 640 fc rgb "white" front
set label "A1" at -1300, 1200 tc rgb "white" font ",40" front
set out "18012501.eps"
splot "18012501.txt" u (($1-30)*50):(-($2-30)*50):($3) notitle
unset label

set label "A1" at -1300, 1200 tc rgb "white" font ",40" front
set out "18012501_deconvoluted.eps"
splot "18012501_deconvoluted.txt" u (($1-30)*50):(-($2-30)*50):($3) notitle
unset label

set cblabel "R / G{/Symbol W}"
set cbrange [0:20]
set label "A1" at -1300, 1200 tc rgb "white" font ",40" front
set out "18012501_deconvoluted_r.eps"
splot "18012501_deconvoluted_r.txt" u (($1-30)*50):(-($2-30)*50):($3) notitle
unset label

set object 1 circle at 340,80 size first 640 fc rgb "white" front
set cbrange [0:20]
set label "A2" at -1300, 1200 tc rgb "white" font ",40" front
set out "18012406_deconvoluted_r.eps"
splot "18012406_deconvoluted_r.txt" u (($1-30)*50):(-($2-30)*50):($3) notitle
unset label
unset object 1

