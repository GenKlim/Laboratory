<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="D" />
        <signal name="C" />
        <signal name="B" />
        <signal name="A" />
        <signal name="E" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="XLXN_35" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="XLXN_38" />
        <signal name="Clock" />
        <signal name="XLXN_39" />
        <signal name="XLXN_85" />
        <port polarity="Output" name="D" />
        <port polarity="Output" name="C" />
        <port polarity="Output" name="B" />
        <port polarity="Output" name="A" />
        <port polarity="Output" name="E" />
        <port polarity="Input" name="Clock" />
        <blockdef name="nand4b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="216" y1="-160" y2="-160" x1="256" />
            <circle r="12" cx="204" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
        </blockdef>
        <blockdef name="nand3b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="216" y1="-128" y2="-128" x1="256" />
            <circle r="12" cx="204" cy="-128" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
        </blockdef>
        <blockdef name="nand2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
        </blockdef>
        <blockdef name="nand4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="216" y1="-160" y2="-160" x1="256" />
            <circle r="12" cx="204" cy="-160" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="64" y1="-112" y2="-112" x1="144" />
        </blockdef>
        <blockdef name="nand3b2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="216" y1="-128" y2="-128" x1="256" />
            <circle r="12" cx="204" cy="-128" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
        </blockdef>
        <blockdef name="nand3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="216" y1="-128" y2="-128" x1="256" />
            <circle r="12" cx="204" cy="-128" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="nand2b2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
        </blockdef>
        <blockdef name="nand3b3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="40" y1="-192" y2="-192" x1="0" />
            <circle r="12" cx="52" cy="-192" />
            <line x2="216" y1="-128" y2="-128" x1="256" />
            <circle r="12" cx="204" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
        </blockdef>
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="nand3b1" name="XLXI_13">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="E" name="I2" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
        <block symbolname="nand3b1" name="XLXI_14">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="D" name="I2" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
        <block symbolname="nand2b1" name="XLXI_15">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="nand4" name="XLXI_16">
            <blockpin signalname="XLXN_23" name="I0" />
            <blockpin signalname="XLXN_22" name="I1" />
            <blockpin signalname="XLXN_21" name="I2" />
            <blockpin signalname="XLXN_20" name="I3" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="nand3b2" name="XLXI_17">
            <blockpin signalname="E" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="B" name="I2" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="nand4b1" name="XLXI_12">
            <blockpin signalname="D" name="I0" />
            <blockpin signalname="E" name="I1" />
            <blockpin signalname="C" name="I2" />
            <blockpin signalname="B" name="I3" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="nand2b1" name="XLXI_20">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="E" name="I1" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_21">
            <blockpin signalname="XLXN_28" name="I0" />
            <blockpin signalname="XLXN_27" name="I1" />
            <blockpin signalname="XLXN_26" name="I2" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="nand3b2" name="XLXI_18">
            <blockpin signalname="E" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="C" name="I2" />
            <blockpin signalname="XLXN_28" name="O" />
        </block>
        <block symbolname="nand2b2" name="XLXI_23">
            <blockpin signalname="E" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="XLXN_29" name="O" />
        </block>
        <block symbolname="nand3b1" name="XLXI_26">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="E" name="I2" />
            <blockpin signalname="XLXN_32" name="O" />
        </block>
        <block symbolname="nand3" name="XLXI_22">
            <blockpin signalname="XLXN_32" name="I0" />
            <blockpin signalname="XLXN_30" name="I1" />
            <blockpin signalname="XLXN_29" name="I2" />
            <blockpin signalname="XLXN_33" name="O" />
        </block>
        <block symbolname="nand3b2" name="XLXI_29">
            <blockpin signalname="E" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="D" name="I2" />
            <blockpin signalname="XLXN_37" name="O" />
        </block>
        <block symbolname="nand3b3" name="XLXI_27">
            <blockpin signalname="E" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="A" name="I2" />
            <blockpin signalname="XLXN_35" name="O" />
        </block>
        <block symbolname="nand4" name="XLXI_31">
            <blockpin signalname="XLXN_38" name="I0" />
            <blockpin signalname="XLXN_37" name="I1" />
            <blockpin signalname="XLXN_36" name="I2" />
            <blockpin signalname="XLXN_35" name="I3" />
            <blockpin signalname="XLXN_39" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_87">
            <blockpin signalname="Clock" name="C" />
            <blockpin signalname="XLXN_25" name="D" />
            <blockpin signalname="C" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_85">
            <blockpin signalname="Clock" name="C" />
            <blockpin signalname="XLXN_24" name="D" />
            <blockpin signalname="B" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_84">
            <blockpin signalname="Clock" name="C" />
            <blockpin signalname="XLXN_85" name="D" />
            <blockpin signalname="A" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_88">
            <blockpin signalname="Clock" name="C" />
            <blockpin signalname="XLXN_33" name="D" />
            <blockpin signalname="D" name="Q" />
        </block>
        <block symbolname="nand2b1" name="XLXI_19">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="nand3b1" name="XLXI_25">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="E" name="I2" />
            <blockpin signalname="XLXN_30" name="O" />
        </block>
        <block symbolname="nand3b2" name="XLXI_90">
            <blockpin signalname="E" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="D" name="I2" />
            <blockpin signalname="XLXN_36" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_89">
            <blockpin signalname="Clock" name="C" />
            <blockpin signalname="XLXN_39" name="D" />
            <blockpin signalname="E" name="Q" />
        </block>
        <block symbolname="nand4" name="XLXI_30">
            <blockpin signalname="E" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="C" name="I2" />
            <blockpin signalname="B" name="I3" />
            <blockpin signalname="XLXN_38" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_91">
            <blockpin signalname="XLXN_19" name="I" />
            <blockpin signalname="XLXN_85" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <branch name="XLXN_20">
            <wire x2="1456" y1="592" y2="592" x1="1344" />
            <wire x2="1456" y1="592" y2="736" x1="1456" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="1392" y1="752" y2="752" x1="1344" />
            <wire x2="1392" y1="752" y2="800" x1="1392" />
            <wire x2="1456" y1="800" y2="800" x1="1392" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="1392" y1="928" y2="928" x1="1344" />
            <wire x2="1392" y1="864" y2="928" x1="1392" />
            <wire x2="1456" y1="864" y2="864" x1="1392" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="1456" y1="1088" y2="1088" x1="1344" />
            <wire x2="1456" y1="928" y2="1088" x1="1456" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="1984" y1="832" y2="832" x1="1712" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="1984" y1="1408" y2="1408" x1="1712" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="1456" y1="1280" y2="1280" x1="1344" />
            <wire x2="1456" y1="1280" y2="1344" x1="1456" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="1456" y1="1408" y2="1408" x1="1344" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="1456" y1="1552" y2="1552" x1="1344" />
            <wire x2="1456" y1="1472" y2="1552" x1="1456" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="1424" y1="1728" y2="1728" x1="1328" />
            <wire x2="1424" y1="1728" y2="1824" x1="1424" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="1424" y1="1888" y2="1888" x1="1328" />
        </branch>
        <branch name="XLXN_32">
            <wire x2="1424" y1="2048" y2="2048" x1="1328" />
            <wire x2="1424" y1="1952" y2="2048" x1="1424" />
        </branch>
        <branch name="XLXN_33">
            <wire x2="1984" y1="1888" y2="1888" x1="1680" />
        </branch>
        <branch name="XLXN_35">
            <wire x2="1440" y1="2224" y2="2224" x1="1328" />
            <wire x2="1440" y1="2224" y2="2416" x1="1440" />
        </branch>
        <branch name="XLXN_36">
            <wire x2="1376" y1="2400" y2="2400" x1="1328" />
            <wire x2="1376" y1="2400" y2="2480" x1="1376" />
            <wire x2="1440" y1="2480" y2="2480" x1="1376" />
        </branch>
        <branch name="XLXN_37">
            <wire x2="1376" y1="2576" y2="2576" x1="1328" />
            <wire x2="1376" y1="2544" y2="2576" x1="1376" />
            <wire x2="1440" y1="2544" y2="2544" x1="1376" />
        </branch>
        <branch name="XLXN_38">
            <wire x2="1440" y1="2784" y2="2784" x1="1328" />
            <wire x2="1440" y1="2608" y2="2784" x1="1440" />
        </branch>
        <branch name="Clock">
            <wire x2="1936" y1="2800" y2="2800" x1="1840" />
            <wire x2="1968" y1="512" y2="512" x1="1936" />
            <wire x2="1936" y1="512" y2="960" x1="1936" />
            <wire x2="1936" y1="960" y2="1536" x1="1936" />
            <wire x2="1936" y1="1536" y2="2016" x1="1936" />
            <wire x2="1936" y1="2016" y2="2640" x1="1936" />
            <wire x2="1936" y1="2640" y2="2800" x1="1936" />
            <wire x2="1984" y1="2640" y2="2640" x1="1936" />
            <wire x2="1984" y1="2016" y2="2016" x1="1936" />
            <wire x2="1984" y1="1536" y2="1536" x1="1936" />
            <wire x2="1984" y1="960" y2="960" x1="1936" />
        </branch>
        <branch name="XLXN_39">
            <wire x2="1984" y1="2512" y2="2512" x1="1696" />
        </branch>
        <instance x="1088" y="720" name="XLXI_13" orien="R0" />
        <instance x="1088" y="880" name="XLXI_14" orien="R0" />
        <instance x="1088" y="1024" name="XLXI_15" orien="R0" />
        <instance x="1456" y="992" name="XLXI_16" orien="R0" />
        <instance x="1088" y="1216" name="XLXI_17" orien="R0" />
        <instance x="1088" y="544" name="XLXI_12" orien="R0" />
        <instance x="1088" y="1376" name="XLXI_20" orien="R0" />
        <instance x="1456" y="1536" name="XLXI_21" orien="R0" />
        <instance x="1088" y="1680" name="XLXI_18" orien="R0" />
        <instance x="1072" y="1824" name="XLXI_23" orien="R0" />
        <instance x="1072" y="2176" name="XLXI_26" orien="R0" />
        <instance x="1424" y="2016" name="XLXI_22" orien="R0" />
        <instance x="1072" y="2704" name="XLXI_29" orien="R0" />
        <instance x="1072" y="2352" name="XLXI_27" orien="R0" />
        <instance x="1440" y="2672" name="XLXI_31" orien="R0" />
        <instance x="1984" y="1664" name="XLXI_87" orien="R0" />
        <instance x="1984" y="1088" name="XLXI_85" orien="R0" />
        <instance x="1968" y="640" name="XLXI_84" orien="R0" />
        <instance x="1984" y="2144" name="XLXI_88" orien="R0" />
        <instance x="1088" y="1504" name="XLXI_19" orien="R0" />
        <instance x="1072" y="2016" name="XLXI_25" orien="R0" />
        <instance x="1072" y="2528" name="XLXI_90" orien="R0" />
        <instance x="1984" y="2768" name="XLXI_89" orien="R0" />
        <instance x="1072" y="2944" name="XLXI_30" orien="R0" />
        <iomarker fontsize="28" x="1840" y="2800" name="Clock" orien="R180" />
        <iomarker fontsize="28" x="848" y="96" name="E" orien="R270" />
        <iomarker fontsize="28" x="896" y="96" name="D" orien="R270" />
        <iomarker fontsize="28" x="944" y="96" name="C" orien="R270" />
        <iomarker fontsize="28" x="992" y="96" name="B" orien="R270" />
        <iomarker fontsize="28" x="1040" y="96" name="A" orien="R270" />
        <branch name="D">
            <wire x2="896" y1="96" y2="224" x1="896" />
            <wire x2="896" y1="224" y2="480" x1="896" />
            <wire x2="1088" y1="480" y2="480" x1="896" />
            <wire x2="896" y1="480" y2="688" x1="896" />
            <wire x2="1088" y1="688" y2="688" x1="896" />
            <wire x2="896" y1="688" y2="1088" x1="896" />
            <wire x2="1088" y1="1088" y2="1088" x1="896" />
            <wire x2="896" y1="1088" y2="1376" x1="896" />
            <wire x2="1088" y1="1376" y2="1376" x1="896" />
            <wire x2="896" y1="1376" y2="1552" x1="896" />
            <wire x2="1088" y1="1552" y2="1552" x1="896" />
            <wire x2="896" y1="1552" y2="1696" x1="896" />
            <wire x2="1072" y1="1696" y2="1696" x1="896" />
            <wire x2="896" y1="1696" y2="1888" x1="896" />
            <wire x2="896" y1="1888" y2="1952" x1="896" />
            <wire x2="896" y1="1952" y2="2048" x1="896" />
            <wire x2="1072" y1="2048" y2="2048" x1="896" />
            <wire x2="896" y1="2048" y2="2224" x1="896" />
            <wire x2="1072" y1="2224" y2="2224" x1="896" />
            <wire x2="896" y1="2224" y2="2336" x1="896" />
            <wire x2="1072" y1="2336" y2="2336" x1="896" />
            <wire x2="896" y1="2336" y2="2512" x1="896" />
            <wire x2="1072" y1="2512" y2="2512" x1="896" />
            <wire x2="896" y1="2512" y2="2816" x1="896" />
            <wire x2="1072" y1="2816" y2="2816" x1="896" />
            <wire x2="896" y1="2816" y2="2864" x1="896" />
            <wire x2="1072" y1="1888" y2="1888" x1="896" />
            <wire x2="2576" y1="224" y2="224" x1="896" />
            <wire x2="2576" y1="224" y2="1888" x1="2576" />
            <wire x2="2576" y1="1888" y2="1888" x1="2368" />
        </branch>
        <branch name="A">
            <wire x2="1040" y1="96" y2="272" x1="1040" />
            <wire x2="2528" y1="272" y2="272" x1="1040" />
            <wire x2="2528" y1="272" y2="384" x1="2528" />
            <wire x2="1040" y1="272" y2="2160" x1="1040" />
            <wire x2="1072" y1="2160" y2="2160" x1="1040" />
            <wire x2="1040" y1="2160" y2="2864" x1="1040" />
            <wire x2="2528" y1="384" y2="384" x1="2352" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="1504" y1="384" y2="384" x1="1344" />
        </branch>
        <instance x="1504" y="416" name="XLXI_91" orien="R0" />
        <branch name="XLXN_85">
            <wire x2="1968" y1="384" y2="384" x1="1728" />
        </branch>
        <branch name="B">
            <wire x2="992" y1="96" y2="256" x1="992" />
            <wire x2="2544" y1="256" y2="256" x1="992" />
            <wire x2="2544" y1="256" y2="832" x1="2544" />
            <wire x2="992" y1="256" y2="288" x1="992" />
            <wire x2="1088" y1="288" y2="288" x1="992" />
            <wire x2="992" y1="288" y2="656" x1="992" />
            <wire x2="1088" y1="656" y2="656" x1="992" />
            <wire x2="992" y1="656" y2="816" x1="992" />
            <wire x2="1088" y1="816" y2="816" x1="992" />
            <wire x2="992" y1="816" y2="896" x1="992" />
            <wire x2="1088" y1="896" y2="896" x1="992" />
            <wire x2="992" y1="896" y2="1024" x1="992" />
            <wire x2="992" y1="1024" y2="1952" x1="992" />
            <wire x2="992" y1="1952" y2="2400" x1="992" />
            <wire x2="1072" y1="2400" y2="2400" x1="992" />
            <wire x2="992" y1="2400" y2="2688" x1="992" />
            <wire x2="1072" y1="2688" y2="2688" x1="992" />
            <wire x2="992" y1="2688" y2="2864" x1="992" />
            <wire x2="1072" y1="1952" y2="1952" x1="992" />
            <wire x2="1088" y1="1024" y2="1024" x1="992" />
            <wire x2="2544" y1="832" y2="832" x1="2368" />
        </branch>
        <branch name="E">
            <wire x2="848" y1="96" y2="208" x1="848" />
            <wire x2="2592" y1="208" y2="208" x1="848" />
            <wire x2="2592" y1="208" y2="2512" x1="2592" />
            <wire x2="848" y1="208" y2="416" x1="848" />
            <wire x2="1088" y1="416" y2="416" x1="848" />
            <wire x2="848" y1="416" y2="528" x1="848" />
            <wire x2="1088" y1="528" y2="528" x1="848" />
            <wire x2="848" y1="528" y2="1152" x1="848" />
            <wire x2="1088" y1="1152" y2="1152" x1="848" />
            <wire x2="848" y1="1152" y2="1248" x1="848" />
            <wire x2="1088" y1="1248" y2="1248" x1="848" />
            <wire x2="848" y1="1248" y2="1616" x1="848" />
            <wire x2="1088" y1="1616" y2="1616" x1="848" />
            <wire x2="848" y1="1616" y2="1760" x1="848" />
            <wire x2="1072" y1="1760" y2="1760" x1="848" />
            <wire x2="848" y1="1760" y2="1824" x1="848" />
            <wire x2="848" y1="1824" y2="1984" x1="848" />
            <wire x2="1072" y1="1984" y2="1984" x1="848" />
            <wire x2="848" y1="1984" y2="2288" x1="848" />
            <wire x2="1072" y1="2288" y2="2288" x1="848" />
            <wire x2="848" y1="2288" y2="2464" x1="848" />
            <wire x2="1072" y1="2464" y2="2464" x1="848" />
            <wire x2="848" y1="2464" y2="2640" x1="848" />
            <wire x2="1072" y1="2640" y2="2640" x1="848" />
            <wire x2="848" y1="2640" y2="2880" x1="848" />
            <wire x2="1072" y1="2880" y2="2880" x1="848" />
            <wire x2="1072" y1="1824" y2="1824" x1="848" />
            <wire x2="2592" y1="2512" y2="2512" x1="2368" />
        </branch>
        <branch name="C">
            <wire x2="944" y1="96" y2="240" x1="944" />
            <wire x2="2560" y1="240" y2="240" x1="944" />
            <wire x2="2560" y1="240" y2="1408" x1="2560" />
            <wire x2="944" y1="240" y2="352" x1="944" />
            <wire x2="1088" y1="352" y2="352" x1="944" />
            <wire x2="944" y1="352" y2="592" x1="944" />
            <wire x2="1088" y1="592" y2="592" x1="944" />
            <wire x2="944" y1="592" y2="752" x1="944" />
            <wire x2="1088" y1="752" y2="752" x1="944" />
            <wire x2="944" y1="752" y2="960" x1="944" />
            <wire x2="1088" y1="960" y2="960" x1="944" />
            <wire x2="944" y1="960" y2="1024" x1="944" />
            <wire x2="944" y1="1024" y2="1312" x1="944" />
            <wire x2="1088" y1="1312" y2="1312" x1="944" />
            <wire x2="944" y1="1312" y2="1440" x1="944" />
            <wire x2="1088" y1="1440" y2="1440" x1="944" />
            <wire x2="944" y1="1440" y2="1488" x1="944" />
            <wire x2="1088" y1="1488" y2="1488" x1="944" />
            <wire x2="944" y1="1488" y2="2112" x1="944" />
            <wire x2="1072" y1="2112" y2="2112" x1="944" />
            <wire x2="944" y1="2112" y2="2576" x1="944" />
            <wire x2="1072" y1="2576" y2="2576" x1="944" />
            <wire x2="944" y1="2576" y2="2752" x1="944" />
            <wire x2="1072" y1="2752" y2="2752" x1="944" />
            <wire x2="944" y1="2752" y2="2864" x1="944" />
            <wire x2="2560" y1="1408" y2="1408" x1="2368" />
        </branch>
    </sheet>
</drawing>