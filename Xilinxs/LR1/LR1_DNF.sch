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
        <signal name="Y0" />
        <signal name="XLXN_63" />
        <signal name="XLXN_64" />
        <signal name="XLXN_65" />
        <signal name="XLXN_66" />
        <signal name="XLXN_67" />
        <signal name="Y1" />
        <signal name="Y2" />
        <signal name="Y3" />
        <signal name="X0" />
        <signal name="XLXN_104" />
        <signal name="XLXN_105" />
        <signal name="XLXN_107" />
        <signal name="XLXN_110" />
        <signal name="XLXN_119" />
        <signal name="XLXN_120" />
        <signal name="XLXN_121" />
        <signal name="XLXN_122" />
        <signal name="XLXN_123" />
        <signal name="XLXN_132" />
        <signal name="XLXN_133" />
        <signal name="XLXN_134" />
        <signal name="XLXN_135" />
        <signal name="XLXN_136" />
        <signal name="XLXN_137" />
        <port polarity="Input" name="X3" />
        <port polarity="Input" name="X2" />
        <port polarity="Input" name="X1" />
        <port polarity="Output" name="Y0" />
        <port polarity="Output" name="Y1" />
        <port polarity="Output" name="Y2" />
        <port polarity="Output" name="Y3" />
        <port polarity="Input" name="X0" />
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
        <block symbolname="and2" name="XLXI_55">
            <blockpin signalname="X1" name="I0" />
            <blockpin signalname="X0" name="I1" />
            <blockpin signalname="XLXN_65" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_56">
            <blockpin signalname="X2" name="I0" />
            <blockpin signalname="X3" name="I1" />
            <blockpin signalname="XLXN_64" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_57">
            <blockpin signalname="X1" name="I0" />
            <blockpin signalname="X0" name="I1" />
            <blockpin signalname="X2" name="I2" />
            <blockpin signalname="XLXN_63" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_58">
            <blockpin signalname="X3" name="I0" />
            <blockpin signalname="X0" name="I1" />
            <blockpin signalname="XLXN_66" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_59">
            <blockpin signalname="X2" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="XLXN_67" name="O" />
        </block>
        <block symbolname="or5" name="XLXI_54">
            <blockpin signalname="XLXN_67" name="I0" />
            <blockpin signalname="XLXN_66" name="I1" />
            <blockpin signalname="XLXN_63" name="I2" />
            <blockpin signalname="XLXN_64" name="I3" />
            <blockpin signalname="XLXN_65" name="I4" />
            <blockpin signalname="Y0" name="O" />
        </block>
        <block symbolname="or5" name="XLXI_77">
            <blockpin signalname="XLXN_121" name="I0" />
            <blockpin signalname="XLXN_120" name="I1" />
            <blockpin signalname="XLXN_119" name="I2" />
            <blockpin signalname="XLXN_122" name="I3" />
            <blockpin signalname="XLXN_123" name="I4" />
            <blockpin signalname="Y2" name="O" />
        </block>
        <block symbolname="and2b2" name="XLXI_87">
            <blockpin signalname="X1" name="I0" />
            <blockpin signalname="X3" name="I1" />
            <blockpin signalname="XLXN_104" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_89">
            <blockpin signalname="X2" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="X0" name="I2" />
            <blockpin signalname="XLXN_107" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_90">
            <blockpin signalname="X0" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="X3" name="I2" />
            <blockpin signalname="XLXN_110" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_91">
            <blockpin signalname="XLXN_110" name="I0" />
            <blockpin signalname="XLXN_107" name="I1" />
            <blockpin signalname="XLXN_105" name="I2" />
            <blockpin signalname="XLXN_104" name="I3" />
            <blockpin signalname="Y1" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_92">
            <blockpin signalname="X2" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="X0" name="I2" />
            <blockpin signalname="XLXN_105" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_98">
            <blockpin signalname="X3" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="X0" name="I2" />
            <blockpin signalname="XLXN_123" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_99">
            <blockpin signalname="X2" name="I0" />
            <blockpin signalname="X3" name="I1" />
            <blockpin signalname="X0" name="I2" />
            <blockpin signalname="XLXN_122" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_101">
            <blockpin signalname="X0" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="X2" name="I2" />
            <blockpin signalname="XLXN_119" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_102">
            <blockpin signalname="X3" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="XLXN_120" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_104">
            <blockpin signalname="X2" name="I0" />
            <blockpin signalname="X0" name="I1" />
            <blockpin signalname="X3" name="I2" />
            <blockpin signalname="XLXN_121" name="O" />
        </block>
        <block symbolname="and4b4" name="XLXI_78">
            <blockpin signalname="X3" name="I0" />
            <blockpin signalname="X2" name="I1" />
            <blockpin signalname="X1" name="I2" />
            <blockpin signalname="X0" name="I3" />
            <blockpin signalname="XLXN_132" name="O" />
        </block>
        <block symbolname="and4b2" name="XLXI_132">
            <blockpin signalname="X2" name="I0" />
            <blockpin signalname="X3" name="I1" />
            <blockpin signalname="X0" name="I2" />
            <blockpin signalname="X1" name="I3" />
            <blockpin signalname="XLXN_133" name="O" />
        </block>
        <block symbolname="or6" name="XLXI_133">
            <blockpin signalname="XLXN_137" name="I0" />
            <blockpin signalname="XLXN_136" name="I1" />
            <blockpin signalname="XLXN_135" name="I2" />
            <blockpin signalname="XLXN_134" name="I3" />
            <blockpin signalname="XLXN_133" name="I4" />
            <blockpin signalname="XLXN_132" name="I5" />
            <blockpin signalname="Y3" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_134">
            <blockpin signalname="X1" name="I0" />
            <blockpin signalname="X2" name="I1" />
            <blockpin signalname="X3" name="I2" />
            <blockpin signalname="XLXN_134" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_135">
            <blockpin signalname="X0" name="I0" />
            <blockpin signalname="X2" name="I1" />
            <blockpin signalname="X1" name="I2" />
            <blockpin signalname="XLXN_136" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_137">
            <blockpin signalname="X0" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="X3" name="I2" />
            <blockpin signalname="XLXN_137" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_138">
            <blockpin signalname="X1" name="I0" />
            <blockpin signalname="X0" name="I1" />
            <blockpin signalname="X3" name="I2" />
            <blockpin signalname="XLXN_135" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <iomarker fontsize="28" x="176" y="32" name="X0" orien="R180" />
        <branch name="X1">
            <wire x2="464" y1="64" y2="64" x1="176" />
            <wire x2="464" y1="64" y2="256" x1="464" />
            <wire x2="624" y1="256" y2="256" x1="464" />
            <wire x2="464" y1="256" y2="576" x1="464" />
            <wire x2="624" y1="576" y2="576" x1="464" />
            <wire x2="464" y1="576" y2="768" x1="464" />
            <wire x2="624" y1="768" y2="768" x1="464" />
            <wire x2="464" y1="768" y2="1040" x1="464" />
            <wire x2="464" y1="1040" y2="1072" x1="464" />
            <wire x2="624" y1="1072" y2="1072" x1="464" />
            <wire x2="464" y1="1072" y2="1168" x1="464" />
            <wire x2="464" y1="1168" y2="1312" x1="464" />
            <wire x2="624" y1="1312" y2="1312" x1="464" />
            <wire x2="464" y1="1312" y2="1328" x1="464" />
            <wire x2="672" y1="1328" y2="1328" x1="464" />
            <wire x2="464" y1="1328" y2="1488" x1="464" />
            <wire x2="464" y1="1488" y2="1536" x1="464" />
            <wire x2="624" y1="1536" y2="1536" x1="464" />
            <wire x2="464" y1="1536" y2="2640" x1="464" />
            <wire x2="672" y1="1488" y2="1488" x1="464" />
            <wire x2="672" y1="1168" y2="1168" x1="464" />
            <wire x2="672" y1="1040" y2="1040" x1="464" />
            <wire x2="1776" y1="64" y2="64" x1="464" />
            <wire x2="1776" y1="64" y2="240" x1="1776" />
            <wire x2="1840" y1="240" y2="240" x1="1776" />
            <wire x2="1776" y1="240" y2="272" x1="1776" />
            <wire x2="1776" y1="272" y2="624" x1="1776" />
            <wire x2="1840" y1="624" y2="624" x1="1776" />
            <wire x2="1776" y1="624" y2="640" x1="1776" />
            <wire x2="1888" y1="640" y2="640" x1="1776" />
            <wire x2="1776" y1="640" y2="752" x1="1776" />
            <wire x2="1888" y1="752" y2="752" x1="1776" />
            <wire x2="1776" y1="752" y2="992" x1="1776" />
            <wire x2="1776" y1="992" y2="1024" x1="1776" />
            <wire x2="1776" y1="1024" y2="1200" x1="1776" />
            <wire x2="1952" y1="1200" y2="1200" x1="1776" />
            <wire x2="1776" y1="1200" y2="1392" x1="1776" />
            <wire x2="1776" y1="1392" y2="1568" x1="1776" />
            <wire x2="1840" y1="1568" y2="1568" x1="1776" />
            <wire x2="1776" y1="1568" y2="1616" x1="1776" />
            <wire x2="1840" y1="1616" y2="1616" x1="1776" />
            <wire x2="1776" y1="1616" y2="1760" x1="1776" />
            <wire x2="1776" y1="1760" y2="1792" x1="1776" />
            <wire x2="1840" y1="1792" y2="1792" x1="1776" />
            <wire x2="1776" y1="1792" y2="1936" x1="1776" />
            <wire x2="1776" y1="1936" y2="1952" x1="1776" />
            <wire x2="1840" y1="1952" y2="1952" x1="1776" />
            <wire x2="1776" y1="1952" y2="1984" x1="1776" />
            <wire x2="1952" y1="1984" y2="1984" x1="1776" />
            <wire x2="1776" y1="1984" y2="2224" x1="1776" />
            <wire x2="1776" y1="2224" y2="2304" x1="1776" />
            <wire x2="1776" y1="2304" y2="2640" x1="1776" />
            <wire x2="1840" y1="2304" y2="2304" x1="1776" />
            <wire x2="1952" y1="2224" y2="2224" x1="1776" />
            <wire x2="1952" y1="1936" y2="1936" x1="1776" />
            <wire x2="1952" y1="1760" y2="1760" x1="1776" />
            <wire x2="1952" y1="1392" y2="1392" x1="1776" />
            <wire x2="1840" y1="1024" y2="1024" x1="1776" />
            <wire x2="1840" y1="992" y2="992" x1="1776" />
            <wire x2="1888" y1="272" y2="272" x1="1776" />
        </branch>
        <iomarker fontsize="28" x="176" y="64" name="X1" orien="R180" />
        <iomarker fontsize="28" x="176" y="128" name="X3" orien="R180" />
        <iomarker fontsize="28" x="176" y="96" name="X2" orien="R180" />
        <instance x="624" y="320" name="XLXI_55" orien="R0" />
        <instance x="624" y="448" name="XLXI_56" orien="R0" />
        <instance x="624" y="640" name="XLXI_57" orien="R0" />
        <instance x="624" y="768" name="XLXI_58" orien="R0" />
        <instance x="624" y="896" name="XLXI_59" orien="R0" />
        <branch name="Y0">
            <wire x2="1440" y1="512" y2="512" x1="1376" />
        </branch>
        <instance x="1120" y="704" name="XLXI_54" orien="R0" />
        <iomarker fontsize="28" x="1440" y="512" name="Y0" orien="R0" />
        <branch name="XLXN_63">
            <wire x2="1120" y1="512" y2="512" x1="880" />
        </branch>
        <branch name="XLXN_64">
            <wire x2="992" y1="352" y2="352" x1="880" />
            <wire x2="992" y1="352" y2="448" x1="992" />
            <wire x2="1120" y1="448" y2="448" x1="992" />
        </branch>
        <branch name="XLXN_65">
            <wire x2="1120" y1="224" y2="224" x1="880" />
            <wire x2="1120" y1="224" y2="384" x1="1120" />
        </branch>
        <branch name="XLXN_66">
            <wire x2="992" y1="672" y2="672" x1="880" />
            <wire x2="992" y1="576" y2="672" x1="992" />
            <wire x2="1120" y1="576" y2="576" x1="992" />
        </branch>
        <branch name="XLXN_67">
            <wire x2="1120" y1="800" y2="800" x1="880" />
            <wire x2="1120" y1="640" y2="800" x1="1120" />
        </branch>
        <iomarker fontsize="28" x="1328" y="1312" name="Y1" orien="R0" />
        <branch name="Y1">
            <wire x2="1328" y1="1312" y2="1312" x1="1296" />
        </branch>
        <rect width="1312" x="260" y="912" height="888" />
        <rect width="1308" x="260" y="164" height="692" />
        <text style="fontsize:72;fontname:Arial" x="1368" y="244">Y0</text>
        <text style="fontsize:72;fontname:Arial" x="1424" y="988">Y1</text>
        <branch name="Y2">
            <wire x2="2736" y1="624" y2="624" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="2736" y="624" name="Y2" orien="R0" />
        <rect width="1220" x="1648" y="156" height="924" />
        <text style="fontsize:72;fontname:Arial" x="2700" y="244">Y2</text>
        <branch name="Y3">
            <wire x2="2624" y1="1856" y2="1856" x1="2592" />
        </branch>
        <iomarker fontsize="28" x="2624" y="1856" name="Y3" orien="R0" />
        <rect width="1228" x="1632" y="1116" height="1404" />
        <text style="fontsize:72;fontname:Arial" x="2708" y="1204">Y3</text>
        <branch name="X0">
            <wire x2="512" y1="32" y2="32" x1="176" />
            <wire x2="512" y1="32" y2="192" x1="512" />
            <wire x2="624" y1="192" y2="192" x1="512" />
            <wire x2="512" y1="192" y2="512" x1="512" />
            <wire x2="624" y1="512" y2="512" x1="512" />
            <wire x2="512" y1="512" y2="640" x1="512" />
            <wire x2="624" y1="640" y2="640" x1="512" />
            <wire x2="512" y1="640" y2="944" x1="512" />
            <wire x2="624" y1="944" y2="944" x1="512" />
            <wire x2="512" y1="944" y2="1104" x1="512" />
            <wire x2="512" y1="1104" y2="1248" x1="512" />
            <wire x2="624" y1="1248" y2="1248" x1="512" />
            <wire x2="512" y1="1248" y2="1264" x1="512" />
            <wire x2="672" y1="1264" y2="1264" x1="512" />
            <wire x2="512" y1="1264" y2="1552" x1="512" />
            <wire x2="512" y1="1552" y2="1584" x1="512" />
            <wire x2="624" y1="1584" y2="1584" x1="512" />
            <wire x2="512" y1="1584" y2="2640" x1="512" />
            <wire x2="672" y1="1552" y2="1552" x1="512" />
            <wire x2="672" y1="1104" y2="1104" x1="512" />
            <wire x2="1824" y1="32" y2="32" x1="512" />
            <wire x2="1824" y1="32" y2="208" x1="1824" />
            <wire x2="1824" y1="208" y2="304" x1="1824" />
            <wire x2="1840" y1="304" y2="304" x1="1824" />
            <wire x2="1824" y1="304" y2="384" x1="1824" />
            <wire x2="1824" y1="384" y2="496" x1="1824" />
            <wire x2="1840" y1="496" y2="496" x1="1824" />
            <wire x2="1824" y1="496" y2="704" x1="1824" />
            <wire x2="1824" y1="704" y2="832" x1="1824" />
            <wire x2="1824" y1="832" y2="896" x1="1824" />
            <wire x2="1824" y1="896" y2="1136" x1="1824" />
            <wire x2="1952" y1="1136" y2="1136" x1="1824" />
            <wire x2="1824" y1="1136" y2="1456" x1="1824" />
            <wire x2="1824" y1="1456" y2="1504" x1="1824" />
            <wire x2="1824" y1="1504" y2="1856" x1="1824" />
            <wire x2="1840" y1="1856" y2="1856" x1="1824" />
            <wire x2="1824" y1="1856" y2="1872" x1="1824" />
            <wire x2="1824" y1="1872" y2="2016" x1="1824" />
            <wire x2="1840" y1="2016" y2="2016" x1="1824" />
            <wire x2="1824" y1="2016" y2="2112" x1="1824" />
            <wire x2="1824" y1="2112" y2="2128" x1="1824" />
            <wire x2="1840" y1="2128" y2="2128" x1="1824" />
            <wire x2="1824" y1="2128" y2="2288" x1="1824" />
            <wire x2="1824" y1="2288" y2="2368" x1="1824" />
            <wire x2="1824" y1="2368" y2="2640" x1="1824" />
            <wire x2="1840" y1="2368" y2="2368" x1="1824" />
            <wire x2="1952" y1="2288" y2="2288" x1="1824" />
            <wire x2="1952" y1="2112" y2="2112" x1="1824" />
            <wire x2="1952" y1="1872" y2="1872" x1="1824" />
            <wire x2="1840" y1="1504" y2="1504" x1="1824" />
            <wire x2="1952" y1="1456" y2="1456" x1="1824" />
            <wire x2="1856" y1="896" y2="896" x1="1824" />
            <wire x2="1856" y1="896" y2="928" x1="1856" />
            <wire x2="1888" y1="928" y2="928" x1="1856" />
            <wire x2="1840" y1="832" y2="832" x1="1824" />
            <wire x2="1888" y1="704" y2="704" x1="1824" />
            <wire x2="1888" y1="384" y2="384" x1="1824" />
            <wire x2="1888" y1="208" y2="208" x1="1824" />
        </branch>
        <instance x="672" y="1104" name="XLXI_87" orien="R0" />
        <instance x="672" y="1456" name="XLXI_89" orien="R0" />
        <instance x="672" y="1616" name="XLXI_90" orien="R0" />
        <instance x="1040" y="1472" name="XLXI_91" orien="R0" />
        <branch name="XLXN_104">
            <wire x2="1040" y1="1008" y2="1008" x1="928" />
            <wire x2="1040" y1="1008" y2="1216" x1="1040" />
        </branch>
        <branch name="XLXN_105">
            <wire x2="976" y1="1168" y2="1168" x1="928" />
            <wire x2="976" y1="1168" y2="1280" x1="976" />
            <wire x2="1040" y1="1280" y2="1280" x1="976" />
        </branch>
        <branch name="XLXN_107">
            <wire x2="944" y1="1328" y2="1328" x1="928" />
            <wire x2="944" y1="1328" y2="1344" x1="944" />
            <wire x2="1040" y1="1344" y2="1344" x1="944" />
        </branch>
        <branch name="XLXN_110">
            <wire x2="1040" y1="1488" y2="1488" x1="928" />
            <wire x2="1040" y1="1408" y2="1488" x1="1040" />
        </branch>
        <instance x="672" y="1296" name="XLXI_92" orien="R0" />
        <instance x="2448" y="816" name="XLXI_77" orien="R0" />
        <instance x="1888" y="400" name="XLXI_98" orien="R0" />
        <instance x="1888" y="576" name="XLXI_99" orien="R0" />
        <instance x="1888" y="880" name="XLXI_102" orien="R0" />
        <instance x="1888" y="768" name="XLXI_101" orien="R0" />
        <branch name="XLXN_119">
            <wire x2="2288" y1="640" y2="640" x1="2144" />
            <wire x2="2288" y1="624" y2="640" x1="2288" />
            <wire x2="2448" y1="624" y2="624" x1="2288" />
        </branch>
        <branch name="XLXN_120">
            <wire x2="2288" y1="784" y2="784" x1="2144" />
            <wire x2="2288" y1="688" y2="784" x1="2288" />
            <wire x2="2448" y1="688" y2="688" x1="2288" />
        </branch>
        <branch name="XLXN_121">
            <wire x2="2448" y1="928" y2="928" x1="2144" />
            <wire x2="2448" y1="752" y2="928" x1="2448" />
        </branch>
        <branch name="XLXN_122">
            <wire x2="2288" y1="448" y2="448" x1="2144" />
            <wire x2="2288" y1="448" y2="560" x1="2288" />
            <wire x2="2448" y1="560" y2="560" x1="2288" />
        </branch>
        <branch name="XLXN_123">
            <wire x2="2448" y1="272" y2="272" x1="2144" />
            <wire x2="2448" y1="272" y2="496" x1="2448" />
        </branch>
        <instance x="1888" y="1056" name="XLXI_104" orien="R0" />
        <instance x="1952" y="1392" name="XLXI_78" orien="R0" />
        <instance x="1952" y="1648" name="XLXI_132" orien="R0" />
        <instance x="2336" y="2080" name="XLXI_133" orien="R0" />
        <instance x="1952" y="1824" name="XLXI_134" orien="R0" />
        <instance x="1952" y="2352" name="XLXI_137" orien="R0" />
        <instance x="1952" y="2176" name="XLXI_135" orien="R0" />
        <branch name="XLXN_132">
            <wire x2="2336" y1="1232" y2="1232" x1="2208" />
            <wire x2="2336" y1="1232" y2="1696" x1="2336" />
        </branch>
        <branch name="XLXN_133">
            <wire x2="2272" y1="1488" y2="1488" x1="2208" />
            <wire x2="2272" y1="1488" y2="1760" x1="2272" />
            <wire x2="2336" y1="1760" y2="1760" x1="2272" />
        </branch>
        <branch name="XLXN_134">
            <wire x2="2224" y1="1696" y2="1696" x1="2208" />
            <wire x2="2224" y1="1696" y2="1824" x1="2224" />
            <wire x2="2336" y1="1824" y2="1824" x1="2224" />
        </branch>
        <branch name="XLXN_135">
            <wire x2="2272" y1="1872" y2="1872" x1="2208" />
            <wire x2="2272" y1="1872" y2="1888" x1="2272" />
            <wire x2="2336" y1="1888" y2="1888" x1="2272" />
        </branch>
        <branch name="XLXN_136">
            <wire x2="2272" y1="2048" y2="2048" x1="2208" />
            <wire x2="2272" y1="1952" y2="2048" x1="2272" />
            <wire x2="2336" y1="1952" y2="1952" x1="2272" />
        </branch>
        <branch name="XLXN_137">
            <wire x2="2336" y1="2224" y2="2224" x1="2208" />
            <wire x2="2336" y1="2016" y2="2224" x1="2336" />
        </branch>
        <instance x="1952" y="2000" name="XLXI_138" orien="R0" />
        <branch name="X2">
            <wire x2="416" y1="96" y2="96" x1="176" />
            <wire x2="416" y1="96" y2="384" x1="416" />
            <wire x2="624" y1="384" y2="384" x1="416" />
            <wire x2="416" y1="384" y2="448" x1="416" />
            <wire x2="624" y1="448" y2="448" x1="416" />
            <wire x2="416" y1="448" y2="832" x1="416" />
            <wire x2="624" y1="832" y2="832" x1="416" />
            <wire x2="416" y1="832" y2="1008" x1="416" />
            <wire x2="416" y1="1008" y2="1136" x1="416" />
            <wire x2="624" y1="1136" y2="1136" x1="416" />
            <wire x2="416" y1="1136" y2="1232" x1="416" />
            <wire x2="416" y1="1232" y2="1376" x1="416" />
            <wire x2="624" y1="1376" y2="1376" x1="416" />
            <wire x2="416" y1="1376" y2="1392" x1="416" />
            <wire x2="416" y1="1392" y2="1472" x1="416" />
            <wire x2="416" y1="1472" y2="1648" x1="416" />
            <wire x2="624" y1="1648" y2="1648" x1="416" />
            <wire x2="416" y1="1648" y2="2640" x1="416" />
            <wire x2="624" y1="1472" y2="1472" x1="416" />
            <wire x2="672" y1="1392" y2="1392" x1="416" />
            <wire x2="672" y1="1232" y2="1232" x1="416" />
            <wire x2="624" y1="1008" y2="1008" x1="416" />
            <wire x2="1728" y1="96" y2="96" x1="416" />
            <wire x2="1728" y1="96" y2="432" x1="1728" />
            <wire x2="1840" y1="432" y2="432" x1="1728" />
            <wire x2="1728" y1="432" y2="512" x1="1728" />
            <wire x2="1888" y1="512" y2="512" x1="1728" />
            <wire x2="1728" y1="512" y2="560" x1="1728" />
            <wire x2="1840" y1="560" y2="560" x1="1728" />
            <wire x2="1728" y1="560" y2="576" x1="1728" />
            <wire x2="1888" y1="576" y2="576" x1="1728" />
            <wire x2="1728" y1="576" y2="768" x1="1728" />
            <wire x2="1728" y1="768" y2="928" x1="1728" />
            <wire x2="1840" y1="928" y2="928" x1="1728" />
            <wire x2="1728" y1="928" y2="1008" x1="1728" />
            <wire x2="1728" y1="1008" y2="1264" x1="1728" />
            <wire x2="1952" y1="1264" y2="1264" x1="1728" />
            <wire x2="1728" y1="1264" y2="1440" x1="1728" />
            <wire x2="1840" y1="1440" y2="1440" x1="1728" />
            <wire x2="1728" y1="1440" y2="1600" x1="1728" />
            <wire x2="1728" y1="1600" y2="1680" x1="1728" />
            <wire x2="1840" y1="1680" y2="1680" x1="1728" />
            <wire x2="1728" y1="1680" y2="1696" x1="1728" />
            <wire x2="1952" y1="1696" y2="1696" x1="1728" />
            <wire x2="1728" y1="1696" y2="2048" x1="1728" />
            <wire x2="1728" y1="2048" y2="2080" x1="1728" />
            <wire x2="1728" y1="2080" y2="2256" x1="1728" />
            <wire x2="1728" y1="2256" y2="2640" x1="1728" />
            <wire x2="1840" y1="2256" y2="2256" x1="1728" />
            <wire x2="1840" y1="2080" y2="2080" x1="1728" />
            <wire x2="1952" y1="2048" y2="2048" x1="1728" />
            <wire x2="1840" y1="1600" y2="1600" x1="1728" />
            <wire x2="1856" y1="1008" y2="1008" x1="1728" />
            <wire x2="1952" y1="1584" y2="1584" x1="1840" />
            <wire x2="1840" y1="1584" y2="1600" x1="1840" />
            <wire x2="1888" y1="992" y2="992" x1="1856" />
            <wire x2="1856" y1="992" y2="1008" x1="1856" />
        </branch>
        <branch name="X3">
            <wire x2="368" y1="128" y2="128" x1="176" />
            <wire x2="368" y1="128" y2="320" x1="368" />
            <wire x2="624" y1="320" y2="320" x1="368" />
            <wire x2="368" y1="320" y2="704" x1="368" />
            <wire x2="624" y1="704" y2="704" x1="368" />
            <wire x2="368" y1="704" y2="976" x1="368" />
            <wire x2="368" y1="976" y2="1200" x1="368" />
            <wire x2="368" y1="1200" y2="1408" x1="368" />
            <wire x2="624" y1="1408" y2="1408" x1="368" />
            <wire x2="368" y1="1408" y2="1424" x1="368" />
            <wire x2="368" y1="1424" y2="1712" x1="368" />
            <wire x2="624" y1="1712" y2="1712" x1="368" />
            <wire x2="368" y1="1712" y2="2640" x1="368" />
            <wire x2="672" y1="1424" y2="1424" x1="368" />
            <wire x2="624" y1="1200" y2="1200" x1="368" />
            <wire x2="672" y1="976" y2="976" x1="368" />
            <wire x2="1680" y1="128" y2="128" x1="368" />
            <wire x2="1680" y1="128" y2="176" x1="1680" />
            <wire x2="1840" y1="176" y2="176" x1="1680" />
            <wire x2="1680" y1="176" y2="336" x1="1680" />
            <wire x2="1888" y1="336" y2="336" x1="1680" />
            <wire x2="1680" y1="336" y2="368" x1="1680" />
            <wire x2="1840" y1="368" y2="368" x1="1680" />
            <wire x2="1680" y1="368" y2="448" x1="1680" />
            <wire x2="1888" y1="448" y2="448" x1="1680" />
            <wire x2="1680" y1="448" y2="688" x1="1680" />
            <wire x2="1680" y1="688" y2="816" x1="1680" />
            <wire x2="1888" y1="816" y2="816" x1="1680" />
            <wire x2="1680" y1="816" y2="864" x1="1680" />
            <wire x2="1680" y1="864" y2="960" x1="1680" />
            <wire x2="1680" y1="960" y2="1328" x1="1680" />
            <wire x2="1680" y1="1328" y2="1376" x1="1680" />
            <wire x2="1840" y1="1376" y2="1376" x1="1680" />
            <wire x2="1680" y1="1376" y2="1520" x1="1680" />
            <wire x2="1952" y1="1520" y2="1520" x1="1680" />
            <wire x2="1680" y1="1520" y2="1632" x1="1680" />
            <wire x2="1680" y1="1632" y2="1744" x1="1680" />
            <wire x2="1840" y1="1744" y2="1744" x1="1680" />
            <wire x2="1680" y1="1744" y2="1808" x1="1680" />
            <wire x2="1680" y1="1808" y2="1920" x1="1680" />
            <wire x2="1840" y1="1920" y2="1920" x1="1680" />
            <wire x2="1680" y1="1920" y2="2160" x1="1680" />
            <wire x2="1680" y1="2160" y2="2192" x1="1680" />
            <wire x2="1680" y1="2192" y2="2432" x1="1680" />
            <wire x2="1680" y1="2432" y2="2640" x1="1680" />
            <wire x2="1840" y1="2432" y2="2432" x1="1680" />
            <wire x2="1840" y1="2192" y2="2192" x1="1680" />
            <wire x2="1952" y1="2160" y2="2160" x1="1680" />
            <wire x2="1952" y1="1808" y2="1808" x1="1680" />
            <wire x2="1952" y1="1632" y2="1632" x1="1680" />
            <wire x2="1952" y1="1328" y2="1328" x1="1680" />
            <wire x2="1840" y1="960" y2="960" x1="1680" />
            <wire x2="1888" y1="864" y2="864" x1="1680" />
        </branch>
    </sheet>
</drawing>