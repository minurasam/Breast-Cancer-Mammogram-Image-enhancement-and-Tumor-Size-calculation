#############################################################################
# Generated by PAGE version 5.6
#  in conjunction with Tcl version 8.6
#  Nov 14, 2020 09:08:03 PM IST  platform: Windows NT
set vTcl(timestamp) ""
if {![info exists vTcl(borrow)]} {
    tk_messageBox -title Error -message  "You must open project files from within PAGE."
    exit}


if {!$vTcl(borrow) && !$vTcl(template)} {

set vTcl(actual_gui_font_dft_desc)  TkDefaultFont
set vTcl(actual_gui_font_dft_name)  TkDefaultFont
set vTcl(actual_gui_font_text_desc)  TkTextFont
set vTcl(actual_gui_font_text_name)  TkTextFont
set vTcl(actual_gui_font_fixed_desc)  TkFixedFont
set vTcl(actual_gui_font_fixed_name)  TkFixedFont
set vTcl(actual_gui_font_menu_desc)  TkMenuFont
set vTcl(actual_gui_font_menu_name)  TkMenuFont
set vTcl(actual_gui_font_tooltip_desc)  TkDefaultFont
set vTcl(actual_gui_font_tooltip_name)  TkDefaultFont
set vTcl(actual_gui_font_treeview_desc)  TkDefaultFont
set vTcl(actual_gui_font_treeview_name)  TkDefaultFont
set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_analog) #ececec
set vTcl(actual_gui_menu_analog) #ececec
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) #d9d9d9
set vTcl(analog_color_p) #d9d9d9
set vTcl(analog_color_m) #ececec
set vTcl(active_fg) #000000
set vTcl(actual_gui_menu_active_bg)  #ececec
set vTcl(actual_gui_menu_active_fg)  #000000
set vTcl(pr,autoalias) 1
set vTcl(pr,relative_placement) 1
set vTcl(mode) Relative
}




