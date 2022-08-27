ui_print " 
███╗░░░███╗███████╗███╗░░░███╗░█████╗░██████╗░██╗██╗░░██╗
████╗░████║██╔════╝████╗░████║██╔══██╗██╔══██╗░░║╚██╗██╔╝
██╔████╔██║█████╗░░██╔████╔██║██║░░██║██████╔╝██║░╚███╔╝░
██║╚██╔╝██║██╔══╝░░██║╚██╔╝██║██║░░██║██╔══██╗██║░██╔██╗░
██║░╚═╝░██║███████╗██║░╚═╝░██║╚█████╔╝██║░░██║██║██╔╝╚██╗
╚═╝░░░░░╚═╝╚══════╝╚═╝░░░░░╚═╝░╚════╝░╚═╝░░╚═╝╚═╝╚═╝░░╚═╝ "
sleep 1
ui_print " "
ui_print " ▌MODULE VERSION: X2.0 ▌"
ui_print " ▌MODULE AUTHOR: @Kartik728 ▌"
sleep 1
ui_print " "
ui_print " ▌REMOVE ANY OTHER ZRAM SWAPPER MAGISK MODULES TO PREVENT CONFLICTS ▌"
ui_print " "

ZRAM=$TMPDIR/post-fs-data.sh
SKIPMOUNT=false

on_install() {  
  unzip -o "$ZIPFILE" 'addon/*' -d $TMPDIR >&2
  unzip -o "$ZIPFILE" 'common/functions.sh' -d $TMPDIR >&2  
  unzip -o "$ZIPFILE" -x 'META-INF/*' 'common/functions.sh' -d $MODPATH >&2
  
 .  $TMPDIR/functions.sh
 .  $TMPDIR/addon/Volume-Key-Selector/install.sh
 
sleep 1
ui_print " "
ui_print " ▌VOLUME UP = SWITCH , VOLUME DOWN = SELECT ▌"
ui_print " "
ui_print " ▌SELECT ACCORDING TO YOUR DEVICE RAM ▌"
ui_print " "
sleep 1
ui_print " "
ui_print " ▌🆉🆁🅰🅼 🅼🅾🅳🅴🆂 ▌"
ui_print " "
ui_print " [1] ▌DISABLE ZRAM ▌"
ui_print " [2] ▌1 GB ZRAM ▌"
ui_print " [3] ▌2 GB ZRAM ▌"
ui_print " [4] ▌3 GB ZRAM ▌"
ui_print " [5] ▌4 GB ZRAM ▌"
ui_print " [6] ▌5 GB ZRAM ▌"
ui_print " [7] ▌6 GB ZRAM ▌"
ui_print " [8] ▌7 GB ZRAM ▌"
ui_print " [9] ▌8 GB ZRAM ▌"
ui_print " [10] ▌9 GB ZRAM ▌"
ui_print " [11] ▌10 GB ZRAM ▌"
ui_print " [12] ▌11 GB ZRAM ▌"
ui_print " [13] ▌12 GB ZRAM ▌"
ui_print " [14] ▌13 GB ZRAM ▌"
ui_print " [15] ▌14 GB ZRAM ▌"
ui_print " [16] ▌15 GB ZRAM ▌"
sleep 1
ui_print " "
ui_print " ▌SELECT WHAT YOU DESIRE ▌"
ME=1
while true; do
ui_print "  $ME"
	if $VKSEL; then
		ME=$((ME + 1))
	else 
		break
	fi
	if [ $ME -gt 16 ]; then
		ME=1
	fi
done
case $ME in
1 ) MEMORiX="▌DISABLE ZRAM ▌"; echo "zramsize=0" >> $ZRAM;
     echo "
     " >> $ZRAM; echo "zram" >> $ZRAM;;
2 ) MEMORiX="▌1 GB ZRAM ▌"; echo "zramsize=1024MB" >> $ZRAM;
     echo "
     " >> $ZRAM; echo "zram" >> $ZRAM;;
3 ) MEMORiX="▌2 GB ZRAM ▌"; echo "zramsize=2048MB" >> $ZRAM;
     echo "
     " >> $ZRAM; echo "zram" >> $ZRAM;;
4 ) MEMORiX="▌3 GB ZRAM ▌"; echo "zramsize=3072MB" >> $ZRAM;
     echo "
     " >> $ZRAM; echo "zram" >> $ZRAM;;
5 ) MEMORiX="▌4 GB ZRAM ▌"; echo "zramsize=4096MB" >> $ZRAM;
     echo "
     " >> $ZRAM; echo "zram" >> $ZRAM;;
6 ) MEMORiX="▌5 GB ZRAM ▌"; echo "zramsize=5120MB" >> $ZRAM;
     echo "
     " >> $ZRAM; echo "zram" >> $ZRAM;;
7 ) MEMORiX="▌6 GB ZRAM ▌"; echo "zramsize=6144MB" >> $ZRAM;
     echo "
     " >> $ZRAM; echo "zram" >> $ZRAM;;
8 ) MEMORiX="▌7 GB ZRAM ▌"; echo "zramsize=7168MB" >> $ZRAM;
     echo "
     " >> $ZRAM; echo "zram" >> $ZRAM;;
9 ) MEMORiX="▌8 GB ZRAM ▌"; echo "zramsize=8192MB" >> $ZRAM;
     echo "
     " >> $ZRAM; echo "zram" >> $ZRAM;;
10 ) MEMORiX="▌9 GB ZRAM ▌"; echo "zramsize=9216MB" >> $ZRAM;
     echo "
     " >> $ZRAM; echo "zram" >> $ZRAM;;
11 ) MEMORiX="▌10 GB ZRAM ▌"; echo "zramsize=10240MB" >> $ZRAM;
     echo "
     " >> $ZRAM; echo "zram" >> $ZRAM;;
12 ) MEMORiX="▌11 GB ZRAM ▌"; echo "zramsize=11264MB" >> $ZRAM;
     echo "
     " >> $ZRAM; echo "zram" >> $ZRAM;;
13 ) MEMORiX="▌12 GB ZRAM ▌"; echo "zramsize=12288MB" >> $ZRAM;
     echo "
     " >> $ZRAM; echo "zram" >> $ZRAM;;
14 ) MEMORiX="▌13 GB ZRAM ▌"; echo "zramsize=13312MB" >> $ZRAM;
     echo "
     " >> $ZRAM; echo "zram" >> $ZRAM;;
15 ) MEMORiX="▌14 GB ZRAM ▌"; echo "zramsize=14336MB" >> $ZRAM;
     echo "
     " >> $ZRAM; echo "zram" >> $ZRAM;;
16 ) MEMORiX="▌15 GB ZRAM ▌"; echo "zramsize=15360MB" >> $ZRAM;
     echo "
     " >> $ZRAM; echo "zram" >> $ZRAM;;
 esac
ui_print "$MEMORiX"
ui_print "Team TITΛN × Noobies // Link"
}