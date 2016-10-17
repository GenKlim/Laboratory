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
        <signal name="X1" />
        <signal name="X0" />
        <signal name="Y0" />
        <signal name="Y1" />
        <signal name="XLXN_12" />
        <signal name="XLXN_15" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="Y2" />
        <signal name="Y3" />
        <signal name="XLXN_28" />
        <signal name="XLXN_30" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <signal name="XLXN_35" />
        <signal name="XLXN_36" />
        <signal name="XLXN_16" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="XLXN_43" />
        <signal name="XLXN_29" />
        <signal name="XLXN_27" />
        <port polarity="Input" name="X3" />
        <port polarity="Input" name="X2" />
        <port polarity="Input" name="X1" />
        <port polarity="Input" name="X0" />
        <port polarity="Output" name="Y0" />
        <port polarity="Output" name="Y1" />
        <port polarity="Output" name="Y2" />
        <port polarity="Output" name="Y3" />
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
        <blockdef name="and4b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
        </blockdef>
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
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
        <blockdef name="and2b2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
        </blockdef>
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
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <block symbolname="or5" name="XLXI_1">
            <blockpin signalname="XLXN_18" name="I0" />
            <blockpin signalname="XLXN_17" name="I1" />
            <blockpin signalname="XLXN_16" name="I2" />
            <blockpin signalname="XLXN_15" name="I3" />
            <blockpin signalname="XLXN_12" name="I4" />
            <blockpin signalname="Y0" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_21">
            <blockpin signalname="XLXN_30" name="I0" />
            <blockpin signalname="XLXN_29" name="I1" />
            <blockpin signalname="XLXN_28" name="I2" />
            <blockpin signalname="XLXN_27" name="I3" />
            <blockpin signalname="Y2" name="O" />
        </block>
        <block symbolname="or5" name="XLXI_22">
            <blockpin signalname="XLXN_36" name="I0" />
            <blockpin signalname="XLXN_35" name="I1" />
            <blockpin signalname="XLXN_34" name="I2" />
            <blockpin signalname="XLXN_33" name="I3" />
            <blockpin signalname="XLXN_32" name="I4" />
            <blockpin signalname="Y3" name="O" />
        </block>
        <block symbolname="and2b2" name="XLXI_34">
            <blockpin signalname="X1" name="I0" />
            <blockpin signalname="X3" name="I1" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_35">
            <blockpin signalname="X3" name="I0" />
            <blockpin signalname="X2" name="I1" />
            <blockpin signalname="X0" name="I2" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="and4b3" name="XLXI_37">
            <blockpin signalname="X0" name="I0" />
            <blockpin signalname="X2" name="I1" />
            <blockpin signalname="X3" name="I2" />
            <blockpin signalname="X1" name="I3" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="and4b1" name="XLXI_38">
            <blockpin signalname="X2" name="I0" />
            <blockpin signalname="X0" name="I1" />
            <blockpin signalname="X1" name="I2" />
            <blockpin signalname="X3" name="I3" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_36">
            <blockpin signalname="X0" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="X2" name="I2" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="and2b2" name="XLXI_40">
            <blockpin signalname="X2" name="I0" />
            <blockpin signalname="X3" name="I1" />
            <blockpin signalname="XLXN_40" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_41">
            <blockpin signalname="X3" name="I0" />
            <blockpin signalname="X0" name="I1" />
            <blockpin signalname="XLXN_41" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_42">
            <blockpin signalname="X0" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="XLXN_42" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_44">
            <blockpin signalname="XLXN_43" name="I0" />
            <blockpin signalname="XLXN_42" name="I1" />
            <blockpin signalname="XLXN_41" name="I2" />
            <blockpin signalname="XLXN_40" name="I3" />
            <blockpin signalname="Y1" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_47">
            <blockpin signalname="X2" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="X3" name="I2" />
            <blockpin signalname="XLXN_30" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_49">
            <blockpin signalname="X3" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="XLXN_32" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_50">
            <blockpin signalname="X0" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="X2" name="I2" />
            <blockpin signalname="XLXN_33" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_51">
            <blockpin signalname="X0" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="X3" name="I2" />
            <blockpin signalname="XLXN_34" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_52">
            <blockpin signalname="X1" name="I0" />
            <blockpin signalname="X2" name="I1" />
            <blockpin signalname="X3" name="I2" />
            <blockpin signalname="XLXN_35" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_53">
            <blockpin signalname="X0" name="I0" />
            <blockpin signalname="X2" name="I1" />
            <blockpin signalname="X3" name="I2" />
            <blockpin signalname="XLXN_36" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_48">
            <blockpin signalname="X0" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="X2" name="I2" />
            <blockpin signalname="XLXN_29" name="O" />
        </block>
        <block symbolname="and3b3" name="XLXI_45">
            <blockpin signalname="X0" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="X2" name="I2" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_54">
            <blockpin signalname="X2" name="I0" />
            <blockpin signalname="X0" name="I1" />
            <blockpin signalname="XLXN_43" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_55">
            <blockpin signalname="X3" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="X2" name="I2" />
            <blockpin signalname="XLXN_28" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1904" y="592" name="XLXI_1" orien="R0" />
        <branch name="X3">
            <wire x2="64" y1="48" y2="80" x1="64" />
            <wire x2="64" y1="80" y2="112" x1="64" />
            <wire x2="64" y1="112" y2="304" x1="64" />
            <wire x2="64" y1="304" y2="384" x1="64" />
            <wire x2="64" y1="384" y2="416" x1="64" />
            <wire x2="64" y1="416" y2="624" x1="64" />
            <wire x2="64" y1="624" y2="704" x1="64" />
            <wire x2="64" y1="704" y2="816" x1="64" />
            <wire x2="64" y1="816" y2="896" x1="64" />
            <wire x2="880" y1="896" y2="896" x1="64" />
            <wire x2="64" y1="896" y2="1408" x1="64" />
            <wire x2="64" y1="1408" y2="1472" x1="64" />
            <wire x2="64" y1="1472" y2="1632" x1="64" />
            <wire x2="64" y1="1632" y2="1696" x1="64" />
            <wire x2="64" y1="1696" y2="2160" x1="64" />
            <wire x2="64" y1="2160" y2="2544" x1="64" />
            <wire x2="64" y1="2544" y2="2656" x1="64" />
            <wire x2="1168" y1="1632" y2="1632" x1="64" />
            <wire x2="1168" y1="1408" y2="1408" x1="64" />
            <wire x2="208" y1="704" y2="704" x1="64" />
            <wire x2="368" y1="384" y2="384" x1="64" />
            <wire x2="864" y1="80" y2="80" x1="64" />
            <wire x2="208" y1="688" y2="704" x1="208" />
            <wire x2="880" y1="688" y2="688" x1="208" />
            <wire x2="368" y1="368" y2="384" x1="368" />
            <wire x2="864" y1="368" y2="368" x1="368" />
        </branch>
        <branch name="X1">
            <wire x2="240" y1="48" y2="144" x1="240" />
            <wire x2="240" y1="144" y2="240" x1="240" />
            <wire x2="240" y1="240" y2="496" x1="240" />
            <wire x2="864" y1="496" y2="496" x1="240" />
            <wire x2="240" y1="496" y2="624" x1="240" />
            <wire x2="240" y1="624" y2="752" x1="240" />
            <wire x2="240" y1="752" y2="880" x1="240" />
            <wire x2="240" y1="880" y2="960" x1="240" />
            <wire x2="240" y1="960" y2="1312" x1="240" />
            <wire x2="240" y1="1312" y2="1536" x1="240" />
            <wire x2="240" y1="1536" y2="1744" x1="240" />
            <wire x2="240" y1="1744" y2="1760" x1="240" />
            <wire x2="240" y1="1760" y2="1904" x1="240" />
            <wire x2="240" y1="1904" y2="2048" x1="240" />
            <wire x2="240" y1="2048" y2="2288" x1="240" />
            <wire x2="240" y1="2288" y2="2416" x1="240" />
            <wire x2="240" y1="2416" y2="2656" x1="240" />
            <wire x2="1168" y1="1744" y2="1744" x1="240" />
            <wire x2="880" y1="960" y2="960" x1="240" />
            <wire x2="880" y1="624" y2="624" x1="240" />
            <wire x2="864" y1="144" y2="144" x1="240" />
        </branch>
        <iomarker fontsize="28" x="64" y="48" name="X3" orien="R270" />
        <iomarker fontsize="28" x="144" y="48" name="X2" orien="R270" />
        <iomarker fontsize="28" x="240" y="48" name="X1" orien="R270" />
        <iomarker fontsize="28" x="304" y="48" name="X0" orien="R270" />
        <branch name="Y0">
            <wire x2="2192" y1="400" y2="400" x1="2160" />
        </branch>
        <iomarker fontsize="28" x="2192" y="400" name="Y0" orien="R0" />
        <branch name="Y1">
            <wire x2="2192" y1="1728" y2="1728" x1="2160" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="1904" y1="112" y2="112" x1="1120" />
            <wire x2="1904" y1="112" y2="272" x1="1904" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="1504" y1="304" y2="304" x1="1120" />
            <wire x2="1504" y1="304" y2="336" x1="1504" />
            <wire x2="1904" y1="336" y2="336" x1="1504" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="1888" y1="720" y2="720" x1="1136" />
            <wire x2="1904" y1="464" y2="464" x1="1888" />
            <wire x2="1888" y1="464" y2="720" x1="1888" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="1904" y1="992" y2="992" x1="1136" />
            <wire x2="1904" y1="528" y2="992" x1="1904" />
        </branch>
        <branch name="X2">
            <wire x2="144" y1="48" y2="176" x1="144" />
            <wire x2="144" y1="176" y2="304" x1="144" />
            <wire x2="864" y1="304" y2="304" x1="144" />
            <wire x2="144" y1="304" y2="432" x1="144" />
            <wire x2="144" y1="432" y2="688" x1="144" />
            <wire x2="144" y1="688" y2="768" x1="144" />
            <wire x2="288" y1="768" y2="768" x1="144" />
            <wire x2="144" y1="768" y2="1088" x1="144" />
            <wire x2="144" y1="1088" y2="1248" x1="144" />
            <wire x2="144" y1="1248" y2="1472" x1="144" />
            <wire x2="144" y1="1472" y2="1824" x1="144" />
            <wire x2="144" y1="1824" y2="1984" x1="144" />
            <wire x2="144" y1="1984" y2="2016" x1="144" />
            <wire x2="144" y1="2016" y2="2032" x1="144" />
            <wire x2="144" y1="2032" y2="2224" x1="144" />
            <wire x2="144" y1="2224" y2="2352" x1="144" />
            <wire x2="144" y1="2352" y2="2656" x1="144" />
            <wire x2="1168" y1="2016" y2="2016" x1="144" />
            <wire x2="1168" y1="1472" y2="1472" x1="144" />
            <wire x2="880" y1="1088" y2="1088" x1="144" />
            <wire x2="864" y1="432" y2="432" x1="144" />
            <wire x2="288" y1="752" y2="768" x1="288" />
            <wire x2="880" y1="752" y2="752" x1="288" />
        </branch>
        <branch name="X0">
            <wire x2="304" y1="48" y2="64" x1="304" />
            <wire x2="304" y1="64" y2="240" x1="304" />
            <wire x2="304" y1="240" y2="368" x1="304" />
            <wire x2="304" y1="368" y2="560" x1="304" />
            <wire x2="864" y1="560" y2="560" x1="304" />
            <wire x2="304" y1="560" y2="816" x1="304" />
            <wire x2="304" y1="816" y2="944" x1="304" />
            <wire x2="304" y1="944" y2="1024" x1="304" />
            <wire x2="304" y1="1024" y2="1376" x1="304" />
            <wire x2="304" y1="1376" y2="1568" x1="304" />
            <wire x2="304" y1="1568" y2="1600" x1="304" />
            <wire x2="304" y1="1600" y2="1808" x1="304" />
            <wire x2="1168" y1="1808" y2="1808" x1="304" />
            <wire x2="304" y1="1808" y2="1920" x1="304" />
            <wire x2="304" y1="1920" y2="1952" x1="304" />
            <wire x2="304" y1="1952" y2="1968" x1="304" />
            <wire x2="304" y1="1968" y2="2096" x1="304" />
            <wire x2="304" y1="2096" y2="2480" x1="304" />
            <wire x2="304" y1="2480" y2="2656" x1="304" />
            <wire x2="1168" y1="1952" y2="1952" x1="304" />
            <wire x2="1168" y1="1568" y2="1568" x1="304" />
            <wire x2="880" y1="1024" y2="1024" x1="304" />
            <wire x2="880" y1="816" y2="816" x1="304" />
            <wire x2="864" y1="240" y2="240" x1="304" />
        </branch>
        <instance x="880" y="880" name="XLXI_37" orien="R0" />
        <instance x="880" y="1152" name="XLXI_38" orien="R0" />
        <branch name="XLXN_16">
            <wire x2="1504" y1="496" y2="496" x1="1120" />
            <wire x2="1504" y1="400" y2="496" x1="1504" />
            <wire x2="1904" y1="400" y2="400" x1="1504" />
        </branch>
        <instance x="864" y="624" name="XLXI_36" orien="R0" />
        <instance x="864" y="432" name="XLXI_35" orien="R0" />
        <instance x="864" y="208" name="XLXI_34" orien="R0" />
        <iomarker fontsize="28" x="2192" y="1728" name="Y1" orien="R0" />
        <instance x="1904" y="1888" name="XLXI_44" orien="R0" />
        <instance x="1168" y="1872" name="XLXI_42" orien="R0" />
        <instance x="1168" y="1696" name="XLXI_41" orien="R0" />
        <instance x="1168" y="1536" name="XLXI_40" orien="R0" />
        <branch name="XLXN_40">
            <wire x2="1904" y1="1440" y2="1440" x1="1424" />
            <wire x2="1904" y1="1440" y2="1632" x1="1904" />
        </branch>
        <branch name="XLXN_41">
            <wire x2="1664" y1="1600" y2="1600" x1="1424" />
            <wire x2="1664" y1="1600" y2="1696" x1="1664" />
            <wire x2="1904" y1="1696" y2="1696" x1="1664" />
        </branch>
        <branch name="XLXN_42">
            <wire x2="1664" y1="1776" y2="1776" x1="1424" />
            <wire x2="1664" y1="1760" y2="1776" x1="1664" />
            <wire x2="1904" y1="1760" y2="1760" x1="1664" />
        </branch>
        <branch name="XLXN_43">
            <wire x2="1904" y1="1984" y2="1984" x1="1424" />
            <wire x2="1904" y1="1824" y2="1984" x1="1904" />
        </branch>
        <instance x="1168" y="2080" name="XLXI_54" orien="R0" />
    </sheet>
    <sheet sheetnum="2" width="3520" height="2720">
        <iomarker fontsize="28" x="112" y="80" name="X3" orien="R270" />
        <iomarker fontsize="28" x="192" y="80" name="X2" orien="R270" />
        <iomarker fontsize="28" x="288" y="80" name="X1" orien="R270" />
        <iomarker fontsize="28" x="352" y="80" name="X0" orien="R270" />
        <instance x="2128" y="2112" name="XLXI_22" orien="R0" />
        <branch name="Y2">
            <wire x2="2400" y1="512" y2="512" x1="2368" />
        </branch>
        <iomarker fontsize="28" x="2400" y="512" name="Y2" orien="R0" />
        <branch name="Y3">
            <wire x2="2416" y1="1920" y2="1920" x1="2384" />
        </branch>
        <iomarker fontsize="28" x="2416" y="1920" name="Y3" orien="R0" />
        <instance x="2112" y="672" name="XLXI_21" orien="R0" />
        <branch name="XLXN_28">
            <wire x2="2096" y1="432" y2="432" x1="1280" />
            <wire x2="2096" y1="432" y2="480" x1="2096" />
            <wire x2="2112" y1="480" y2="480" x1="2096" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="2112" y1="928" y2="928" x1="1264" />
            <wire x2="2112" y1="608" y2="928" x1="2112" />
        </branch>
        <branch name="X1">
            <wire x2="288" y1="80" y2="176" x1="288" />
            <wire x2="288" y1="176" y2="192" x1="288" />
            <wire x2="288" y1="192" y2="432" x1="288" />
            <wire x2="288" y1="432" y2="448" x1="288" />
            <wire x2="288" y1="448" y2="672" x1="288" />
            <wire x2="288" y1="672" y2="768" x1="288" />
            <wire x2="288" y1="768" y2="928" x1="288" />
            <wire x2="288" y1="928" y2="960" x1="288" />
            <wire x2="288" y1="960" y2="1600" x1="288" />
            <wire x2="288" y1="1600" y2="1696" x1="288" />
            <wire x2="288" y1="1696" y2="1856" x1="288" />
            <wire x2="992" y1="1856" y2="1856" x1="288" />
            <wire x2="288" y1="1856" y2="2112" x1="288" />
            <wire x2="288" y1="2112" y2="2160" x1="288" />
            <wire x2="288" y1="2160" y2="2368" x1="288" />
            <wire x2="288" y1="2368" y2="2528" x1="288" />
            <wire x2="288" y1="2528" y2="2688" x1="288" />
            <wire x2="960" y1="2368" y2="2368" x1="288" />
            <wire x2="624" y1="2112" y2="2112" x1="288" />
            <wire x2="992" y1="1600" y2="1600" x1="288" />
            <wire x2="1008" y1="928" y2="928" x1="288" />
            <wire x2="1008" y1="672" y2="672" x1="288" />
            <wire x2="1024" y1="432" y2="432" x1="288" />
            <wire x2="1040" y1="176" y2="176" x1="288" />
            <wire x2="624" y1="2096" y2="2112" x1="624" />
            <wire x2="976" y1="2096" y2="2096" x1="624" />
        </branch>
        <branch name="X3">
            <wire x2="112" y1="80" y2="368" x1="112" />
            <wire x2="112" y1="368" y2="512" x1="112" />
            <wire x2="112" y1="512" y2="608" x1="112" />
            <wire x2="112" y1="608" y2="816" x1="112" />
            <wire x2="112" y1="816" y2="864" x1="112" />
            <wire x2="1008" y1="864" y2="864" x1="112" />
            <wire x2="112" y1="864" y2="1664" x1="112" />
            <wire x2="112" y1="1664" y2="1680" x1="112" />
            <wire x2="112" y1="1680" y2="1792" x1="112" />
            <wire x2="112" y1="1792" y2="2048" x1="112" />
            <wire x2="112" y1="2048" y2="2224" x1="112" />
            <wire x2="112" y1="2224" y2="2240" x1="112" />
            <wire x2="960" y1="2240" y2="2240" x1="112" />
            <wire x2="112" y1="2240" y2="2496" x1="112" />
            <wire x2="112" y1="2496" y2="2512" x1="112" />
            <wire x2="112" y1="2512" y2="2592" x1="112" />
            <wire x2="112" y1="2592" y2="2688" x1="112" />
            <wire x2="976" y1="2496" y2="2496" x1="112" />
            <wire x2="256" y1="2048" y2="2048" x1="112" />
            <wire x2="992" y1="1664" y2="1664" x1="112" />
            <wire x2="560" y1="512" y2="512" x1="112" />
            <wire x2="256" y1="2032" y2="2048" x1="256" />
            <wire x2="976" y1="2032" y2="2032" x1="256" />
            <wire x2="560" y1="496" y2="512" x1="560" />
            <wire x2="1024" y1="496" y2="496" x1="560" />
        </branch>
        <branch name="XLXN_32">
            <wire x2="2128" y1="1632" y2="1632" x1="1248" />
            <wire x2="2128" y1="1632" y2="1792" x1="2128" />
        </branch>
        <branch name="XLXN_33">
            <wire x2="2128" y1="1856" y2="1856" x1="1248" />
        </branch>
        <branch name="XLXN_34">
            <wire x2="1680" y1="2096" y2="2096" x1="1232" />
            <wire x2="1680" y1="1920" y2="2096" x1="1680" />
            <wire x2="2128" y1="1920" y2="1920" x1="1680" />
        </branch>
        <branch name="XLXN_35">
            <wire x2="1696" y1="2304" y2="2304" x1="1216" />
            <wire x2="1696" y1="1984" y2="2304" x1="1696" />
            <wire x2="2128" y1="1984" y2="1984" x1="1696" />
        </branch>
        <branch name="XLXN_36">
            <wire x2="2128" y1="2560" y2="2560" x1="1232" />
            <wire x2="2128" y1="2048" y2="2560" x1="2128" />
        </branch>
        <branch name="X2">
            <wire x2="192" y1="80" y2="112" x1="192" />
            <wire x2="192" y1="112" y2="128" x1="192" />
            <wire x2="192" y1="128" y2="368" x1="192" />
            <wire x2="192" y1="368" y2="384" x1="192" />
            <wire x2="192" y1="384" y2="432" x1="192" />
            <wire x2="192" y1="432" y2="608" x1="192" />
            <wire x2="192" y1="608" y2="624" x1="192" />
            <wire x2="192" y1="624" y2="640" x1="192" />
            <wire x2="192" y1="640" y2="896" x1="192" />
            <wire x2="192" y1="896" y2="992" x1="192" />
            <wire x2="192" y1="992" y2="1632" x1="192" />
            <wire x2="192" y1="1632" y2="1792" x1="192" />
            <wire x2="192" y1="1792" y2="1808" x1="192" />
            <wire x2="192" y1="1808" y2="1856" x1="192" />
            <wire x2="192" y1="1856" y2="2032" x1="192" />
            <wire x2="192" y1="2032" y2="2288" x1="192" />
            <wire x2="192" y1="2288" y2="2304" x1="192" />
            <wire x2="192" y1="2304" y2="2464" x1="192" />
            <wire x2="192" y1="2464" y2="2560" x1="192" />
            <wire x2="192" y1="2560" y2="2688" x1="192" />
            <wire x2="976" y1="2560" y2="2560" x1="192" />
            <wire x2="960" y1="2304" y2="2304" x1="192" />
            <wire x2="992" y1="1792" y2="1792" x1="192" />
            <wire x2="1008" y1="992" y2="992" x1="192" />
            <wire x2="1008" y1="608" y2="608" x1="192" />
            <wire x2="1024" y1="368" y2="368" x1="192" />
            <wire x2="1040" y1="112" y2="112" x1="192" />
        </branch>
        <branch name="X0">
            <wire x2="352" y1="80" y2="240" x1="352" />
            <wire x2="352" y1="240" y2="256" x1="352" />
            <wire x2="352" y1="256" y2="496" x1="352" />
            <wire x2="352" y1="496" y2="704" x1="352" />
            <wire x2="352" y1="704" y2="736" x1="352" />
            <wire x2="352" y1="736" y2="1024" x1="352" />
            <wire x2="352" y1="1024" y2="1568" x1="352" />
            <wire x2="352" y1="1568" y2="1920" x1="352" />
            <wire x2="352" y1="1920" y2="2096" x1="352" />
            <wire x2="352" y1="2096" y2="2160" x1="352" />
            <wire x2="976" y1="2160" y2="2160" x1="352" />
            <wire x2="352" y1="2160" y2="2624" x1="352" />
            <wire x2="352" y1="2624" y2="2656" x1="352" />
            <wire x2="352" y1="2656" y2="2688" x1="352" />
            <wire x2="976" y1="2624" y2="2624" x1="352" />
            <wire x2="992" y1="1920" y2="1920" x1="352" />
            <wire x2="1008" y1="736" y2="736" x1="352" />
            <wire x2="1040" y1="240" y2="240" x1="352" />
        </branch>
        <instance x="1008" y="1056" name="XLXI_47" orien="R0" />
        <branch name="XLXN_29">
            <wire x2="1664" y1="672" y2="672" x1="1264" />
            <wire x2="1664" y1="544" y2="672" x1="1664" />
            <wire x2="2096" y1="544" y2="544" x1="1664" />
            <wire x2="2112" y1="544" y2="544" x1="2096" />
        </branch>
        <instance x="1008" y="800" name="XLXI_48" orien="R0" />
        <branch name="XLXN_27">
            <wire x2="2128" y1="176" y2="176" x1="1296" />
            <wire x2="2128" y1="176" y2="400" x1="2128" />
            <wire x2="2128" y1="400" y2="400" x1="2112" />
            <wire x2="2112" y1="400" y2="416" x1="2112" />
        </branch>
        <instance x="1040" y="304" name="XLXI_45" orien="R0" />
        <instance x="992" y="1728" name="XLXI_49" orien="R0" />
        <instance x="992" y="1984" name="XLXI_50" orien="R0" />
        <instance x="976" y="2224" name="XLXI_51" orien="R0" />
        <instance x="960" y="2432" name="XLXI_52" orien="R0" />
        <instance x="976" y="2688" name="XLXI_53" orien="R0" />
        <instance x="1024" y="560" name="XLXI_55" orien="R0" />
    </sheet>
</drawing>