proc vTclWindow.top44 {base} {
    global vTcl
    if {$base == ""} {
        set base .top44
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -menu "$top.m45" -background $vTcl(actual_gui_bg) 
    wm focusmodel $top passive
    wm geometry $top 1631x902+218+27
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 4104 1055
    wm minsize $top 148 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    wm title $top "New Toplevel"
    vTcl:DefineAlias "$top" "Toplevel1" vTcl:Toplevel:WidgetProc "" 1
    set vTcl(real_top) {}
    vTcl:withBusyCursor {
    menu $top.m45 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background $vTcl(pr,menubgcolor) -font TkMenuFont \
        -foreground $vTcl(pr,menufgcolor) -tearoff 0 
    frame $top.fra46 \
        -borderwidth 2 -relief groove -background $vTcl(actual_gui_bg) \
        -height 825 -width 1555 
    vTcl:DefineAlias "$top.fra46" "Frame1" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.fra46
    label $site_3_0.lab47 \
        -background #408080 -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI} -size 16 -weight bold -slant italic -underline 0 -overstrike 0} \
        -foreground #ffffff \
        -text {Mammogram Image Enhancement, Area Calculation and Predict Tumor Stage} 
    vTcl:DefineAlias "$site_3_0.lab47" "Label1" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.lab47
    label $site_3_0.lab48 \
        -background #ffffff -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) 
    vTcl:DefineAlias "$site_3_0.lab48" "browselabel" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.lab48
    label $site_3_0.lab49 \
        -activebackground #f9f9f9 -activeforeground black -background #ffffff \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black 
    vTcl:DefineAlias "$site_3_0.lab49" "enhanceimage" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.lab49
    label $site_3_0.lab50 \
        -activebackground #f9f9f9 -activeforeground black -background #ffffff \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black 
    vTcl:DefineAlias "$site_3_0.lab50" "segImg" vTcl:WidgetProc "Toplevel1" 1
    vTcl:copy_lock $site_3_0.lab50
    button $site_3_0.but51 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -command browse \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text {Browse Image} 
    vTcl:DefineAlias "$site_3_0.but51" "browseimg" vTcl:WidgetProc "Toplevel1" 1
    button $site_3_0.but53 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -command enhance \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text {Enhance Image} 
    vTcl:DefineAlias "$site_3_0.but53" "enhance" vTcl:WidgetProc "Toplevel1" 1
    button $site_3_0.but54 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -command segment \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text {Segment Image} 
    vTcl:DefineAlias "$site_3_0.but54" "segment" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab55 \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -text {Opening :} 
    vTcl:DefineAlias "$site_3_0.lab55" "opening" vTcl:WidgetProc "Toplevel1" 1
    scale $site_3_0.sca57 \
        -activebackground $vTcl(analog_color_m) \
        -background $vTcl(actual_gui_bg) -bigincrement 0.0 \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) -from 0.0 \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -length 100 -orient horizontal -resolution 1.0 -tickinterval 0.0 \
        -to 100.0 -troughcolor #d9d9d9 
    vTcl:DefineAlias "$site_3_0.sca57" "Scale1" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab58 \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -text {Closing : } 
    vTcl:DefineAlias "$site_3_0.lab58" "Label2" vTcl:WidgetProc "Toplevel1" 1
    scale $site_3_0.sca59 \
        -activebackground $vTcl(analog_color_m) \
        -background $vTcl(actual_gui_bg) -bigincrement 0.0 \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) -from 0.0 \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -length 100 -orient horizontal -resolution 1.0 -tickinterval 0.0 \
        -to 100.0 -troughcolor #d9d9d9 
    vTcl:DefineAlias "$site_3_0.sca59" "Scale2" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab60 \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -text {Erosion : } 
    vTcl:DefineAlias "$site_3_0.lab60" "Label3" vTcl:WidgetProc "Toplevel1" 1
    scale $site_3_0.sca61 \
        -activebackground $vTcl(analog_color_m) \
        -background $vTcl(actual_gui_bg) -bigincrement 0.0 \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) -from 0.0 \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -length 100 -orient horizontal -resolution 1.0 -tickinterval 0.0 \
        -to 100.0 -troughcolor #d9d9d9 
    vTcl:DefineAlias "$site_3_0.sca61" "Scale3" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab62 \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -text {Diameter of the Tumor :} 
    vTcl:DefineAlias "$site_3_0.lab62" "Label4" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab63 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text {2d Area of the Tumor :} 
    vTcl:DefineAlias "$site_3_0.lab63" "Label4_1" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab64 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text {Tumor stage : } 
    vTcl:DefineAlias "$site_3_0.lab64" "Label4_2" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab65 \
        -activebackground #f9f9f9 -activeforeground black -background #ffffff \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black 
    vTcl:DefineAlias "$site_3_0.lab65" "diameter" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab66 \
        -activebackground #f9f9f9 -activeforeground black -background #ffffff \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black 
    vTcl:DefineAlias "$site_3_0.lab66" "area" vTcl:WidgetProc "Toplevel1" 1
    label $site_3_0.lab67 \
        -activebackground #f9f9f9 -activeforeground black -background #ffffff \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black 
    vTcl:DefineAlias "$site_3_0.lab67" "tumorstage" vTcl:WidgetProc "Toplevel1" 1
    place $site_3_0.lab47 \
        -in $site_3_0 -x 0 -relx 0.014 -y 0 -rely 0.011 -width 0 \
        -relwidth 0.972 -height 0 -relheight 0.064 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab48 \
        -in $site_3_0 -x 0 -relx 0.019 -y 0 -rely 0.114 -width 0 \
        -relwidth 0.297 -height 0 -relheight 0.463 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab49 \
        -in $site_3_0 -x 0 -relx 0.347 -y 0 -rely 0.114 -width 0 \
        -relwidth 0.296 -height 0 -relheight 0.463 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab50 \
        -in $site_3_0 -x 0 -relx 0.682 -y 0 -rely 0.114 -width 0 \
        -relwidth 0.296 -height 0 -relheight 0.463 -anchor nw \
        -bordermode ignore 
    place $site_3_0.but51 \
        -in $site_3_0 -x 0 -relx 0.039 -y 0 -rely 0.604 -width 366 \
        -relwidth 0 -height 33 -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.but53 \
        -in $site_3_0 -x 0 -relx 0.373 -y 0 -rely 0.604 -width 366 \
        -relwidth 0 -height 33 -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.but54 \
        -in $site_3_0 -x 0 -relx 0.723 -y 0 -rely 0.595 -width 366 \
        -relwidth 0 -height 33 -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.lab55 \
        -in $site_3_0 -x 0 -relx 0.355 -y 0 -rely 0.686 -width 0 \
        -relwidth 0.123 -height 0 -relheight 0.032 -anchor nw \
        -bordermode ignore 
    place $site_3_0.sca57 \
        -in $site_3_0 -x 0 -relx 0.48 -y 0 -rely 0.664 -width 0 \
        -relwidth 0.145 -height 0 -relheight 0.054 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab58 \
        -in $site_3_0 -x 0 -relx 0.387 -y 0 -rely 0.767 -width 0 \
        -relwidth 0.069 -height 0 -relheight 0.03 -anchor nw \
        -bordermode ignore 
    place $site_3_0.sca59 \
        -in $site_3_0 -x 769 -y 650 -width 236 -relwidth 0 -height 0 \
        -relheight 0.054 -anchor nw -bordermode ignore 
    place $site_3_0.lab60 \
        -in $site_3_0 -x 0 -relx 0.387 -y 0 -rely 0.847 -width 0 \
        -relwidth 0.07 -height 0 -relheight 0.031 -anchor nw \
        -bordermode ignore 
    place $site_3_0.sca61 \
        -in $site_3_0 -x 769 -y 720 -width 236 -relwidth 0 -height 0 \
        -relheight 0.054 -anchor nw -bordermode ignore 
    place $site_3_0.lab62 \
        -in $site_3_0 -x 0 -relx 0.031 -y 0 -rely 0.744 -width 0 \
        -relwidth 0.107 -height 0 -relheight 0.03 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab63 \
        -in $site_3_0 -x 0 -relx 0.031 -y 0 -rely 0.812 -width 0 \
        -relwidth 0.107 -height 0 -relheight 0.03 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab64 \
        -in $site_3_0 -x 0 -relx 0.05 -y 0 -rely 0.881 -width 0 \
        -relwidth 0.107 -height 0 -relheight 0.03 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab65 \
        -in $site_3_0 -x 0 -relx 0.15 -y 0 -rely 0.744 -width 0 \
        -relwidth 0.188 -height 0 -relheight 0.031 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab66 \
        -in $site_3_0 -x 0 -relx 0.15 -y 0 -rely 0.812 -width 0 \
        -relwidth 0.188 -height 0 -relheight 0.031 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab67 \
        -in $site_3_0 -x 0 -relx 0.15 -y 0 -rely 0.881 -width 0 \
        -relwidth 0.188 -height 0 -relheight 0.031 -anchor nw \
        -bordermode ignore 
    vTcl:copy_lock $top.fra46
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.fra46 \
        -in $top -x 0 -relx 0.006 -y 0 -rely 0.011 -width 0 -relwidth 0.983 \
        -height 0 -relheight 0.969 -anchor nw -bordermode ignore 
    } ;# end vTcl:withBusyCursor 

    vTcl:FireEvent $base <<Ready>>
}

set btop ""
if {$vTcl(borrow)} {
    set btop .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop $vTcl(tops)] != -1} {
        set btop .bor[expr int([expr rand() * 100])]
    }
}
set vTcl(btop) $btop
Window show .
Window show .top44 $btop
if {$vTcl(borrow)} {
    $btop configure -background plum
}
