<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="X3" />
        <signal name="X2" />
        <signal name="X0" />
        <signal name="X1" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <signal name="XLXN_35" />
        <signal name="XLXN_36" />
        <signal name="Y0" />
        <signal name="XLXN_38" />
        <signal name="XLXN_39" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="XLXN_43" />
        <signal name="XLXN_44" />
        <signal name="XLXN_45" />
        <signal name="XLXN_46" />
        <signal name="Y2" />
        <signal name="XLXN_48" />
        <signal name="XLXN_49" />
        <signal name="XLXN_50" />
        <signal name="XLXN_51" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <signal name="XLXN_54" />
        <signal name="Y3" />
        <signal name="Y1" />
        <port polarity="Input" name="X3" />
        <port polarity="Input" name="X2" />
        <port polarity="Input" name="X0" />
        <port polarity="Input" name="X1" />
        <port polarity="Output" name="Y0" />
        <port polarity="Output" name="Y2" />
        <port polarity="Output" name="Y3" />
        <port polarity="Output" name="Y1" />
        <blockdef name="and2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
        </blockdef>
        <blockdef name="and3b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
        </blockdef>
        <blockdef name="or5">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="72" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="48" y1="-320" y2="-320" x1="0" />
            <line x2="192" y1="-192" y2="-192" x1="256" />
            <arc ex="192" ey="-192" sx="112" sy="-144" r="88" cx="116" cy="-232" />
            <line x2="48" y1="-240" y2="-240" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <line x2="48" y1="-64" y2="-144" x1="48" />
            <line x2="48" y1="-320" y2="-240" x1="48" />
            <arc ex="112" ey="-240" sx="192" sy="-192" r="88" cx="116" cy="-152" />
            <arc ex="48" ey="-240" sx="48" sy="-144" r="56" cx="16" cy="-192" />
        </blockdef>
        <blockdef name="and3b2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="and3b3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="40" y1="-192" y2="-192" x1="0" />
            <circle r="12" cx="52" cy="-192" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
        </blockdef>
        <blockdef name="and4b3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="40" y1="-192" y2="-192" x1="0" />
            <circle r="12" cx="52" cy="-192" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
        </blockdef>
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
        <blockdef name="or6">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-320" y2="-320" x1="0" />
            <line x2="48" y1="-384" y2="-384" x1="0" />
            <line x2="192" y1="-224" y2="-224" x1="256" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <arc ex="112" ey="-272" sx="192" sy="-224" r="88" cx="116" cy="-184" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
            <arc ex="192" ey="-224" sx="112" sy="-176" r="88" cx="116" cy="-264" />
            <arc ex="48" ey="-272" sx="48" sy="-176" r="56" cx="16" cy="-224" />
            <line x2="48" y1="-272" y2="-272" x1="112" />
            <line x2="48" y1="-64" y2="-176" x1="48" />
            <line x2="48" y1="-272" y2="-384" x1="48" />
        </blockdef>
        <blockdef name="or7">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="72" y1="-256" y2="-256" x1="0" />
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-320" y2="-320" x1="0" />
            <line x2="48" y1="-448" y2="-448" x1="0" />
            <line x2="48" y1="-384" y2="-384" x1="0" />
            <line x2="192" y1="-256" y2="-256" x1="256" />
            <arc ex="112" ey="-304" sx="192" sy="-256" r="88" cx="116" cy="-216" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <arc ex="192" ey="-256" sx="112" sy="-208" r="88" cx="116" cy="-296" />
            <line x2="48" y1="-304" y2="-304" x1="112" />
            <line x2="48" y1="-448" y2="-304" x1="48" />
            <line x2="48" y1="-64" y2="-208" x1="48" />
            <arc ex="48" ey="-304" sx="48" sy="-208" r="56" cx="16" cy="-256" />
        </blockdef>
        <blockdef name="and4b4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="40" y1="-192" y2="-192" x1="0" />
            <circle r="12" cx="52" cy="-192" />
            <line x2="40" y1="-256" y2="-256" x1="0" />
            <circle r="12" cx="52" cy="-256" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="64" y1="-112" y2="-112" x1="144" />
        </blockdef>
        <blockdef name="and4b2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="64" y1="-112" y2="-112" x1="144" />
        </blockdef>
        <block symbolname="and3b3" name="XLXI_24">
            <blockpin signalname="X2" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="X0" name="I2" />
            <blockpin signalname="XLXN_32" name="O" />
        </block>
        <block symbolname="and3b3" name="XLXI_25">
            <blockpin signalname="X3" name="I0" />
            <blockpin signalname="X2" name="I1" />
            <blockpin signalname="X0" name="I2" />
            <blockpin signalname="XLXN_33" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_26">
            <blockpin signalname="X1" name="I0" />
            <blockpin signalname="X0" name="I1" />
            <blockpin signalname="X3" name="I2" />
            <blockpin signalname="XLXN_34" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_27">
            <blockpin signalname="X2" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="X3" name="I2" />
            <blockpin signalname="XLXN_35" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_28">
            <blockpin signalname="X2" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="X0" name="I2" />
            <blockpin signalname="XLXN_36" name="O" />
        </block>
        <block symbolname="or5" name="XLXI_29">
            <blockpin signalname="XLXN_36" name="I0" />
            <blockpin signalname="XLXN_35" name="I1" />
            <blockpin signalname="XLXN_34" name="I2" />
            <blockpin signalname="XLXN_33" name="I3" />
            <blockpin signalname="XLXN_32" name="I4" />
            <blockpin signalname="Y0" name="O" />
        </block>
        <block symbolname="and4b3" name="XLXI_30">
            <blockpin signalname="X3" name="I0" />
            <blockpin signalname="X2" name="I1" />
            <blockpin signalname="X0" name="I2" />
            <blockpin signalname="X1" name="I3" />
            <blockpin signalname="XLXN_38" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_31">
            <blockpin signalname="X1" name="I0" />
            <blockpin signalname="X2" name="I1" />
            <blockpin signalname="XLXN_39" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_32">
            <blockpin signalname="X1" name="I0" />
            <blockpin signalname="X0" name="I1" />
            <blockpin signalname="X3" name="I2" />
            <blockpin signalname="XLXN_40" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_33">
            <blockpin signalname="XLXN_40" name="I0" />
            <blockpin signalname="XLXN_39" name="I1" />
            <blockpin signalname="XLXN_38" name="I2" />
            <blockpin signalname="Y1" name="O" />
        </block>
        <block symbolname="and3b3" name="XLXI_34">
            <blockpin signalname="X3" name="I0" />
            <blockpin signalname="X2" name="I1" />
            <blockpin signalname="X0" name="I2" />
            <blockpin signalname="XLXN_41" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_35">
            <blockpin signalname="X1" name="I0" />
            <blockpin signalname="X0" name="I1" />
            <blockpin signalname="X2" name="I2" />
            <blockpin signalname="XLXN_42" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_36">
            <blockpin signalname="X1" name="I0" />
            <blockpin signalname="X2" name="I1" />
            <blockpin signalname="X3" name="I2" />
            <blockpin signalname="XLXN_43" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_37">
            <blockpin signalname="X2" name="I0" />
            <blockpin signalname="X0" name="I1" />
            <blockpin signalname="X3" name="I2" />
            <blockpin signalname="XLXN_44" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_38">
            <blockpin signalname="X2" name="I0" />
            <blockpin signalname="X0" name="I1" />
            <blockpin signalname="X1" name="I2" />
            <blockpin signalname="XLXN_45" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_39">
            <blockpin signalname="X3" name="I0" />
            <blockpin signalname="X0" name="I1" />
            <blockpin signalname="X1" name="I2" />
            <blockpin signalname="XLXN_46" name="O" />
        </block>
        <block symbolname="or6" name="XLXI_40">
            <blockpin signalname="XLXN_46" name="I0" />
            <blockpin signalname="XLXN_45" name="I1" />
            <blockpin signalname="XLXN_44" name="I2" />
            <blockpin signalname="XLXN_43" name="I3" />
            <blockpin signalname="XLXN_42" name="I4" />
            <blockpin signalname="XLXN_41" name="I5" />
            <blockpin signalname="Y2" name="O" />
        </block>
        <block symbolname="or7" name="XLXI_41">
            <blockpin signalname="XLXN_54" name="I0" />
            <blockpin signalname="XLXN_53" name="I1" />
            <blockpin signalname="XLXN_52" name="I2" />
            <blockpin signalname="XLXN_51" name="I3" />
            <blockpin signalname="XLXN_50" name="I4" />
            <blockpin signalname="XLXN_49" name="I5" />
            <blockpin signalname="XLXN_48" name="I6" />
            <blockpin signalname="Y3" name="O" />
        </block>
        <block symbolname="and4b4" name="XLXI_42">
            <blockpin signalname="X3" name="I0" />
            <blockpin signalname="X2" name="I1" />
            <blockpin signalname="X1" name="I2" />
            <blockpin signalname="X0" name="I3" />
            <blockpin signalname="XLXN_48" name="O" />
        </block>
        <block symbolname="and4b2" name="XLXI_43">
            <blockpin signalname="X3" name="I0" />
            <blockpin signalname="X2" name="I1" />
            <blockpin signalname="X0" name="I2" />
            <blockpin signalname="X1" name="I3" />
            <blockpin signalname="XLXN_49" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_44">
            <blockpin signalname="X1" name="I0" />
            <blockpin signalname="X2" name="I1" />
            <blockpin signalname="X3" name="I2" />
            <blockpin signalname="XLXN_50" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_45">
            <blockpin signalname="X1" name="I0" />
            <blockpin signalname="X0" name="I1" />
            <blockpin signalname="X3" name="I2" />
            <blockpin signalname="XLXN_51" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_46">
            <blockpin signalname="X0" name="I0" />
            <blockpin signalname="X2" name="I1" />
            <blockpin signalname="X3" name="I2" />
            <blockpin signalname="XLXN_52" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_47">
            <blockpin signalname="X0" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="X2" name="I2" />
            <blockpin signalname="XLXN_53" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_48">
            <blockpin signalname="X0" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="X3" name="I2" />
            <blockpin signalname="XLXN_54" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <iomarker fontsize="28" x="832" y="176" name="X0" orien="R0" />
        <iomarker fontsize="28" x="608" y="176" name="X1" orien="R0" />
        <iomarker fontsize="28" x="416" y="176" name="X2" orien="R0" />
        <iomarker fontsize="28" x="192" y="176" name="X3" orien="R0" />
        <branch name="X3">
            <wire x2="192" y1="176" y2="624" x1="192" />
            <wire x2="960" y1="624" y2="624" x1="192" />
            <wire x2="192" y1="624" y2="704" x1="192" />
            <wire x2="960" y1="704" y2="704" x1="192" />
            <wire x2="192" y1="704" y2="912" x1="192" />
            <wire x2="960" y1="912" y2="912" x1="192" />
            <wire x2="192" y1="912" y2="1536" x1="192" />
            <wire x2="960" y1="1536" y2="1536" x1="192" />
            <wire x2="192" y1="1536" y2="1808" x1="192" />
            <wire x2="944" y1="1808" y2="1808" x1="192" />
            <wire x2="192" y1="1808" y2="2176" x1="192" />
            <wire x2="944" y1="2176" y2="2176" x1="192" />
            <wire x2="192" y1="2176" y2="2432" x1="192" />
            <wire x2="944" y1="2432" y2="2432" x1="192" />
            <wire x2="192" y1="2432" y2="2624" x1="192" />
            <wire x2="192" y1="2624" y2="2912" x1="192" />
            <wire x2="192" y1="2912" y2="3168" x1="192" />
            <wire x2="944" y1="3168" y2="3168" x1="192" />
            <wire x2="192" y1="3168" y2="3552" x1="192" />
            <wire x2="944" y1="3552" y2="3552" x1="192" />
            <wire x2="192" y1="3552" y2="3808" x1="192" />
            <wire x2="944" y1="3808" y2="3808" x1="192" />
            <wire x2="192" y1="3808" y2="3888" x1="192" />
            <wire x2="944" y1="3888" y2="3888" x1="192" />
            <wire x2="192" y1="3888" y2="4096" x1="192" />
            <wire x2="944" y1="4096" y2="4096" x1="192" />
            <wire x2="192" y1="4096" y2="4304" x1="192" />
            <wire x2="944" y1="4304" y2="4304" x1="192" />
            <wire x2="192" y1="4304" y2="4688" x1="192" />
            <wire x2="192" y1="4688" y2="5280" x1="192" />
            <wire x2="944" y1="4688" y2="4688" x1="192" />
            <wire x2="944" y1="2624" y2="2624" x1="192" />
        </branch>
        <branch name="X1">
            <wire x2="608" y1="176" y2="336" x1="608" />
            <wire x2="960" y1="336" y2="336" x1="608" />
            <wire x2="608" y1="336" y2="832" x1="608" />
            <wire x2="960" y1="832" y2="832" x1="608" />
            <wire x2="608" y1="832" y2="976" x1="608" />
            <wire x2="960" y1="976" y2="976" x1="608" />
            <wire x2="608" y1="976" y2="1184" x1="608" />
            <wire x2="960" y1="1184" y2="1184" x1="608" />
            <wire x2="608" y1="1184" y2="1344" x1="608" />
            <wire x2="960" y1="1344" y2="1344" x1="608" />
            <wire x2="608" y1="1344" y2="1712" x1="608" />
            <wire x2="944" y1="1712" y2="1712" x1="608" />
            <wire x2="608" y1="1712" y2="1936" x1="608" />
            <wire x2="944" y1="1936" y2="1936" x1="608" />
            <wire x2="608" y1="1936" y2="2368" x1="608" />
            <wire x2="944" y1="2368" y2="2368" x1="608" />
            <wire x2="608" y1="2368" y2="2560" x1="608" />
            <wire x2="944" y1="2560" y2="2560" x1="608" />
            <wire x2="608" y1="2560" y2="2832" x1="608" />
            <wire x2="608" y1="2832" y2="2976" x1="608" />
            <wire x2="608" y1="2976" y2="3048" x1="608" />
            <wire x2="608" y1="3048" y2="3056" x1="608" />
            <wire x2="896" y1="3056" y2="3056" x1="608" />
            <wire x2="608" y1="3056" y2="3424" x1="608" />
            <wire x2="944" y1="3424" y2="3424" x1="608" />
            <wire x2="608" y1="3424" y2="3616" x1="608" />
            <wire x2="944" y1="3616" y2="3616" x1="608" />
            <wire x2="608" y1="3616" y2="4016" x1="608" />
            <wire x2="944" y1="4016" y2="4016" x1="608" />
            <wire x2="608" y1="4016" y2="4224" x1="608" />
            <wire x2="944" y1="4224" y2="4224" x1="608" />
            <wire x2="608" y1="4224" y2="4560" x1="608" />
            <wire x2="944" y1="4560" y2="4560" x1="608" />
            <wire x2="608" y1="4560" y2="4752" x1="608" />
            <wire x2="608" y1="4752" y2="5280" x1="608" />
            <wire x2="944" y1="4752" y2="4752" x1="608" />
            <wire x2="944" y1="2832" y2="2832" x1="608" />
            <wire x2="896" y1="3040" y2="3056" x1="896" />
            <wire x2="944" y1="3040" y2="3040" x1="896" />
        </branch>
        <branch name="X0">
            <wire x2="832" y1="176" y2="272" x1="832" />
            <wire x2="960" y1="272" y2="272" x1="832" />
            <wire x2="832" y1="272" y2="496" x1="832" />
            <wire x2="960" y1="496" y2="496" x1="832" />
            <wire x2="832" y1="496" y2="768" x1="832" />
            <wire x2="960" y1="768" y2="768" x1="832" />
            <wire x2="832" y1="768" y2="1120" x1="832" />
            <wire x2="960" y1="1120" y2="1120" x1="832" />
            <wire x2="832" y1="1120" y2="1408" x1="832" />
            <wire x2="960" y1="1408" y2="1408" x1="832" />
            <wire x2="832" y1="1408" y2="1872" x1="832" />
            <wire x2="944" y1="1872" y2="1872" x1="832" />
            <wire x2="832" y1="1872" y2="2048" x1="832" />
            <wire x2="944" y1="2048" y2="2048" x1="832" />
            <wire x2="832" y1="2048" y2="2304" x1="832" />
            <wire x2="944" y1="2304" y2="2304" x1="832" />
            <wire x2="832" y1="2304" y2="2688" x1="832" />
            <wire x2="944" y1="2688" y2="2688" x1="832" />
            <wire x2="832" y1="2688" y2="2896" x1="832" />
            <wire x2="832" y1="2896" y2="3040" x1="832" />
            <wire x2="832" y1="3040" y2="3104" x1="832" />
            <wire x2="944" y1="3104" y2="3104" x1="832" />
            <wire x2="832" y1="3104" y2="3360" x1="832" />
            <wire x2="944" y1="3360" y2="3360" x1="832" />
            <wire x2="832" y1="3360" y2="3680" x1="832" />
            <wire x2="944" y1="3680" y2="3680" x1="832" />
            <wire x2="832" y1="3680" y2="4160" x1="832" />
            <wire x2="944" y1="4160" y2="4160" x1="832" />
            <wire x2="832" y1="4160" y2="4432" x1="832" />
            <wire x2="944" y1="4432" y2="4432" x1="832" />
            <wire x2="832" y1="4432" y2="4624" x1="832" />
            <wire x2="944" y1="4624" y2="4624" x1="832" />
            <wire x2="832" y1="4624" y2="4816" x1="832" />
            <wire x2="832" y1="4816" y2="5280" x1="832" />
            <wire x2="944" y1="4816" y2="4816" x1="832" />
            <wire x2="944" y1="2896" y2="2896" x1="832" />
        </branch>
        <branch name="X2">
            <wire x2="416" y1="176" y2="400" x1="416" />
            <wire x2="960" y1="400" y2="400" x1="416" />
            <wire x2="416" y1="400" y2="560" x1="416" />
            <wire x2="960" y1="560" y2="560" x1="416" />
            <wire x2="416" y1="560" y2="1040" x1="416" />
            <wire x2="960" y1="1040" y2="1040" x1="416" />
            <wire x2="416" y1="1040" y2="1248" x1="416" />
            <wire x2="960" y1="1248" y2="1248" x1="416" />
            <wire x2="416" y1="1248" y2="1472" x1="416" />
            <wire x2="960" y1="1472" y2="1472" x1="416" />
            <wire x2="416" y1="1472" y2="1648" x1="416" />
            <wire x2="944" y1="1648" y2="1648" x1="416" />
            <wire x2="416" y1="1648" y2="2112" x1="416" />
            <wire x2="944" y1="2112" y2="2112" x1="416" />
            <wire x2="416" y1="2112" y2="2240" x1="416" />
            <wire x2="944" y1="2240" y2="2240" x1="416" />
            <wire x2="416" y1="2240" y2="2496" x1="416" />
            <wire x2="944" y1="2496" y2="2496" x1="416" />
            <wire x2="416" y1="2496" y2="2752" x1="416" />
            <wire x2="944" y1="2752" y2="2752" x1="416" />
            <wire x2="416" y1="2752" y2="2960" x1="416" />
            <wire x2="416" y1="2960" y2="3104" x1="416" />
            <wire x2="416" y1="3104" y2="3488" x1="416" />
            <wire x2="944" y1="3488" y2="3488" x1="416" />
            <wire x2="416" y1="3488" y2="3744" x1="416" />
            <wire x2="944" y1="3744" y2="3744" x1="416" />
            <wire x2="416" y1="3744" y2="3952" x1="416" />
            <wire x2="944" y1="3952" y2="3952" x1="416" />
            <wire x2="416" y1="3952" y2="4368" x1="416" />
            <wire x2="944" y1="4368" y2="4368" x1="416" />
            <wire x2="416" y1="4368" y2="4496" x1="416" />
            <wire x2="416" y1="4496" y2="5280" x1="416" />
            <wire x2="944" y1="4496" y2="4496" x1="416" />
            <wire x2="944" y1="2960" y2="2960" x1="416" />
        </branch>
        <instance x="960" y="464" name="XLXI_24" orien="R0" />
        <instance x="960" y="688" name="XLXI_25" orien="R0" />
        <instance x="960" y="896" name="XLXI_26" orien="R0" />
        <instance x="960" y="1104" name="XLXI_27" orien="R0" />
        <instance x="960" y="1312" name="XLXI_28" orien="R0" />
        <instance x="1568" y="944" name="XLXI_29" orien="R0" />
        <branch name="XLXN_32">
            <wire x2="1568" y1="336" y2="336" x1="1216" />
            <wire x2="1568" y1="336" y2="624" x1="1568" />
        </branch>
        <branch name="XLXN_33">
            <wire x2="1392" y1="560" y2="560" x1="1216" />
            <wire x2="1392" y1="560" y2="688" x1="1392" />
            <wire x2="1568" y1="688" y2="688" x1="1392" />
        </branch>
        <branch name="XLXN_34">
            <wire x2="1392" y1="768" y2="768" x1="1216" />
            <wire x2="1392" y1="752" y2="768" x1="1392" />
            <wire x2="1568" y1="752" y2="752" x1="1392" />
        </branch>
        <branch name="XLXN_35">
            <wire x2="1392" y1="976" y2="976" x1="1216" />
            <wire x2="1392" y1="816" y2="976" x1="1392" />
            <wire x2="1568" y1="816" y2="816" x1="1392" />
        </branch>
        <branch name="XLXN_36">
            <wire x2="1568" y1="1184" y2="1184" x1="1216" />
            <wire x2="1568" y1="880" y2="1184" x1="1568" />
        </branch>
        <branch name="Y0">
            <wire x2="1856" y1="752" y2="752" x1="1824" />
        </branch>
        <iomarker fontsize="28" x="1856" y="752" name="Y0" orien="R0" />
        <instance x="960" y="1600" name="XLXI_30" orien="R0" />
        <instance x="944" y="1776" name="XLXI_31" orien="R0" />
        <instance x="944" y="2000" name="XLXI_32" orien="R0" />
        <instance x="1456" y="1776" name="XLXI_33" orien="R0" />
        <branch name="XLXN_38">
            <wire x2="1456" y1="1440" y2="1440" x1="1216" />
            <wire x2="1456" y1="1440" y2="1584" x1="1456" />
        </branch>
        <branch name="XLXN_39">
            <wire x2="1328" y1="1680" y2="1680" x1="1200" />
            <wire x2="1328" y1="1648" y2="1680" x1="1328" />
            <wire x2="1456" y1="1648" y2="1648" x1="1328" />
        </branch>
        <branch name="XLXN_40">
            <wire x2="1456" y1="1872" y2="1872" x1="1200" />
            <wire x2="1456" y1="1712" y2="1872" x1="1456" />
        </branch>
        <instance x="944" y="2240" name="XLXI_34" orien="R0" />
        <instance x="944" y="2432" name="XLXI_35" orien="R0" />
        <instance x="944" y="2624" name="XLXI_36" orien="R0" />
        <instance x="944" y="2816" name="XLXI_37" orien="R0" />
        <instance x="944" y="3024" name="XLXI_38" orien="R0" />
        <instance x="944" y="3232" name="XLXI_39" orien="R0" />
        <instance x="1488" y="2768" name="XLXI_40" orien="R0" />
        <branch name="XLXN_41">
            <wire x2="1488" y1="2112" y2="2112" x1="1200" />
            <wire x2="1488" y1="2112" y2="2384" x1="1488" />
        </branch>
        <branch name="XLXN_42">
            <wire x2="1344" y1="2304" y2="2304" x1="1200" />
            <wire x2="1344" y1="2304" y2="2448" x1="1344" />
            <wire x2="1488" y1="2448" y2="2448" x1="1344" />
        </branch>
        <branch name="XLXN_43">
            <wire x2="1344" y1="2496" y2="2496" x1="1200" />
            <wire x2="1344" y1="2496" y2="2512" x1="1344" />
            <wire x2="1488" y1="2512" y2="2512" x1="1344" />
        </branch>
        <branch name="XLXN_44">
            <wire x2="1344" y1="2688" y2="2688" x1="1200" />
            <wire x2="1344" y1="2576" y2="2688" x1="1344" />
            <wire x2="1488" y1="2576" y2="2576" x1="1344" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="1360" y1="2896" y2="2896" x1="1200" />
            <wire x2="1360" y1="2640" y2="2896" x1="1360" />
            <wire x2="1488" y1="2640" y2="2640" x1="1360" />
        </branch>
        <branch name="XLXN_46">
            <wire x2="1488" y1="3104" y2="3104" x1="1200" />
            <wire x2="1488" y1="2704" y2="3104" x1="1488" />
        </branch>
        <branch name="Y2">
            <wire x2="1776" y1="2544" y2="2544" x1="1744" />
        </branch>
        <iomarker fontsize="28" x="1776" y="2544" name="Y2" orien="R0" />
        <instance x="1568" y="4400" name="XLXI_41" orien="R0" />
        <instance x="944" y="3616" name="XLXI_42" orien="R0" />
        <instance x="944" y="3872" name="XLXI_43" orien="R0" />
        <instance x="944" y="4080" name="XLXI_44" orien="R0" />
        <instance x="944" y="4288" name="XLXI_45" orien="R0" />
        <instance x="944" y="4496" name="XLXI_46" orien="R0" />
        <instance x="944" y="4688" name="XLXI_47" orien="R0" />
        <instance x="944" y="4880" name="XLXI_48" orien="R0" />
        <branch name="XLXN_48">
            <wire x2="1568" y1="3456" y2="3456" x1="1200" />
            <wire x2="1568" y1="3456" y2="3952" x1="1568" />
        </branch>
        <branch name="XLXN_49">
            <wire x2="1376" y1="3712" y2="3712" x1="1200" />
            <wire x2="1376" y1="3712" y2="4016" x1="1376" />
            <wire x2="1568" y1="4016" y2="4016" x1="1376" />
        </branch>
        <branch name="XLXN_50">
            <wire x2="1360" y1="3952" y2="3952" x1="1200" />
            <wire x2="1360" y1="3952" y2="4080" x1="1360" />
            <wire x2="1568" y1="4080" y2="4080" x1="1360" />
        </branch>
        <branch name="XLXN_51">
            <wire x2="1376" y1="4160" y2="4160" x1="1200" />
            <wire x2="1376" y1="4144" y2="4160" x1="1376" />
            <wire x2="1568" y1="4144" y2="4144" x1="1376" />
        </branch>
        <branch name="XLXN_52">
            <wire x2="1376" y1="4368" y2="4368" x1="1200" />
            <wire x2="1376" y1="4208" y2="4368" x1="1376" />
            <wire x2="1568" y1="4208" y2="4208" x1="1376" />
        </branch>
        <branch name="XLXN_53">
            <wire x2="1392" y1="4560" y2="4560" x1="1200" />
            <wire x2="1392" y1="4272" y2="4560" x1="1392" />
            <wire x2="1568" y1="4272" y2="4272" x1="1392" />
        </branch>
        <branch name="XLXN_54">
            <wire x2="1568" y1="4752" y2="4752" x1="1200" />
            <wire x2="1568" y1="4336" y2="4752" x1="1568" />
        </branch>
        <branch name="Y3">
            <wire x2="1856" y1="4144" y2="4144" x1="1824" />
        </branch>
        <iomarker fontsize="28" x="1856" y="4144" name="Y3" orien="R0" />
        <branch name="Y1">
            <wire x2="1744" y1="1648" y2="1648" x1="1712" />
        </branch>
        <iomarker fontsize="28" x="1744" y="1648" name="Y1" orien="R0" />
    </sheet>
</drawing>