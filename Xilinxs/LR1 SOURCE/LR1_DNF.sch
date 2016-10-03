<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="X3" />
        <signal name="X1" />
        <signal name="X0" />
        <signal name="XLXN_24" />
        <signal name="XLXN_29" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <signal name="XLXN_35" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="XLXN_42" />
        <signal name="XLXN_45" />
        <signal name="XLXN_50" />
        <signal name="XLXN_51" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <signal name="XLXN_54" />
        <signal name="XLXN_55" />
        <signal name="Y3" />
        <signal name="Y2" />
        <signal name="XLXN_65" />
        <signal name="X2" />
        <signal name="XLXN_85" />
        <signal name="XLXN_86" />
        <signal name="XLXN_87" />
        <signal name="XLXN_89" />
        <signal name="XLXN_90" />
        <signal name="XLXN_91" />
        <signal name="XLXN_92" />
        <signal name="XLXN_93" />
        <signal name="Y1" />
        <signal name="Y0" />
        <signal name="XLXN_97" />
        <port polarity="Input" name="X3" />
        <port polarity="Input" name="X1" />
        <port polarity="Input" name="X0" />
        <port polarity="Output" name="Y3" />
        <port polarity="Output" name="Y2" />
        <port polarity="Input" name="X2" />
        <port polarity="Output" name="Y1" />
        <port polarity="Output" name="Y0" />
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
        <block symbolname="and2b1" name="XLXI_1">
            <blockpin signalname="X1" name="I0" />
            <blockpin signalname="X2" name="I1" />
            <blockpin signalname="XLXN_29" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_3">
            <blockpin signalname="X1" name="I0" />
            <blockpin signalname="X0" name="I1" />
            <blockpin signalname="X3" name="I2" />
            <blockpin signalname="XLXN_34" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_4">
            <blockpin signalname="X0" name="I0" />
            <blockpin signalname="X3" name="I1" />
            <blockpin signalname="X2" name="I2" />
            <blockpin signalname="XLXN_35" name="O" />
        </block>
        <block symbolname="and4b2" name="XLXI_5">
            <blockpin signalname="X2" name="I0" />
            <blockpin signalname="X3" name="I1" />
            <blockpin signalname="X0" name="I2" />
            <blockpin signalname="X1" name="I3" />
            <blockpin signalname="XLXN_36" name="O" />
        </block>
        <block symbolname="and4b2" name="XLXI_6">
            <blockpin signalname="X0" name="I0" />
            <blockpin signalname="X2" name="I1" />
            <blockpin signalname="X1" name="I2" />
            <blockpin signalname="X3" name="I3" />
            <blockpin signalname="XLXN_37" name="O" />
        </block>
        <block symbolname="or6" name="XLXI_8">
            <blockpin signalname="XLXN_37" name="I0" />
            <blockpin signalname="XLXN_36" name="I1" />
            <blockpin signalname="XLXN_35" name="I2" />
            <blockpin signalname="XLXN_34" name="I3" />
            <blockpin signalname="XLXN_33" name="I4" />
            <blockpin signalname="XLXN_29" name="I5" />
            <blockpin signalname="Y3" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_9">
            <blockpin signalname="X1" name="I0" />
            <blockpin signalname="X2" name="I1" />
            <blockpin signalname="X3" name="I2" />
            <blockpin signalname="XLXN_51" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_10">
            <blockpin signalname="X2" name="I0" />
            <blockpin signalname="X0" name="I1" />
            <blockpin signalname="X3" name="I2" />
            <blockpin signalname="XLXN_52" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_11">
            <blockpin signalname="X1" name="I0" />
            <blockpin signalname="X0" name="I1" />
            <blockpin signalname="X3" name="I2" />
            <blockpin signalname="XLXN_50" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_12">
            <blockpin signalname="X1" name="I0" />
            <blockpin signalname="X2" name="I1" />
            <blockpin signalname="X0" name="I2" />
            <blockpin signalname="XLXN_53" name="O" />
        </block>
        <block symbolname="and4b3" name="XLXI_13">
            <blockpin signalname="X0" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="X3" name="I2" />
            <blockpin signalname="X2" name="I3" />
            <blockpin signalname="XLXN_55" name="O" />
        </block>
        <block symbolname="and4b1" name="XLXI_14">
            <blockpin signalname="X3" name="I0" />
            <blockpin signalname="X0" name="I1" />
            <blockpin signalname="X1" name="I2" />
            <blockpin signalname="X2" name="I3" />
            <blockpin signalname="XLXN_54" name="O" />
        </block>
        <block symbolname="or6" name="XLXI_15">
            <blockpin signalname="XLXN_54" name="I0" />
            <blockpin signalname="XLXN_55" name="I1" />
            <blockpin signalname="XLXN_53" name="I2" />
            <blockpin signalname="XLXN_50" name="I3" />
            <blockpin signalname="XLXN_52" name="I4" />
            <blockpin signalname="XLXN_51" name="I5" />
            <blockpin signalname="Y2" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_30">
            <blockpin signalname="X3" name="I0" />
            <blockpin signalname="X0" name="I1" />
            <blockpin signalname="X1" name="I2" />
            <blockpin signalname="XLXN_85" name="O" />
        </block>
        <block symbolname="and4b3" name="XLXI_32">
            <blockpin signalname="X0" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="X3" name="I2" />
            <blockpin signalname="X2" name="I3" />
            <blockpin signalname="XLXN_87" name="O" />
        </block>
        <block symbolname="and4b2" name="XLXI_33">
            <blockpin signalname="X1" name="I0" />
            <blockpin signalname="X2" name="I1" />
            <blockpin signalname="X0" name="I2" />
            <blockpin signalname="X3" name="I3" />
            <blockpin signalname="XLXN_89" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_34">
            <blockpin signalname="X1" name="I0" />
            <blockpin signalname="X2" name="I1" />
            <blockpin signalname="X3" name="I2" />
            <blockpin signalname="XLXN_90" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_35">
            <blockpin signalname="X1" name="I0" />
            <blockpin signalname="X2" name="I1" />
            <blockpin signalname="X0" name="I2" />
            <blockpin signalname="XLXN_91" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_36">
            <blockpin signalname="X3" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="X2" name="I2" />
            <blockpin signalname="XLXN_92" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_37">
            <blockpin signalname="X0" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="X3" name="I2" />
            <blockpin signalname="XLXN_93" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_38">
            <blockpin signalname="XLXN_89" name="I0" />
            <blockpin signalname="XLXN_87" name="I1" />
            <blockpin signalname="XLXN_86" name="I2" />
            <blockpin signalname="XLXN_85" name="I3" />
            <blockpin signalname="Y1" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_39">
            <blockpin signalname="XLXN_93" name="I0" />
            <blockpin signalname="XLXN_92" name="I1" />
            <blockpin signalname="XLXN_91" name="I2" />
            <blockpin signalname="XLXN_90" name="I3" />
            <blockpin signalname="Y0" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_40">
            <blockpin signalname="X0" name="I0" />
            <blockpin signalname="X2" name="I1" />
            <blockpin signalname="X1" name="I2" />
            <blockpin signalname="XLXN_86" name="O" />
        </block>
        <block symbolname="and3b3" name="XLXI_41">
            <blockpin signalname="X1" name="I0" />
            <blockpin signalname="X3" name="I1" />
            <blockpin signalname="X0" name="I2" />
            <blockpin signalname="XLXN_33" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="1900" height="2688">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="416" y="304" name="XLXI_1" orien="R0" />
        <instance x="416" y="880" name="XLXI_4" orien="R0" />
        <instance x="416" y="1136" name="XLXI_5" orien="R0" />
        <instance x="416" y="1392" name="XLXI_6" orien="R0" />
        <branch name="X1">
            <wire x2="208" y1="128" y2="240" x1="208" />
            <wire x2="416" y1="240" y2="240" x1="208" />
            <wire x2="208" y1="240" y2="432" x1="208" />
            <wire x2="416" y1="432" y2="432" x1="208" />
            <wire x2="208" y1="432" y2="624" x1="208" />
            <wire x2="208" y1="624" y2="880" x1="208" />
            <wire x2="416" y1="880" y2="880" x1="208" />
            <wire x2="208" y1="880" y2="1200" x1="208" />
            <wire x2="416" y1="1200" y2="1200" x1="208" />
            <wire x2="208" y1="1200" y2="1520" x1="208" />
            <wire x2="416" y1="1520" y2="1520" x1="208" />
            <wire x2="208" y1="1520" y2="1904" x1="208" />
            <wire x2="208" y1="1904" y2="2096" x1="208" />
            <wire x2="416" y1="2096" y2="2096" x1="208" />
            <wire x2="208" y1="2096" y2="2288" x1="208" />
            <wire x2="416" y1="2288" y2="2288" x1="208" />
            <wire x2="208" y1="2288" y2="2480" x1="208" />
            <wire x2="416" y1="2480" y2="2480" x1="208" />
            <wire x2="416" y1="1904" y2="1904" x1="208" />
            <wire x2="416" y1="624" y2="624" x1="208" />
        </branch>
        <branch name="X0">
            <wire x2="272" y1="128" y2="304" x1="272" />
            <wire x2="416" y1="304" y2="304" x1="272" />
            <wire x2="272" y1="304" y2="560" x1="272" />
            <wire x2="272" y1="560" y2="816" x1="272" />
            <wire x2="416" y1="816" y2="816" x1="272" />
            <wire x2="272" y1="816" y2="944" x1="272" />
            <wire x2="416" y1="944" y2="944" x1="272" />
            <wire x2="272" y1="944" y2="1328" x1="272" />
            <wire x2="416" y1="1328" y2="1328" x1="272" />
            <wire x2="272" y1="1328" y2="1648" x1="272" />
            <wire x2="416" y1="1648" y2="1648" x1="272" />
            <wire x2="272" y1="1648" y2="1840" x1="272" />
            <wire x2="272" y1="1840" y2="1968" x1="272" />
            <wire x2="416" y1="1968" y2="1968" x1="272" />
            <wire x2="272" y1="1968" y2="2352" x1="272" />
            <wire x2="416" y1="2352" y2="2352" x1="272" />
            <wire x2="272" y1="2352" y2="2544" x1="272" />
            <wire x2="416" y1="2544" y2="2544" x1="272" />
            <wire x2="416" y1="1840" y2="1840" x1="272" />
            <wire x2="416" y1="560" y2="560" x1="272" />
        </branch>
        <iomarker fontsize="28" x="80" y="128" name="X3" orien="R270" />
        <iomarker fontsize="28" x="208" y="128" name="X1" orien="R270" />
        <iomarker fontsize="28" x="272" y="128" name="X0" orien="R270" />
        <branch name="XLXN_35">
            <wire x2="704" y1="752" y2="752" x1="672" />
            <wire x2="704" y1="688" y2="752" x1="704" />
            <wire x2="800" y1="688" y2="688" x1="704" />
        </branch>
        <branch name="XLXN_37">
            <wire x2="800" y1="1232" y2="1232" x1="672" />
            <wire x2="800" y1="816" y2="1232" x1="800" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="800" y1="208" y2="208" x1="672" />
            <wire x2="800" y1="208" y2="496" x1="800" />
        </branch>
        <instance x="800" y="880" name="XLXI_8" orien="R0" />
        <branch name="XLXN_33">
            <wire x2="752" y1="368" y2="368" x1="672" />
            <wire x2="752" y1="368" y2="560" x1="752" />
            <wire x2="800" y1="560" y2="560" x1="752" />
        </branch>
        <branch name="XLXN_36">
            <wire x2="752" y1="976" y2="976" x1="672" />
            <wire x2="800" y1="752" y2="752" x1="752" />
            <wire x2="752" y1="752" y2="976" x1="752" />
        </branch>
        <branch name="XLXN_34">
            <wire x2="704" y1="560" y2="560" x1="672" />
            <wire x2="704" y1="560" y2="624" x1="704" />
            <wire x2="800" y1="624" y2="624" x1="704" />
        </branch>
        <instance x="416" y="688" name="XLXI_3" orien="R0" />
        <instance x="416" y="1584" name="XLXI_9" orien="R0" />
        <instance x="416" y="1776" name="XLXI_10" orien="R0" />
        <instance x="416" y="2160" name="XLXI_12" orien="R0" />
        <instance x="416" y="2416" name="XLXI_13" orien="R0" />
        <instance x="416" y="2672" name="XLXI_14" orien="R0" />
        <instance x="800" y="2160" name="XLXI_15" orien="R0" />
        <branch name="X3">
            <wire x2="80" y1="128" y2="368" x1="80" />
            <wire x2="416" y1="368" y2="368" x1="80" />
            <wire x2="80" y1="368" y2="496" x1="80" />
            <wire x2="80" y1="496" y2="752" x1="80" />
            <wire x2="80" y1="752" y2="1008" x1="80" />
            <wire x2="416" y1="1008" y2="1008" x1="80" />
            <wire x2="80" y1="1008" y2="1136" x1="80" />
            <wire x2="416" y1="1136" y2="1136" x1="80" />
            <wire x2="80" y1="1136" y2="1392" x1="80" />
            <wire x2="416" y1="1392" y2="1392" x1="80" />
            <wire x2="80" y1="1392" y2="1584" x1="80" />
            <wire x2="416" y1="1584" y2="1584" x1="80" />
            <wire x2="80" y1="1584" y2="1776" x1="80" />
            <wire x2="80" y1="1776" y2="2224" x1="80" />
            <wire x2="80" y1="2224" y2="2608" x1="80" />
            <wire x2="416" y1="2608" y2="2608" x1="80" />
            <wire x2="416" y1="2224" y2="2224" x1="80" />
            <wire x2="416" y1="1776" y2="1776" x1="80" />
            <wire x2="416" y1="752" y2="752" x1="80" />
            <wire x2="416" y1="496" y2="496" x1="80" />
        </branch>
        <instance x="416" y="1968" name="XLXI_11" orien="R0" />
        <branch name="XLXN_50">
            <wire x2="704" y1="1840" y2="1840" x1="672" />
            <wire x2="704" y1="1840" y2="1904" x1="704" />
            <wire x2="800" y1="1904" y2="1904" x1="704" />
        </branch>
        <branch name="XLXN_51">
            <wire x2="800" y1="1456" y2="1456" x1="672" />
            <wire x2="800" y1="1456" y2="1776" x1="800" />
        </branch>
        <branch name="XLXN_52">
            <wire x2="752" y1="1648" y2="1648" x1="672" />
            <wire x2="752" y1="1648" y2="1840" x1="752" />
            <wire x2="800" y1="1840" y2="1840" x1="752" />
        </branch>
        <branch name="XLXN_53">
            <wire x2="704" y1="2032" y2="2032" x1="672" />
            <wire x2="704" y1="1968" y2="2032" x1="704" />
            <wire x2="800" y1="1968" y2="1968" x1="704" />
        </branch>
        <branch name="XLXN_54">
            <wire x2="800" y1="2512" y2="2512" x1="672" />
            <wire x2="800" y1="2096" y2="2512" x1="800" />
        </branch>
        <branch name="XLXN_55">
            <wire x2="752" y1="2256" y2="2256" x1="672" />
            <wire x2="752" y1="2032" y2="2256" x1="752" />
            <wire x2="800" y1="2032" y2="2032" x1="752" />
        </branch>
        <branch name="Y3">
            <wire x2="1200" y1="656" y2="656" x1="1056" />
        </branch>
        <iomarker fontsize="28" x="1200" y="656" name="Y3" orien="R0" />
        <branch name="Y2">
            <wire x2="1200" y1="1936" y2="1936" x1="1056" />
        </branch>
        <iomarker fontsize="28" x="1200" y="1936" name="Y2" orien="R0" />
        <branch name="X2">
            <wire x2="144" y1="128" y2="176" x1="144" />
            <wire x2="144" y1="176" y2="688" x1="144" />
            <wire x2="144" y1="688" y2="1072" x1="144" />
            <wire x2="144" y1="1072" y2="1264" x1="144" />
            <wire x2="416" y1="1264" y2="1264" x1="144" />
            <wire x2="144" y1="1264" y2="1456" x1="144" />
            <wire x2="144" y1="1456" y2="1712" x1="144" />
            <wire x2="144" y1="1712" y2="2032" x1="144" />
            <wire x2="144" y1="2032" y2="2160" x1="144" />
            <wire x2="144" y1="2160" y2="2416" x1="144" />
            <wire x2="416" y1="2416" y2="2416" x1="144" />
            <wire x2="416" y1="2160" y2="2160" x1="144" />
            <wire x2="416" y1="2032" y2="2032" x1="144" />
            <wire x2="416" y1="1712" y2="1712" x1="144" />
            <wire x2="400" y1="1456" y2="1456" x1="144" />
            <wire x2="416" y1="1456" y2="1456" x1="400" />
            <wire x2="416" y1="1072" y2="1072" x1="144" />
            <wire x2="416" y1="688" y2="688" x1="144" />
            <wire x2="416" y1="176" y2="176" x1="144" />
        </branch>
        <iomarker fontsize="28" x="144" y="128" name="X2" orien="R270" />
        <instance x="416" y="496" name="XLXI_41" orien="R0" />
    </sheet>
    <sheet sheetnum="2" width="1900" height="2688">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <branch name="X3">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="80" y="80" type="branch" />
            <wire x2="80" y1="80" y2="288" x1="80" />
            <wire x2="416" y1="288" y2="288" x1="80" />
            <wire x2="80" y1="288" y2="608" x1="80" />
            <wire x2="416" y1="608" y2="608" x1="80" />
            <wire x2="80" y1="608" y2="800" x1="80" />
            <wire x2="416" y1="800" y2="800" x1="80" />
            <wire x2="80" y1="800" y2="1056" x1="80" />
            <wire x2="416" y1="1056" y2="1056" x1="80" />
            <wire x2="80" y1="1056" y2="1568" x1="80" />
            <wire x2="416" y1="1568" y2="1568" x1="80" />
            <wire x2="80" y1="1568" y2="1632" x1="80" />
            <wire x2="416" y1="1632" y2="1632" x1="80" />
        </branch>
        <branch name="X1">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="208" y="80" type="branch" />
            <wire x2="208" y1="80" y2="160" x1="208" />
            <wire x2="416" y1="160" y2="160" x1="208" />
            <wire x2="208" y1="160" y2="352" x1="208" />
            <wire x2="208" y1="352" y2="672" x1="208" />
            <wire x2="416" y1="672" y2="672" x1="208" />
            <wire x2="208" y1="672" y2="992" x1="208" />
            <wire x2="416" y1="992" y2="992" x1="208" />
            <wire x2="208" y1="992" y2="1184" x1="208" />
            <wire x2="416" y1="1184" y2="1184" x1="208" />
            <wire x2="208" y1="1184" y2="1376" x1="208" />
            <wire x2="208" y1="1376" y2="1504" x1="208" />
            <wire x2="416" y1="1504" y2="1504" x1="208" />
            <wire x2="208" y1="1504" y2="1696" x1="208" />
            <wire x2="416" y1="1696" y2="1696" x1="208" />
            <wire x2="416" y1="1376" y2="1376" x1="208" />
            <wire x2="416" y1="352" y2="352" x1="208" />
        </branch>
        <branch name="X0">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="272" y="80" type="branch" />
            <wire x2="272" y1="80" y2="224" x1="272" />
            <wire x2="416" y1="224" y2="224" x1="272" />
            <wire x2="272" y1="224" y2="480" x1="272" />
            <wire x2="272" y1="480" y2="736" x1="272" />
            <wire x2="416" y1="736" y2="736" x1="272" />
            <wire x2="272" y1="736" y2="864" x1="272" />
            <wire x2="416" y1="864" y2="864" x1="272" />
            <wire x2="272" y1="864" y2="1248" x1="272" />
            <wire x2="272" y1="1248" y2="1760" x1="272" />
            <wire x2="416" y1="1760" y2="1760" x1="272" />
            <wire x2="416" y1="1248" y2="1248" x1="272" />
            <wire x2="416" y1="480" y2="480" x1="272" />
        </branch>
        <branch name="X2">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="144" y="80" type="branch" />
            <wire x2="144" y1="80" y2="416" x1="144" />
            <wire x2="144" y1="416" y2="544" x1="144" />
            <wire x2="416" y1="544" y2="544" x1="144" />
            <wire x2="144" y1="544" y2="928" x1="144" />
            <wire x2="416" y1="928" y2="928" x1="144" />
            <wire x2="144" y1="928" y2="1120" x1="144" />
            <wire x2="416" y1="1120" y2="1120" x1="144" />
            <wire x2="144" y1="1120" y2="1312" x1="144" />
            <wire x2="144" y1="1312" y2="1440" x1="144" />
            <wire x2="416" y1="1440" y2="1440" x1="144" />
            <wire x2="416" y1="1312" y2="1312" x1="144" />
            <wire x2="416" y1="416" y2="416" x1="144" />
        </branch>
        <instance x="416" y="352" name="XLXI_30" orien="R0" />
        <instance x="416" y="800" name="XLXI_32" orien="R0" />
        <instance x="416" y="1056" name="XLXI_33" orien="R0" />
        <instance x="416" y="1248" name="XLXI_34" orien="R0" />
        <instance x="416" y="1632" name="XLXI_36" orien="R0" />
        <instance x="416" y="1824" name="XLXI_37" orien="R0" />
        <instance x="960" y="1568" name="XLXI_39" orien="R0" />
        <instance x="960" y="672" name="XLXI_38" orien="R0" />
        <branch name="XLXN_85">
            <wire x2="960" y1="224" y2="224" x1="672" />
            <wire x2="960" y1="224" y2="416" x1="960" />
        </branch>
        <branch name="XLXN_86">
            <wire x2="816" y1="416" y2="416" x1="672" />
            <wire x2="816" y1="416" y2="480" x1="816" />
            <wire x2="960" y1="480" y2="480" x1="816" />
        </branch>
        <branch name="XLXN_87">
            <wire x2="816" y1="640" y2="640" x1="672" />
            <wire x2="816" y1="544" y2="640" x1="816" />
            <wire x2="960" y1="544" y2="544" x1="816" />
        </branch>
        <branch name="XLXN_89">
            <wire x2="960" y1="896" y2="896" x1="672" />
            <wire x2="960" y1="608" y2="896" x1="960" />
        </branch>
        <branch name="XLXN_90">
            <wire x2="960" y1="1120" y2="1120" x1="672" />
            <wire x2="960" y1="1120" y2="1312" x1="960" />
        </branch>
        <branch name="XLXN_91">
            <wire x2="816" y1="1312" y2="1312" x1="672" />
            <wire x2="816" y1="1312" y2="1376" x1="816" />
            <wire x2="944" y1="1376" y2="1376" x1="816" />
            <wire x2="960" y1="1376" y2="1376" x1="944" />
        </branch>
        <branch name="XLXN_92">
            <wire x2="816" y1="1504" y2="1504" x1="672" />
            <wire x2="816" y1="1440" y2="1504" x1="816" />
            <wire x2="960" y1="1440" y2="1440" x1="816" />
        </branch>
        <branch name="XLXN_93">
            <wire x2="960" y1="1696" y2="1696" x1="672" />
            <wire x2="960" y1="1504" y2="1696" x1="960" />
        </branch>
        <branch name="Y1">
            <wire x2="1360" y1="512" y2="512" x1="1216" />
        </branch>
        <branch name="Y0">
            <wire x2="1360" y1="1408" y2="1408" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1360" y="1408" name="Y0" orien="R0" />
        <iomarker fontsize="28" x="1360" y="512" name="Y1" orien="R0" />
        <instance x="416" y="544" name="XLXI_40" orien="R0" />
        <instance x="416" y="1440" name="XLXI_35" orien="R0" />
    </sheet>
</drawing>