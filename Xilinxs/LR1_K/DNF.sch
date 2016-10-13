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
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="Y0" />
        <signal name="Y1" />
        <signal name="Y2" />
        <signal name="Y3" />
        <port polarity="Input" name="X3" />
        <port polarity="Input" name="X2" />
        <port polarity="Input" name="X1" />
        <port polarity="Input" name="X0" />
        <port polarity="Output" name="Y0" />
        <port polarity="Output" name="Y1" />
        <port polarity="Output" name="Y2" />
        <port polarity="Output" name="Y3" />
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
        <block symbolname="and2b1" name="XLXI_1">
            <blockpin signalname="X0" name="I0" />
            <blockpin signalname="X2" name="I1" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="and3b3" name="XLXI_2">
            <blockpin signalname="X0" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="X3" name="I2" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_3">
            <blockpin signalname="X3" name="I0" />
            <blockpin signalname="X2" name="I1" />
            <blockpin signalname="X0" name="I2" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="and4b2" name="XLXI_4">
            <blockpin signalname="X1" name="I0" />
            <blockpin signalname="X2" name="I1" />
            <blockpin signalname="X0" name="I2" />
            <blockpin signalname="X3" name="I3" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_5">
            <blockpin signalname="XLXN_9" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_6" name="I2" />
            <blockpin signalname="XLXN_5" name="I3" />
            <blockpin signalname="Y0" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_6">
            <blockpin signalname="XLXN_12" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="XLXN_14" name="I2" />
            <blockpin signalname="XLXN_15" name="I3" />
            <blockpin signalname="Y1" name="O" />
        </block>
        <block symbolname="and2b2" name="XLXI_7">
            <blockpin signalname="X1" name="I0" />
            <blockpin signalname="X3" name="I1" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_8">
            <blockpin signalname="X0" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="X3" name="I2" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_9">
            <blockpin signalname="X1" name="I0" />
            <blockpin signalname="X2" name="I1" />
            <blockpin signalname="X3" name="I2" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="and3b3" name="XLXI_10">
            <blockpin signalname="X0" name="I0" />
            <blockpin signalname="X2" name="I1" />
            <blockpin signalname="X3" name="I2" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_14">
            <blockpin signalname="XLXN_16" name="I0" />
            <blockpin signalname="XLXN_17" name="I1" />
            <blockpin signalname="XLXN_18" name="I2" />
            <blockpin signalname="XLXN_19" name="I3" />
            <blockpin signalname="Y2" name="O" />
        </block>
        <block symbolname="and2b2" name="XLXI_23">
            <blockpin signalname="X0" name="I0" />
            <blockpin signalname="X3" name="I1" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_11">
            <blockpin signalname="X3" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_12">
            <blockpin signalname="X0" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_13">
            <blockpin signalname="X1" name="I0" />
            <blockpin signalname="X2" name="I1" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_28">
            <blockpin signalname="X0" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_29">
            <blockpin signalname="X0" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="X3" name="I2" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_30">
            <blockpin signalname="X0" name="I0" />
            <blockpin signalname="X2" name="I1" />
            <blockpin signalname="X3" name="I2" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_31">
            <blockpin signalname="XLXN_23" name="I0" />
            <blockpin signalname="XLXN_22" name="I1" />
            <blockpin signalname="XLXN_20" name="I2" />
            <blockpin signalname="Y3" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <branch name="X2">
            <wire x2="256" y1="80" y2="112" x1="256" />
            <wire x2="784" y1="112" y2="112" x1="256" />
            <wire x2="256" y1="112" y2="304" x1="256" />
            <wire x2="784" y1="304" y2="304" x1="256" />
            <wire x2="256" y1="304" y2="752" x1="256" />
            <wire x2="784" y1="752" y2="752" x1="256" />
            <wire x2="256" y1="752" y2="1360" x1="256" />
            <wire x2="784" y1="1360" y2="1360" x1="256" />
            <wire x2="256" y1="1360" y2="1568" x1="256" />
            <wire x2="784" y1="1568" y2="1568" x1="256" />
            <wire x2="256" y1="1568" y2="2192" x1="256" />
            <wire x2="784" y1="2192" y2="2192" x1="256" />
            <wire x2="256" y1="2192" y2="2832" x1="256" />
            <wire x2="256" y1="2832" y2="5392" x1="256" />
            <wire x2="784" y1="2832" y2="2832" x1="256" />
        </branch>
        <branch name="X0">
            <wire x2="528" y1="80" y2="176" x1="528" />
            <wire x2="784" y1="176" y2="176" x1="528" />
            <wire x2="528" y1="176" y2="240" x1="528" />
            <wire x2="784" y1="240" y2="240" x1="528" />
            <wire x2="528" y1="240" y2="560" x1="528" />
            <wire x2="784" y1="560" y2="560" x1="528" />
            <wire x2="528" y1="560" y2="688" x1="528" />
            <wire x2="784" y1="688" y2="688" x1="528" />
            <wire x2="528" y1="688" y2="1232" x1="528" />
            <wire x2="528" y1="1232" y2="1632" x1="528" />
            <wire x2="784" y1="1632" y2="1632" x1="528" />
            <wire x2="528" y1="1632" y2="1840" x1="528" />
            <wire x2="784" y1="1840" y2="1840" x1="528" />
            <wire x2="528" y1="1840" y2="2112" x1="528" />
            <wire x2="784" y1="2112" y2="2112" x1="528" />
            <wire x2="528" y1="2112" y2="2496" x1="528" />
            <wire x2="784" y1="2496" y2="2496" x1="528" />
            <wire x2="528" y1="2496" y2="2704" x1="528" />
            <wire x2="784" y1="2704" y2="2704" x1="528" />
            <wire x2="528" y1="2704" y2="2896" x1="528" />
            <wire x2="528" y1="2896" y2="5392" x1="528" />
            <wire x2="784" y1="2896" y2="2896" x1="528" />
            <wire x2="784" y1="1232" y2="1232" x1="528" />
        </branch>
        <instance x="784" y="240" name="XLXI_1" orien="R0" />
        <instance x="784" y="432" name="XLXI_3" orien="R0" />
        <instance x="784" y="624" name="XLXI_2" orien="R0" />
        <instance x="784" y="880" name="XLXI_4" orien="R0" />
        <instance x="1280" y="1424" name="XLXI_6" orien="R0" />
        <instance x="784" y="1088" name="XLXI_7" orien="R0" />
        <instance x="784" y="1296" name="XLXI_8" orien="R0" />
        <instance x="784" y="1488" name="XLXI_9" orien="R0" />
        <instance x="784" y="1696" name="XLXI_10" orien="R0" />
        <branch name="XLXN_12">
            <wire x2="1280" y1="1568" y2="1568" x1="1040" />
            <wire x2="1280" y1="1360" y2="1568" x1="1280" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="1152" y1="1360" y2="1360" x1="1040" />
            <wire x2="1152" y1="1296" y2="1360" x1="1152" />
            <wire x2="1280" y1="1296" y2="1296" x1="1152" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="1152" y1="1168" y2="1168" x1="1040" />
            <wire x2="1152" y1="1168" y2="1232" x1="1152" />
            <wire x2="1280" y1="1232" y2="1232" x1="1152" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="1280" y1="992" y2="992" x1="1040" />
            <wire x2="1280" y1="992" y2="1168" x1="1280" />
        </branch>
        <instance x="784" y="2032" name="XLXI_11" orien="R0" />
        <instance x="784" y="2176" name="XLXI_12" orien="R0" />
        <instance x="784" y="2320" name="XLXI_13" orien="R0" />
        <instance x="1248" y="2160" name="XLXI_14" orien="R0" />
        <instance x="784" y="1904" name="XLXI_23" orien="R0" />
        <branch name="XLXN_16">
            <wire x2="1248" y1="2224" y2="2224" x1="1040" />
            <wire x2="1248" y1="2096" y2="2224" x1="1248" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="1136" y1="2080" y2="2080" x1="1040" />
            <wire x2="1136" y1="2032" y2="2080" x1="1136" />
            <wire x2="1248" y1="2032" y2="2032" x1="1136" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="1136" y1="1936" y2="1936" x1="1040" />
            <wire x2="1136" y1="1936" y2="1968" x1="1136" />
            <wire x2="1248" y1="1968" y2="1968" x1="1136" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="1248" y1="1808" y2="1808" x1="1040" />
            <wire x2="1248" y1="1808" y2="1904" x1="1248" />
        </branch>
        <instance x="784" y="2560" name="XLXI_28" orien="R0" />
        <instance x="784" y="2768" name="XLXI_29" orien="R0" />
        <instance x="784" y="2960" name="XLXI_30" orien="R0" />
        <instance x="1232" y="2768" name="XLXI_31" orien="R0" />
        <branch name="XLXN_20">
            <wire x2="1232" y1="2464" y2="2464" x1="1040" />
            <wire x2="1232" y1="2464" y2="2576" x1="1232" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="1232" y1="2640" y2="2640" x1="1040" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="1232" y1="2832" y2="2832" x1="1040" />
            <wire x2="1232" y1="2704" y2="2832" x1="1232" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1168" y1="720" y2="720" x1="1040" />
            <wire x2="1168" y1="496" y2="720" x1="1168" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1104" y1="496" y2="496" x1="1040" />
            <wire x2="1104" y1="432" y2="496" x1="1104" />
            <wire x2="1168" y1="432" y2="432" x1="1104" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1104" y1="304" y2="304" x1="1040" />
            <wire x2="1104" y1="304" y2="368" x1="1104" />
            <wire x2="1168" y1="368" y2="368" x1="1104" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1168" y1="144" y2="144" x1="1040" />
            <wire x2="1168" y1="144" y2="304" x1="1168" />
        </branch>
        <instance x="1168" y="560" name="XLXI_5" orien="R0" />
        <branch name="Y0">
            <wire x2="1456" y1="400" y2="400" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="1456" y="400" name="Y0" orien="R0" />
        <branch name="Y1">
            <wire x2="1568" y1="1264" y2="1264" x1="1536" />
        </branch>
        <iomarker fontsize="28" x="1568" y="1264" name="Y1" orien="R0" />
        <branch name="Y2">
            <wire x2="1536" y1="2000" y2="2000" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1536" y="2000" name="Y2" orien="R0" />
        <branch name="Y3">
            <wire x2="1520" y1="2640" y2="2640" x1="1488" />
        </branch>
        <iomarker fontsize="28" x="1520" y="2640" name="Y3" orien="R0" />
        <iomarker fontsize="28" x="128" y="80" name="X3" orien="R270" />
        <iomarker fontsize="28" x="256" y="80" name="X2" orien="R270" />
        <iomarker fontsize="28" x="400" y="80" name="X1" orien="R270" />
        <iomarker fontsize="28" x="528" y="80" name="X0" orien="R270" />
        <branch name="X1">
            <wire x2="400" y1="80" y2="496" x1="400" />
            <wire x2="784" y1="496" y2="496" x1="400" />
            <wire x2="400" y1="496" y2="816" x1="400" />
            <wire x2="784" y1="816" y2="816" x1="400" />
            <wire x2="400" y1="816" y2="1024" x1="400" />
            <wire x2="784" y1="1024" y2="1024" x1="400" />
            <wire x2="400" y1="1024" y2="1168" x1="400" />
            <wire x2="784" y1="1168" y2="1168" x1="400" />
            <wire x2="400" y1="1168" y2="1424" x1="400" />
            <wire x2="784" y1="1424" y2="1424" x1="400" />
            <wire x2="400" y1="1424" y2="1904" x1="400" />
            <wire x2="784" y1="1904" y2="1904" x1="400" />
            <wire x2="400" y1="1904" y2="2048" x1="400" />
            <wire x2="784" y1="2048" y2="2048" x1="400" />
            <wire x2="400" y1="2048" y2="2256" x1="400" />
            <wire x2="784" y1="2256" y2="2256" x1="400" />
            <wire x2="400" y1="2256" y2="2432" x1="400" />
            <wire x2="784" y1="2432" y2="2432" x1="400" />
            <wire x2="400" y1="2432" y2="2640" x1="400" />
            <wire x2="400" y1="2640" y2="5392" x1="400" />
            <wire x2="784" y1="2640" y2="2640" x1="400" />
        </branch>
        <branch name="X3">
            <wire x2="128" y1="80" y2="368" x1="128" />
            <wire x2="784" y1="368" y2="368" x1="128" />
            <wire x2="128" y1="368" y2="432" x1="128" />
            <wire x2="784" y1="432" y2="432" x1="128" />
            <wire x2="128" y1="432" y2="624" x1="128" />
            <wire x2="784" y1="624" y2="624" x1="128" />
            <wire x2="128" y1="624" y2="960" x1="128" />
            <wire x2="784" y1="960" y2="960" x1="128" />
            <wire x2="128" y1="960" y2="1104" x1="128" />
            <wire x2="784" y1="1104" y2="1104" x1="128" />
            <wire x2="128" y1="1104" y2="1296" x1="128" />
            <wire x2="784" y1="1296" y2="1296" x1="128" />
            <wire x2="128" y1="1296" y2="1504" x1="128" />
            <wire x2="784" y1="1504" y2="1504" x1="128" />
            <wire x2="128" y1="1504" y2="1776" x1="128" />
            <wire x2="784" y1="1776" y2="1776" x1="128" />
            <wire x2="128" y1="1776" y2="1968" x1="128" />
            <wire x2="128" y1="1968" y2="2576" x1="128" />
            <wire x2="784" y1="2576" y2="2576" x1="128" />
            <wire x2="128" y1="2576" y2="2768" x1="128" />
            <wire x2="128" y1="2768" y2="5392" x1="128" />
            <wire x2="784" y1="2768" y2="2768" x1="128" />
            <wire x2="784" y1="1968" y2="1968" x1="128" />
        </branch>
    </sheet>
</drawing>