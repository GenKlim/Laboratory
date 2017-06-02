<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="E">
        </signal>
        <signal name="D">
        </signal>
        <signal name="C">
        </signal>
        <signal name="B">
        </signal>
        <signal name="A">
        </signal>
        <signal name="XLXN_141" />
        <signal name="XLXN_143" />
        <signal name="XLXN_144" />
        <signal name="XLXN_145" />
        <signal name="XLXN_146" />
        <signal name="XLXN_147" />
        <signal name="XLXN_156" />
        <signal name="XLXN_157" />
        <signal name="XLXN_158" />
        <signal name="XLXN_159" />
        <signal name="XLXN_160" />
        <signal name="XLXN_231" />
        <signal name="XLXN_161" />
        <signal name="XLXN_162" />
        <signal name="CLK" />
        <signal name="XLXN_242" />
        <signal name="XLXN_243" />
        <signal name="XLXN_244" />
        <signal name="XLXN_245" />
        <signal name="XLXN_246" />
        <signal name="XLXN_254" />
        <signal name="XLXN_255" />
        <signal name="XLXN_256" />
        <signal name="XLXN_257" />
        <signal name="XLXN_258" />
        <signal name="XLXN_260" />
        <signal name="XLXN_261" />
        <port polarity="Input" name="CLK" />
        <blockdef name="nor4b3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="28" y1="-64" y2="-64" x1="0" />
            <circle r="10" cx="38" cy="-62" />
            <line x2="32" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="44" cy="-128" />
            <line x2="32" y1="-192" y2="-192" x1="0" />
            <circle r="12" cx="44" cy="-192" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="216" y1="-160" y2="-160" x1="256" />
            <circle r="12" cx="204" cy="-160" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
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
        <blockdef name="nor3b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
            <line x2="216" y1="-128" y2="-128" x1="256" />
            <circle r="12" cx="204" cy="-128" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="28" y1="-64" y2="-64" x1="0" />
            <circle r="10" cx="38" cy="-62" />
        </blockdef>
        <blockdef name="fjkc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <rect width="256" x="64" y="-384" height="320" />
        </blockdef>
        <blockdef name="or2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="32" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="44" cy="-64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
        </blockdef>
        <blockdef name="nor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
        </blockdef>
        <blockdef name="nor2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="32" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="44" cy="-64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
        </blockdef>
        <blockdef name="nor3b3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="28" y1="-64" y2="-64" x1="0" />
            <circle r="10" cx="38" cy="-62" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="16" cx="56" cy="-128" />
            <line x2="28" y1="-192" y2="-192" x1="0" />
            <circle r="8" cx="36" cy="-192" />
            <line x2="216" y1="-128" y2="-128" x1="256" />
            <circle r="12" cx="204" cy="-128" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
        </blockdef>
        <block symbolname="nor4b3" name="XLXI_1">
            <blockpin signalname="E" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="B" name="I2" />
            <blockpin signalname="D" name="I3" />
            <blockpin signalname="XLXN_144" name="O" />
        </block>
        <block symbolname="fjkc" name="XLXI_7">
            <blockpin signalname="CLK" name="C" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_144" name="J" />
            <blockpin signalname="XLXN_143" name="K" />
            <blockpin signalname="A" name="Q" />
        </block>
        <block symbolname="nor3b1" name="XLXI_4">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="E" name="I2" />
            <blockpin signalname="XLXN_141" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="XLXN_141" name="I" />
            <blockpin signalname="XLXN_146" name="O" />
        </block>
        <block symbolname="or2b1" name="XLXI_11">
            <blockpin signalname="A" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_143" name="O" />
        </block>
        <block symbolname="fjkc" name="XLXI_12">
            <blockpin signalname="CLK" name="C" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_146" name="J" />
            <blockpin signalname="XLXN_146" name="K" />
            <blockpin signalname="B" name="Q" />
        </block>
        <block symbolname="fjkc" name="XLXI_13">
            <blockpin signalname="CLK" name="C" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_157" name="J" />
            <blockpin signalname="XLXN_157" name="K" />
            <blockpin signalname="C" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_18">
            <blockpin signalname="XLXN_147" name="I" />
            <blockpin signalname="XLXN_157" name="O" />
        </block>
        <block symbolname="nor2" name="XLXI_32">
            <blockpin signalname="D" name="I0" />
            <blockpin signalname="E" name="I1" />
            <blockpin signalname="XLXN_147" name="O" />
        </block>
        <block symbolname="nor2b1" name="XLXI_33">
            <blockpin signalname="E" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="XLXN_160" name="O" />
        </block>
        <block symbolname="nor2b1" name="XLXI_34">
            <blockpin signalname="E" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="XLXN_161" name="O" />
        </block>
        <block symbolname="nor2" name="XLXI_35">
            <blockpin signalname="XLXN_161" name="I0" />
            <blockpin signalname="XLXN_160" name="I1" />
            <blockpin signalname="XLXN_159" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_29">
            <blockpin signalname="E" name="I" />
            <blockpin signalname="XLXN_158" name="O" />
        </block>
        <block symbolname="fjkc" name="XLXI_15">
            <blockpin signalname="CLK" name="C" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_246" name="J" />
            <blockpin signalname="XLXN_245" name="K" />
            <blockpin signalname="E" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_87">
            <blockpin signalname="XLXN_243" name="I" />
            <blockpin signalname="XLXN_245" name="O" />
        </block>
        <block symbolname="nor3b3" name="XLXI_85">
            <blockpin signalname="D" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="B" name="I2" />
            <blockpin signalname="XLXN_243" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_86">
            <blockpin signalname="A" name="I" />
            <blockpin signalname="XLXN_242" name="O" />
        </block>
        <block symbolname="nor2" name="XLXI_93">
            <blockpin signalname="XLXN_243" name="I0" />
            <blockpin signalname="XLXN_242" name="I1" />
            <blockpin signalname="XLXN_246" name="O" />
        </block>
        <block symbolname="fjkc" name="XLXI_14">
            <blockpin signalname="CLK" name="C" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_158" name="J" />
            <blockpin signalname="XLXN_159" name="K" />
            <blockpin signalname="D" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <instance x="1824" y="960" name="XLXI_4" orien="R0" />
        <branch name="XLXN_141">
            <wire x2="2112" y1="832" y2="832" x1="2080" />
        </branch>
        <instance x="2112" y="864" name="XLXI_3" orien="R0" />
        <instance x="1808" y="688" name="XLXI_11" orien="R0" />
        <branch name="XLXN_143">
            <wire x2="2304" y1="592" y2="592" x1="2064" />
            <wire x2="2304" y1="416" y2="592" x1="2304" />
            <wire x2="2544" y1="416" y2="416" x1="2304" />
        </branch>
        <branch name="XLXN_144">
            <wire x2="2544" y1="352" y2="352" x1="2080" />
        </branch>
        <instance x="2544" y="672" name="XLXI_7" orien="R0" />
        <instance x="2544" y="1152" name="XLXI_12" orien="R0" />
        <branch name="XLXN_146">
            <wire x2="2448" y1="832" y2="832" x1="2336" />
            <wire x2="2544" y1="832" y2="832" x1="2448" />
            <wire x2="2448" y1="832" y2="896" x1="2448" />
            <wire x2="2544" y1="896" y2="896" x1="2448" />
        </branch>
        <instance x="2544" y="1600" name="XLXI_13" orien="R0" />
        <branch name="XLXN_147">
            <wire x2="2096" y1="1280" y2="1280" x1="2064" />
        </branch>
        <instance x="2096" y="1312" name="XLXI_18" orien="R0" />
        <branch name="XLXN_157">
            <wire x2="2448" y1="1280" y2="1280" x1="2320" />
            <wire x2="2448" y1="1280" y2="1344" x1="2448" />
            <wire x2="2544" y1="1344" y2="1344" x1="2448" />
            <wire x2="2544" y1="1280" y2="1280" x1="2448" />
        </branch>
        <instance x="1808" y="1376" name="XLXI_32" orien="R0" />
        <branch name="XLXN_158">
            <wire x2="2288" y1="1568" y2="1568" x1="2048" />
            <wire x2="2288" y1="1568" y2="1792" x1="2288" />
            <wire x2="2544" y1="1792" y2="1792" x1="2288" />
        </branch>
        <branch name="XLXN_159">
            <wire x2="2544" y1="1856" y2="1856" x1="2400" />
        </branch>
        <branch name="XLXN_160">
            <wire x2="2112" y1="1776" y2="1776" x1="2080" />
            <wire x2="2112" y1="1776" y2="1824" x1="2112" />
            <wire x2="2144" y1="1824" y2="1824" x1="2112" />
        </branch>
        <branch name="XLXN_161">
            <wire x2="2112" y1="1936" y2="1936" x1="2080" />
            <wire x2="2144" y1="1888" y2="1888" x1="2112" />
            <wire x2="2112" y1="1888" y2="1936" x1="2112" />
        </branch>
        <instance x="1824" y="1872" name="XLXI_33" orien="R0" />
        <instance x="1824" y="2032" name="XLXI_34" orien="R0" />
        <instance x="2144" y="1952" name="XLXI_35" orien="R0" />
        <instance x="1824" y="1600" name="XLXI_29" orien="R0" />
        <branch name="CLK">
            <wire x2="2496" y1="2704" y2="2704" x1="2384" />
            <wire x2="2544" y1="544" y2="544" x1="2496" />
            <wire x2="2496" y1="544" y2="1024" x1="2496" />
            <wire x2="2544" y1="1024" y2="1024" x1="2496" />
            <wire x2="2496" y1="1024" y2="1472" x1="2496" />
            <wire x2="2544" y1="1472" y2="1472" x1="2496" />
            <wire x2="2496" y1="1472" y2="1984" x1="2496" />
            <wire x2="2544" y1="1984" y2="1984" x1="2496" />
            <wire x2="2496" y1="1984" y2="2560" x1="2496" />
            <wire x2="2544" y1="2560" y2="2560" x1="2496" />
            <wire x2="2496" y1="2560" y2="2704" x1="2496" />
        </branch>
        <instance x="2208" y="2592" name="XLXI_87" orien="R0" />
        <instance x="1824" y="2592" name="XLXI_85" orien="R0" />
        <instance x="1808" y="2336" name="XLXI_86" orien="R0" />
        <branch name="XLXN_245">
            <wire x2="2432" y1="2432" y2="2560" x1="2432" />
            <wire x2="2544" y1="2432" y2="2432" x1="2432" />
        </branch>
        <branch name="XLXN_246">
            <wire x2="2544" y1="2368" y2="2368" x1="2464" />
        </branch>
        <instance x="2208" y="2464" name="XLXI_93" orien="R0" />
        <branch name="XLXN_242">
            <wire x2="2048" y1="2304" y2="2304" x1="2032" />
            <wire x2="2048" y1="2304" y2="2336" x1="2048" />
            <wire x2="2208" y1="2336" y2="2336" x1="2048" />
        </branch>
        <branch name="XLXN_243">
            <wire x2="2128" y1="2464" y2="2464" x1="2080" />
            <wire x2="2128" y1="2464" y2="2560" x1="2128" />
            <wire x2="2208" y1="2560" y2="2560" x1="2128" />
            <wire x2="2208" y1="2400" y2="2400" x1="2128" />
            <wire x2="2128" y1="2400" y2="2464" x1="2128" />
        </branch>
        <instance x="2544" y="2688" name="XLXI_15" orien="R0" />
        <instance x="1824" y="512" name="XLXI_1" orien="R0" />
        <branch name="E">
            <wire x2="1552" y1="208" y2="448" x1="1552" />
            <wire x2="1824" y1="448" y2="448" x1="1552" />
            <wire x2="1552" y1="448" y2="768" x1="1552" />
            <wire x2="1824" y1="768" y2="768" x1="1552" />
            <wire x2="1552" y1="768" y2="1248" x1="1552" />
            <wire x2="1808" y1="1248" y2="1248" x1="1552" />
            <wire x2="1552" y1="1248" y2="1568" x1="1552" />
            <wire x2="1824" y1="1568" y2="1568" x1="1552" />
            <wire x2="1552" y1="1568" y2="1808" x1="1552" />
            <wire x2="1824" y1="1808" y2="1808" x1="1552" />
            <wire x2="1552" y1="1808" y2="1968" x1="1552" />
            <wire x2="1824" y1="1968" y2="1968" x1="1552" />
            <wire x2="1552" y1="1968" y2="2784" x1="1552" />
            <wire x2="2944" y1="2784" y2="2784" x1="1552" />
            <wire x2="2944" y1="2432" y2="2432" x1="2928" />
            <wire x2="2944" y1="2432" y2="2784" x1="2944" />
        </branch>
        <instance x="2544" y="2112" name="XLXI_14" orien="R0" />
        <branch name="D">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="208" type="branch" />
            <wire x2="1600" y1="208" y2="256" x1="1600" />
            <wire x2="1824" y1="256" y2="256" x1="1600" />
            <wire x2="1600" y1="256" y2="832" x1="1600" />
            <wire x2="1824" y1="832" y2="832" x1="1600" />
            <wire x2="1600" y1="832" y2="1312" x1="1600" />
            <wire x2="1808" y1="1312" y2="1312" x1="1600" />
            <wire x2="1600" y1="1312" y2="2528" x1="1600" />
            <wire x2="1824" y1="2528" y2="2528" x1="1600" />
            <wire x2="1600" y1="2528" y2="2800" x1="1600" />
            <wire x2="2960" y1="2800" y2="2800" x1="1600" />
            <wire x2="2960" y1="1856" y2="1856" x1="2928" />
            <wire x2="2960" y1="1856" y2="2800" x1="2960" />
        </branch>
        <branch name="C">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="208" type="branch" />
            <wire x2="1648" y1="208" y2="384" x1="1648" />
            <wire x2="1824" y1="384" y2="384" x1="1648" />
            <wire x2="1648" y1="384" y2="896" x1="1648" />
            <wire x2="1824" y1="896" y2="896" x1="1648" />
            <wire x2="1648" y1="896" y2="1744" x1="1648" />
            <wire x2="1824" y1="1744" y2="1744" x1="1648" />
            <wire x2="1648" y1="1744" y2="2464" x1="1648" />
            <wire x2="1824" y1="2464" y2="2464" x1="1648" />
            <wire x2="1648" y1="2464" y2="2816" x1="1648" />
            <wire x2="2976" y1="2816" y2="2816" x1="1648" />
            <wire x2="2976" y1="1344" y2="1344" x1="2928" />
            <wire x2="2976" y1="1344" y2="2816" x1="2976" />
        </branch>
        <branch name="B">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="1696" y="208" type="branch" />
            <wire x2="1696" y1="208" y2="320" x1="1696" />
            <wire x2="1824" y1="320" y2="320" x1="1696" />
            <wire x2="1696" y1="320" y2="1904" x1="1696" />
            <wire x2="1824" y1="1904" y2="1904" x1="1696" />
            <wire x2="1696" y1="1904" y2="2400" x1="1696" />
            <wire x2="1824" y1="2400" y2="2400" x1="1696" />
            <wire x2="1696" y1="2400" y2="2832" x1="1696" />
            <wire x2="2992" y1="2832" y2="2832" x1="1696" />
            <wire x2="2992" y1="896" y2="896" x1="2928" />
            <wire x2="2992" y1="896" y2="2832" x1="2992" />
        </branch>
        <branch name="A">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="208" type="branch" />
            <wire x2="1744" y1="208" y2="560" x1="1744" />
            <wire x2="1808" y1="560" y2="560" x1="1744" />
            <wire x2="1744" y1="560" y2="624" x1="1744" />
            <wire x2="1808" y1="624" y2="624" x1="1744" />
            <wire x2="1744" y1="624" y2="2304" x1="1744" />
            <wire x2="1808" y1="2304" y2="2304" x1="1744" />
            <wire x2="1744" y1="2304" y2="2848" x1="1744" />
            <wire x2="3008" y1="2848" y2="2848" x1="1744" />
            <wire x2="3008" y1="416" y2="416" x1="2928" />
            <wire x2="3008" y1="416" y2="2848" x1="3008" />
        </branch>
        <iomarker fontsize="28" x="2384" y="2704" name="CLK" orien="R180" />
    </sheet>
</drawing>