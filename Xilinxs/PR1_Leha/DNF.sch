<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="x3" />
        <signal name="x2" />
        <signal name="x1" />
        <signal name="x0" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="y0" />
        <signal name="y1" />
        <signal name="XLXN_42" />
        <signal name="XLXN_44" />
        <signal name="XLXN_54" />
        <signal name="XLXN_61" />
        <signal name="XLXN_63" />
        <signal name="XLXN_73" />
        <signal name="XLXN_80" />
        <signal name="XLXN_82" />
        <signal name="XLXN_92" />
        <signal name="XLXN_99" />
        <signal name="XLXN_101" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <signal name="XLXN_37" />
        <signal name="XLXN_111" />
        <signal name="XLXN_38" />
        <signal name="XLXN_39" />
        <signal name="y3" />
        <signal name="y2" />
        <port polarity="Input" name="x3" />
        <port polarity="Input" name="x2" />
        <port polarity="Input" name="x1" />
        <port polarity="Input" name="x0" />
        <port polarity="Output" name="y0" />
        <port polarity="Output" name="y1" />
        <port polarity="Output" name="y3" />
        <port polarity="Output" name="y2" />
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
        <block symbolname="and3b2" name="XLXI_1">
            <blockpin signalname="x0" name="I0" />
            <blockpin signalname="x2" name="I1" />
            <blockpin signalname="x1" name="I2" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_2">
            <blockpin signalname="x1" name="I0" />
            <blockpin signalname="x3" name="I1" />
            <blockpin signalname="x2" name="I2" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_3">
            <blockpin signalname="x2" name="I0" />
            <blockpin signalname="x3" name="I1" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_11">
            <blockpin signalname="x3" name="I0" />
            <blockpin signalname="x2" name="I1" />
            <blockpin signalname="x0" name="I2" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="and4b3" name="XLXI_12">
            <blockpin signalname="x0" name="I0" />
            <blockpin signalname="x1" name="I1" />
            <blockpin signalname="x3" name="I2" />
            <blockpin signalname="x2" name="I3" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_13">
            <blockpin signalname="x0" name="I0" />
            <blockpin signalname="x2" name="I1" />
            <blockpin signalname="x3" name="I2" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_14">
            <blockpin signalname="x1" name="I0" />
            <blockpin signalname="x2" name="I1" />
            <blockpin signalname="x3" name="I2" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_15">
            <blockpin signalname="x0" name="I0" />
            <blockpin signalname="x2" name="I1" />
            <blockpin signalname="x3" name="I2" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_27">
            <blockpin signalname="XLXN_16" name="I0" />
            <blockpin signalname="XLXN_15" name="I1" />
            <blockpin signalname="XLXN_14" name="I2" />
            <blockpin signalname="y0" name="O" />
        </block>
        <block symbolname="or5" name="XLXI_28">
            <blockpin signalname="XLXN_22" name="I0" />
            <blockpin signalname="XLXN_21" name="I1" />
            <blockpin signalname="XLXN_20" name="I2" />
            <blockpin signalname="XLXN_19" name="I3" />
            <blockpin signalname="XLXN_18" name="I4" />
            <blockpin signalname="y1" name="O" />
        </block>
        <block symbolname="and3b3" name="XLXI_16">
            <blockpin signalname="x0" name="I0" />
            <blockpin signalname="x1" name="I1" />
            <blockpin signalname="x2" name="I2" />
            <blockpin signalname="XLXN_28" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_17">
            <blockpin signalname="x0" name="I0" />
            <blockpin signalname="x3" name="I1" />
            <blockpin signalname="x2" name="I2" />
            <blockpin signalname="XLXN_29" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_19">
            <blockpin signalname="x0" name="I0" />
            <blockpin signalname="x2" name="I1" />
            <blockpin signalname="x3" name="I2" />
            <blockpin signalname="XLXN_31" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_20">
            <blockpin signalname="x0" name="I0" />
            <blockpin signalname="x1" name="I1" />
            <blockpin signalname="x3" name="I2" />
            <blockpin signalname="XLXN_32" name="O" />
        </block>
        <block symbolname="and3b3" name="XLXI_21">
            <blockpin signalname="x0" name="I0" />
            <blockpin signalname="x2" name="I1" />
            <blockpin signalname="x3" name="I2" />
            <blockpin signalname="XLXN_33" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_22">
            <blockpin signalname="x2" name="I0" />
            <blockpin signalname="x0" name="I1" />
            <blockpin signalname="x1" name="I2" />
            <blockpin signalname="XLXN_34" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_23">
            <blockpin signalname="x0" name="I0" />
            <blockpin signalname="x1" name="I1" />
            <blockpin signalname="x2" name="I2" />
            <blockpin signalname="XLXN_37" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_25">
            <blockpin signalname="x0" name="I0" />
            <blockpin signalname="x1" name="I1" />
            <blockpin signalname="x3" name="I2" />
            <blockpin signalname="XLXN_39" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_26">
            <blockpin signalname="x1" name="I0" />
            <blockpin signalname="x2" name="I1" />
            <blockpin signalname="x3" name="I2" />
            <blockpin signalname="XLXN_38" name="O" />
        </block>
        <block symbolname="or5" name="XLXI_30">
            <blockpin signalname="XLXN_39" name="I0" />
            <blockpin signalname="XLXN_38" name="I1" />
            <blockpin signalname="XLXN_37" name="I2" />
            <blockpin signalname="XLXN_34" name="I3" />
            <blockpin signalname="XLXN_33" name="I4" />
            <blockpin signalname="y3" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_79">
            <blockpin signalname="XLXN_32" name="I0" />
            <blockpin signalname="XLXN_31" name="I1" />
            <blockpin signalname="XLXN_29" name="I2" />
            <blockpin signalname="XLXN_28" name="I3" />
            <blockpin signalname="y2" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <iomarker fontsize="28" x="192" y="64" name="x3" orien="R270" />
        <iomarker fontsize="28" x="272" y="64" name="x2" orien="R270" />
        <iomarker fontsize="28" x="368" y="64" name="x1" orien="R270" />
        <iomarker fontsize="28" x="464" y="80" name="x0" orien="R270" />
        <instance x="640" y="496" name="XLXI_2" orien="R0" />
        <instance x="640" y="640" name="XLXI_3" orien="R0" />
        <instance x="640" y="944" name="XLXI_11" orien="R0" />
        <instance x="640" y="1200" name="XLXI_12" orien="R0" />
        <instance x="640" y="1408" name="XLXI_13" orien="R0" />
        <instance x="640" y="1584" name="XLXI_14" orien="R0" />
        <instance x="640" y="1776" name="XLXI_15" orien="R0" />
        <instance x="1104" y="432" name="XLXI_27" orien="R0" />
        <instance x="1168" y="1472" name="XLXI_28" orien="R0" />
        <instance x="640" y="304" name="XLXI_1" orien="R0" />
        <branch name="XLXN_14">
            <wire x2="1104" y1="176" y2="176" x1="896" />
            <wire x2="1104" y1="176" y2="240" x1="1104" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="992" y1="368" y2="368" x1="896" />
            <wire x2="992" y1="304" y2="368" x1="992" />
            <wire x2="1104" y1="304" y2="304" x1="992" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="1104" y1="544" y2="544" x1="896" />
            <wire x2="1104" y1="368" y2="544" x1="1104" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="1168" y1="816" y2="816" x1="896" />
            <wire x2="1168" y1="816" y2="1152" x1="1168" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="1024" y1="1040" y2="1040" x1="896" />
            <wire x2="1024" y1="1040" y2="1216" x1="1024" />
            <wire x2="1168" y1="1216" y2="1216" x1="1024" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="1168" y1="1280" y2="1280" x1="896" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="1024" y1="1456" y2="1456" x1="896" />
            <wire x2="1024" y1="1344" y2="1456" x1="1024" />
            <wire x2="1168" y1="1344" y2="1344" x1="1024" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="1168" y1="1648" y2="1648" x1="896" />
            <wire x2="1168" y1="1408" y2="1648" x1="1168" />
        </branch>
        <branch name="y0">
            <wire x2="1392" y1="304" y2="304" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1392" y="304" name="y0" orien="R0" />
        <branch name="y1">
            <wire x2="1456" y1="1280" y2="1280" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="1456" y="1280" name="y1" orien="R0" />
        <branch name="XLXN_28">
            <wire x2="1184" y1="2832" y2="2832" x1="880" />
            <wire x2="1184" y1="2832" y2="3072" x1="1184" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="1024" y1="3024" y2="3024" x1="880" />
            <wire x2="1024" y1="3024" y2="3136" x1="1024" />
            <wire x2="1184" y1="3136" y2="3136" x1="1024" />
        </branch>
        <branch name="XLXN_31">
            <wire x2="1024" y1="3360" y2="3360" x1="880" />
            <wire x2="1184" y1="3200" y2="3200" x1="1024" />
            <wire x2="1024" y1="3200" y2="3360" x1="1024" />
        </branch>
        <branch name="XLXN_32">
            <wire x2="1184" y1="3520" y2="3520" x1="880" />
            <wire x2="1184" y1="3264" y2="3520" x1="1184" />
        </branch>
        <branch name="XLXN_33">
            <wire x2="1216" y1="3888" y2="3888" x1="832" />
            <wire x2="1216" y1="3888" y2="4176" x1="1216" />
        </branch>
        <branch name="XLXN_34">
            <wire x2="848" y1="4096" y2="4096" x1="832" />
            <wire x2="848" y1="4096" y2="4240" x1="848" />
            <wire x2="1216" y1="4240" y2="4240" x1="848" />
        </branch>
        <branch name="XLXN_37">
            <wire x2="1024" y1="4288" y2="4288" x1="832" />
            <wire x2="1024" y1="4288" y2="4304" x1="1024" />
            <wire x2="1216" y1="4304" y2="4304" x1="1024" />
        </branch>
        <branch name="XLXN_38">
            <wire x2="1200" y1="4480" y2="4480" x1="816" />
            <wire x2="1216" y1="4368" y2="4368" x1="1200" />
            <wire x2="1200" y1="4368" y2="4480" x1="1200" />
        </branch>
        <branch name="XLXN_39">
            <wire x2="1216" y1="4672" y2="4672" x1="832" />
            <wire x2="1216" y1="4432" y2="4672" x1="1216" />
        </branch>
        <branch name="y3">
            <wire x2="1504" y1="4304" y2="4304" x1="1472" />
        </branch>
        <branch name="y2">
            <wire x2="1472" y1="3168" y2="3168" x1="1440" />
        </branch>
        <instance x="624" y="2960" name="XLXI_16" orien="R0" />
        <instance x="624" y="3152" name="XLXI_17" orien="R0" />
        <instance x="624" y="3488" name="XLXI_19" orien="R0" />
        <instance x="624" y="3648" name="XLXI_20" orien="R0" />
        <instance x="576" y="4016" name="XLXI_21" orien="R0" />
        <instance x="576" y="4224" name="XLXI_22" orien="R0" />
        <instance x="576" y="4416" name="XLXI_23" orien="R0" />
        <instance x="576" y="4800" name="XLXI_25" orien="R0" />
        <instance x="560" y="4608" name="XLXI_26" orien="R0" />
        <instance x="1216" y="4496" name="XLXI_30" orien="R0" />
        <iomarker fontsize="28" x="1504" y="4304" name="y3" orien="R0" />
        <iomarker fontsize="28" x="1472" y="3168" name="y2" orien="R0" />
        <branch name="x2">
            <wire x2="272" y1="64" y2="176" x1="272" />
            <wire x2="640" y1="176" y2="176" x1="272" />
            <wire x2="272" y1="176" y2="304" x1="272" />
            <wire x2="640" y1="304" y2="304" x1="272" />
            <wire x2="272" y1="304" y2="576" x1="272" />
            <wire x2="640" y1="576" y2="576" x1="272" />
            <wire x2="272" y1="576" y2="816" x1="272" />
            <wire x2="640" y1="816" y2="816" x1="272" />
            <wire x2="272" y1="816" y2="944" x1="272" />
            <wire x2="640" y1="944" y2="944" x1="272" />
            <wire x2="272" y1="944" y2="1280" x1="272" />
            <wire x2="640" y1="1280" y2="1280" x1="272" />
            <wire x2="272" y1="1280" y2="1456" x1="272" />
            <wire x2="640" y1="1456" y2="1456" x1="272" />
            <wire x2="272" y1="1456" y2="1648" x1="272" />
            <wire x2="640" y1="1648" y2="1648" x1="272" />
            <wire x2="272" y1="1648" y2="2768" x1="272" />
            <wire x2="624" y1="2768" y2="2768" x1="272" />
            <wire x2="272" y1="2768" y2="2960" x1="272" />
            <wire x2="624" y1="2960" y2="2960" x1="272" />
            <wire x2="272" y1="2960" y2="3360" x1="272" />
            <wire x2="624" y1="3360" y2="3360" x1="272" />
            <wire x2="272" y1="3360" y2="3888" x1="272" />
            <wire x2="576" y1="3888" y2="3888" x1="272" />
            <wire x2="272" y1="3888" y2="4160" x1="272" />
            <wire x2="272" y1="4160" y2="4224" x1="272" />
            <wire x2="576" y1="4224" y2="4224" x1="272" />
            <wire x2="272" y1="4224" y2="4480" x1="272" />
            <wire x2="272" y1="4480" y2="5264" x1="272" />
            <wire x2="560" y1="4480" y2="4480" x1="272" />
            <wire x2="576" y1="4160" y2="4160" x1="272" />
        </branch>
        <branch name="x3">
            <wire x2="192" y1="64" y2="368" x1="192" />
            <wire x2="640" y1="368" y2="368" x1="192" />
            <wire x2="192" y1="368" y2="512" x1="192" />
            <wire x2="640" y1="512" y2="512" x1="192" />
            <wire x2="192" y1="512" y2="880" x1="192" />
            <wire x2="640" y1="880" y2="880" x1="192" />
            <wire x2="192" y1="880" y2="1008" x1="192" />
            <wire x2="640" y1="1008" y2="1008" x1="192" />
            <wire x2="192" y1="1008" y2="1216" x1="192" />
            <wire x2="640" y1="1216" y2="1216" x1="192" />
            <wire x2="192" y1="1216" y2="1392" x1="192" />
            <wire x2="640" y1="1392" y2="1392" x1="192" />
            <wire x2="192" y1="1392" y2="1584" x1="192" />
            <wire x2="640" y1="1584" y2="1584" x1="192" />
            <wire x2="192" y1="1584" y2="3024" x1="192" />
            <wire x2="624" y1="3024" y2="3024" x1="192" />
            <wire x2="192" y1="3024" y2="3296" x1="192" />
            <wire x2="624" y1="3296" y2="3296" x1="192" />
            <wire x2="192" y1="3296" y2="3456" x1="192" />
            <wire x2="624" y1="3456" y2="3456" x1="192" />
            <wire x2="192" y1="3456" y2="3824" x1="192" />
            <wire x2="576" y1="3824" y2="3824" x1="192" />
            <wire x2="192" y1="3824" y2="4416" x1="192" />
            <wire x2="560" y1="4416" y2="4416" x1="192" />
            <wire x2="192" y1="4416" y2="4592" x1="192" />
            <wire x2="192" y1="4592" y2="5312" x1="192" />
            <wire x2="576" y1="4592" y2="4592" x1="192" />
            <wire x2="576" y1="4592" y2="4608" x1="576" />
        </branch>
        <instance x="1184" y="3328" name="XLXI_79" orien="R0" />
        <branch name="x1">
            <wire x2="368" y1="64" y2="112" x1="368" />
            <wire x2="368" y1="112" y2="432" x1="368" />
            <wire x2="640" y1="432" y2="432" x1="368" />
            <wire x2="368" y1="432" y2="1072" x1="368" />
            <wire x2="640" y1="1072" y2="1072" x1="368" />
            <wire x2="368" y1="1072" y2="1520" x1="368" />
            <wire x2="640" y1="1520" y2="1520" x1="368" />
            <wire x2="368" y1="1520" y2="2832" x1="368" />
            <wire x2="624" y1="2832" y2="2832" x1="368" />
            <wire x2="368" y1="2832" y2="3520" x1="368" />
            <wire x2="624" y1="3520" y2="3520" x1="368" />
            <wire x2="368" y1="3520" y2="4032" x1="368" />
            <wire x2="368" y1="4032" y2="4288" x1="368" />
            <wire x2="576" y1="4288" y2="4288" x1="368" />
            <wire x2="368" y1="4288" y2="4544" x1="368" />
            <wire x2="560" y1="4544" y2="4544" x1="368" />
            <wire x2="368" y1="4544" y2="4672" x1="368" />
            <wire x2="368" y1="4672" y2="5328" x1="368" />
            <wire x2="576" y1="4672" y2="4672" x1="368" />
            <wire x2="576" y1="4032" y2="4032" x1="368" />
            <wire x2="640" y1="112" y2="112" x1="368" />
        </branch>
        <branch name="x0">
            <wire x2="464" y1="5312" y2="5312" x1="448" />
            <wire x2="464" y1="80" y2="240" x1="464" />
            <wire x2="464" y1="240" y2="752" x1="464" />
            <wire x2="640" y1="752" y2="752" x1="464" />
            <wire x2="464" y1="752" y2="1136" x1="464" />
            <wire x2="640" y1="1136" y2="1136" x1="464" />
            <wire x2="464" y1="1136" y2="1344" x1="464" />
            <wire x2="640" y1="1344" y2="1344" x1="464" />
            <wire x2="464" y1="1344" y2="1712" x1="464" />
            <wire x2="640" y1="1712" y2="1712" x1="464" />
            <wire x2="464" y1="1712" y2="2896" x1="464" />
            <wire x2="624" y1="2896" y2="2896" x1="464" />
            <wire x2="464" y1="2896" y2="3088" x1="464" />
            <wire x2="624" y1="3088" y2="3088" x1="464" />
            <wire x2="464" y1="3088" y2="3424" x1="464" />
            <wire x2="624" y1="3424" y2="3424" x1="464" />
            <wire x2="464" y1="3424" y2="3584" x1="464" />
            <wire x2="624" y1="3584" y2="3584" x1="464" />
            <wire x2="464" y1="3584" y2="3952" x1="464" />
            <wire x2="576" y1="3952" y2="3952" x1="464" />
            <wire x2="464" y1="3952" y2="4096" x1="464" />
            <wire x2="464" y1="4096" y2="4352" x1="464" />
            <wire x2="576" y1="4352" y2="4352" x1="464" />
            <wire x2="464" y1="4352" y2="4736" x1="464" />
            <wire x2="464" y1="4736" y2="5312" x1="464" />
            <wire x2="576" y1="4736" y2="4736" x1="464" />
            <wire x2="576" y1="4096" y2="4096" x1="464" />
            <wire x2="640" y1="240" y2="240" x1="464" />
        </branch>
    </sheet>
</drawing>