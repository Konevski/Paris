library IEEE;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ICI_tb is
end ICI_tb;

architecture tb of ICI_tb is

    signal a,b,c,d : bit;
    signal e,f,g,h : bit;
    signal x : bit;

begin

    -- TESTBENCH CONNECTIION WITH ICI
    UUT : entity work.ici port map (a => A, b => B, c => C, d => D, e => E, f => F, g => G, h => H, x => X);
    
    
    --CAR FIXED NS
    a <= '0', '0' after 240 ns, '0' after 480 ns, '0' after 720 ns, '0' after 960 ns, '0' after 1200 ns, '0' after 1440 ns, '0' after 1680 ns, '1' after 1920 ns, '1' after 2160 ns, '1' after 2400 ns, '1' after 2640 ns;
    b <= '0', '0' after 240 ns, '0' after 480 ns, '0' after 720 ns, '1' after 960 ns, '1' after 1200 ns, '1' after 1440 ns, '1' after 1680 ns, '0' after 1920 ns, '0' after 2160 ns, '0' after 2400 ns, '0' after 2640 ns;
    c <= '0', '0' after 240 ns, '1' after 480 ns, '1' after 720 ns, '0' after 960 ns, '0' after 1200 ns, '1' after 1440 ns, '1' after 1680 ns, '0' after 1920 ns, '0' after 2160 ns, '1' after 2400 ns, '1' after 2640 ns;
    d <= '0', '1' after 240 ns, '0' after 480 ns, '1' after 720 ns, '0' after 960 ns, '1' after 1200 ns, '0' after 1440 ns, '1' after 1680 ns, '0' after 1920 ns, '1' after 2160 ns, '0' after 2400 ns, '1' after 2640 ns;

    e <= '0', '0' after 20 ns, '0' after 40 ns, '0' after 60 ns, '0' after 80 ns, '0' after 100 ns,'0' after 120 ns, '0' after 140 ns, '1' after 160 ns, '1' after 180 ns, '1' after 200 ns, '1' after 220 ns,
              '0' after 240 ns, '0' after 260 ns, '0' after 280 ns, '0' after 300 ns, '0' after 320 ns, '0' after 340 ns, '0' after 360 ns, '0' after 380 ns, '1' after 400 ns,'1' after 420 ns, '1' after 440 ns, '1' after 460 ns,
              '0' after 480 ns, '0' after 500 ns, '0' after 520 ns, '0' after 540 ns, '0' after 560 ns, '0' after 580 ns, '0' after 600 ns, '0' after 620 ns, '1' after 640 ns,'1' after 660 ns, '1' after 680 ns, '1' after 700 ns,
              '0' after 720 ns, '0' after 740 ns, '0' after 760 ns, '0' after 780 ns, '0' after 800 ns, '0' after 820 ns, '0' after 840 ns, '0' after 860 ns, '1' after 880 ns,'1' after 900 ns, '1' after 920 ns, '1' after 940 ns,
              '0' after 960 ns, '0' after 980 ns, '0' after 1000 ns,'0' after 1020 ns, '0' after 1040 ns, '0' after 1060 ns, '0' after 1080 ns, '0' after 1100 ns, '1' after 1120 ns,'1' after 1140 ns, '1' after 1160 ns, '1' after 1180 ns,
              '0' after 1200 ns, '0' after 1220 ns, '0' after 1240 ns, '0' after 1260 ns, '0' after 1280 ns, '0' after 1300 ns, '0' after 1320 ns, '0' after 1340 ns, '1' after 1360 ns,'1' after 1380 ns, '1' after 1400 ns, '1' after 1420 ns,
              '0' after 1440 ns, '0' after 1460 ns, '0' after 1480 ns, '0' after 1500 ns, '0' after 1520 ns, '0' after 1540 ns, '0' after 1560 ns, '0' after 1580 ns, '1' after 1600 ns, '1' after 1620 ns, '1' after 1640 ns, '1' after 1660 ns,
              '0' after 1680 ns, '0' after 1700 ns, '0' after 1720 ns, '0' after 1740 ns, '0' after 1760 ns, '0' after 1780 ns, '0' after 1800 ns, '0' after 1820 ns, '1' after 1840 ns, '1' after 1860 ns, '1' after 1880 ns, '1' after 1900 ns,
              '0' after 1920 ns, '0' after 1940 ns, '0' after 1960 ns, '0' after 1980 ns, '0' after 2000 ns, '0' after 2020 ns, '0' after 2040 ns, '0' after 2060 ns, '1' after 2080 ns, '1' after 2100 ns, '1' after 2120 ns, '1' after 2140 ns,
              '0' after 2160 ns, '0' after 2180 ns, '0' after 2200 ns, '0' after 2220 ns, '0' after 2240 ns, '0' after 2260 ns, '0' after 2280 ns, '0' after 2300 ns, '1' after 2320 ns, '1' after 2340 ns, '1' after 2360 ns, '1' after 2380 ns,
              '0' after 2400 ns, '0' after 2420 ns, '0' after 2440 ns, '0' after 2460 ns, '0' after 2480 ns, '0' after 2500 ns, '0' after 2520 ns, '0' after 2540 ns, '1' after 2560 ns, '1' after 2580 ns, '1' after 2600 ns, '1' after 2620 ns,
              '0' after 2640 ns, '0' after 2660 ns, '0' after 2680 ns, '0' after 2700 ns, '0' after 2720 ns, '0' after 2740 ns, '0' after 2760 ns, '0' after 2780 ns, '1' after 2800 ns, '1' after 2820 ns, '1' after 2840 ns, '1' after 2860 ns;

    f <= '0', '0' after 20 ns, '0' after 40 ns, '0' after 60 ns, '1' after 80 ns, '1' after 100 ns,'1' after 120 ns, '1' after 140 ns, '0' after 160 ns, '0' after 180 ns, '0' after 200 ns, '0' after 220 ns,
              '0' after 240 ns, '0' after 260 ns, '0' after 280 ns, '0' after 300 ns, '1' after 320 ns, '1' after 340 ns, '1' after 360 ns, '1' after 380 ns, '0' after 400 ns,'0' after 420 ns, '0' after 440 ns, '0' after 460 ns,
              '0' after 480 ns, '0' after 500 ns, '0' after 520 ns, '0' after 540 ns, '1' after 560 ns, '1' after 580 ns, '1' after 600 ns, '1' after 620 ns, '0' after 640 ns,'0' after 660 ns, '0' after 680 ns, '0' after 700 ns,
              '0' after 720 ns, '0' after 740 ns, '0' after 760 ns, '0' after 780 ns, '1' after 800 ns, '1' after 820 ns, '1' after 840 ns, '1' after 860 ns, '0' after 880 ns,'0' after 900 ns, '0' after 920 ns, '0' after 940 ns,
              '0' after 960 ns, '0' after 980 ns, '0' after 1000 ns,'0' after 1020 ns, '1' after 1040 ns, '1' after 1060 ns, '1' after 1080 ns, '1' after 1100 ns, '0' after 1120 ns,'0' after 1140 ns, '0' after 1160 ns, '0' after 1180 ns,
              '0' after 1200 ns, '0' after 1220 ns, '0' after 1240 ns, '0' after 1260 ns, '1' after 1280 ns, '1' after 1300 ns, '1' after 1320 ns, '1' after 1340 ns, '0' after 1360 ns,'0' after 1380 ns, '0' after 1400 ns, '0' after 1420 ns,
              '0' after 1440 ns, '0' after 1460 ns, '0' after 1480 ns, '0' after 1500 ns, '1' after 1520 ns, '1' after 1540 ns, '1' after 1560 ns, '1' after 1580 ns, '0' after 1600 ns, '0' after 1620 ns, '0' after 1640 ns, '0' after 1660 ns,
              '0' after 1680 ns, '0' after 1700 ns, '0' after 1720 ns, '0' after 1740 ns, '1' after 1760 ns, '1' after 1780 ns, '1' after 1800 ns, '1' after 1820 ns, '0' after 1840 ns, '0' after 1860 ns, '0' after 1880 ns, '0' after 1900 ns,
              '0' after 1920 ns, '0' after 1940 ns, '0' after 1960 ns, '0' after 1980 ns, '1' after 2000 ns, '1' after 2020 ns, '1' after 2040 ns, '1' after 2060 ns, '0' after 2080 ns, '0' after 2100 ns, '0' after 2120 ns, '0' after 2140 ns,
              '0' after 2160 ns, '0' after 2180 ns, '0' after 2200 ns, '0' after 2220 ns, '1' after 2240 ns, '1' after 2260 ns, '1' after 2280 ns, '1' after 2300 ns, '0' after 2320 ns, '0' after 2340 ns, '0' after 2360 ns, '0' after 2380 ns,
              '0' after 2400 ns, '0' after 2420 ns, '0' after 2440 ns, '0' after 2460 ns, '1' after 2480 ns, '1' after 2500 ns, '1' after 2520 ns, '1' after 2540 ns, '0' after 2560 ns, '0' after 2580 ns, '0' after 2600 ns, '0' after 2620 ns,
              '0' after 2640 ns, '0' after 2660 ns, '0' after 2680 ns, '0' after 2700 ns, '1' after 2720 ns, '1' after 2740 ns, '1' after 2760 ns, '1' after 2780 ns, '0' after 2800 ns, '0' after 2820 ns, '0' after 2840 ns, '0' after 2860 ns;

    g <= '0', '0' after 20 ns, '1' after 40 ns, '1' after 60 ns, '0' after 80 ns, '0' after 100 ns,'1' after 120 ns, '1' after 140 ns, '0' after 160 ns, '0' after 180 ns, '1' after 200 ns, '1' after 220 ns,
              '0' after 240 ns, '0' after 260 ns, '1' after 280 ns, '1' after 300 ns, '0' after 320 ns, '0' after 340 ns, '1' after 360 ns, '1' after 380 ns, '0' after 400 ns,'0' after 420 ns, '1' after 440 ns, '1' after 460 ns,
              '0' after 480 ns, '0' after 500 ns, '1' after 520 ns, '1' after 540 ns, '0' after 560 ns, '0' after 580 ns, '1' after 600 ns, '1' after 620 ns, '0' after 640 ns,'0' after 660 ns, '1' after 680 ns, '1' after 700 ns,
              '0' after 720 ns, '0' after 740 ns, '1' after 760 ns, '1' after 780 ns, '0' after 800 ns, '0' after 820 ns, '1' after 840 ns, '1' after 860 ns, '0' after 880 ns,'0' after 900 ns, '1' after 920 ns, '1' after 940 ns,
              '0' after 960 ns, '0' after 980 ns, '1' after 1000 ns,'1' after 1020 ns, '0' after 1040 ns, '0' after 1060 ns, '1' after 1080 ns, '1' after 1100 ns, '0' after 1120 ns,'0' after 1140 ns, '1' after 1160 ns, '1' after 1180 ns,
              '0' after 1200 ns, '0' after 1220 ns, '1' after 1240 ns, '1' after 1260 ns, '0' after 1280 ns, '0' after 1300 ns, '1' after 1320 ns, '1' after 1340 ns, '0' after 1360 ns,'0' after 1380 ns, '1' after 1400 ns, '1' after 1420 ns,
              '0' after 1440 ns, '0' after 1460 ns, '1' after 1480 ns, '1' after 1500 ns, '0' after 1520 ns, '0' after 1540 ns, '1' after 1560 ns, '1' after 1580 ns, '0' after 1600 ns, '0' after 1620 ns, '1' after 1640 ns, '1' after 1660 ns,
              '0' after 1680 ns, '0' after 1700 ns, '1' after 1720 ns, '1' after 1740 ns, '0' after 1760 ns, '0' after 1780 ns, '1' after 1800 ns, '1' after 1820 ns, '0' after 1840 ns, '0' after 1860 ns, '1' after 1880 ns, '1' after 1900 ns,
              '0' after 1920 ns, '0' after 1940 ns, '1' after 1960 ns, '1' after 1980 ns, '0' after 2000 ns, '0' after 2020 ns, '1' after 2040 ns, '1' after 2060 ns, '0' after 2080 ns, '0' after 2100 ns, '1' after 2120 ns, '1' after 2140 ns,
              '0' after 2160 ns, '0' after 2180 ns, '1' after 2200 ns, '1' after 2220 ns, '0' after 2240 ns, '0' after 2260 ns, '1' after 2280 ns, '1' after 2300 ns, '0' after 2320 ns, '0' after 2340 ns, '1' after 2360 ns, '1' after 2380 ns,
              '0' after 2400 ns, '0' after 2420 ns, '1' after 2440 ns, '1' after 2460 ns, '0' after 2480 ns, '0' after 2500 ns, '1' after 2520 ns, '1' after 2540 ns, '0' after 2560 ns, '0' after 2580 ns, '1' after 2600 ns, '1' after 2620 ns,
              '0' after 2640 ns, '0' after 2660 ns, '1' after 2680 ns, '1' after 2700 ns, '0' after 2720 ns, '0' after 2740 ns, '1' after 2760 ns, '1' after 2780 ns, '0' after 2800 ns, '0' after 2820 ns, '1' after 2840 ns, '1' after 2860 ns;

    h <= '0', '1' after 20 ns, '0' after 40 ns, '1' after 60 ns, '0' after 80 ns, '1' after 100 ns,'0' after 120 ns, '1' after 140 ns, '0' after 160 ns, '1' after 180 ns, '0' after 200 ns, '1' after 220 ns,
              '0' after 240 ns, '1' after 260 ns, '0' after 280 ns, '1' after 300 ns, '0' after 320 ns, '1' after 340 ns, '0' after 360 ns, '1' after 380 ns, '0' after 400 ns,'1' after 420 ns, '0' after 440 ns, '1' after 460 ns,
              '0' after 480 ns, '1' after 500 ns, '0' after 520 ns, '1' after 540 ns, '0' after 560 ns, '1' after 580 ns, '0' after 600 ns, '1' after 620 ns, '0' after 640 ns,'1' after 660 ns, '0' after 680 ns, '1' after 700 ns,
              '0' after 720 ns, '1' after 740 ns, '0' after 760 ns, '1' after 780 ns, '0' after 800 ns, '1' after 820 ns, '0' after 840 ns, '1' after 860 ns, '0' after 880 ns,'1' after 900 ns, '0' after 920 ns, '1' after 940 ns,
              '0' after 960 ns, '1' after 980 ns, '0' after 1000 ns,'1' after 1020 ns, '0' after 1040 ns, '1' after 1060 ns, '0' after 1080 ns, '1' after 1100 ns, '0' after 1120 ns,'1' after 1140 ns, '0' after 1160 ns, '1' after 1180 ns,
              '0' after 1200 ns, '1' after 1220 ns, '0' after 1240 ns, '1' after 1260 ns, '0' after 1280 ns, '1' after 1300 ns, '0' after 1320 ns, '1' after 1340 ns, '0' after 1360 ns,'1' after 1380 ns, '0' after 1400 ns, '1' after 1420 ns,
              '0' after 1440 ns, '1' after 1460 ns, '0' after 1480 ns, '1' after 1500 ns, '0' after 1520 ns, '1' after 1540 ns, '0' after 1560 ns, '1' after 1580 ns, '0' after 1600 ns, '1' after 1620 ns, '0' after 1640 ns, '1' after 1660 ns,
              '0' after 1680 ns, '1' after 1700 ns, '0' after 1720 ns, '1' after 1740 ns, '0' after 1760 ns, '1' after 1780 ns, '0' after 1800 ns, '1' after 1820 ns, '0' after 1840 ns, '1' after 1860 ns, '0' after 1880 ns, '1' after 1900 ns,
              '0' after 1920 ns, '1' after 1940 ns, '0' after 1960 ns, '1' after 1980 ns, '0' after 2000 ns, '1' after 2020 ns, '0' after 2040 ns, '1' after 2060 ns, '0' after 2080 ns, '1' after 2100 ns, '0' after 2120 ns, '1' after 2140 ns,
              '0' after 2160 ns, '1' after 2180 ns, '0' after 2200 ns, '1' after 2220 ns, '0' after 2240 ns, '1' after 2260 ns, '0' after 2280 ns, '1' after 2300 ns, '0' after 2320 ns, '1' after 2340 ns, '0' after 2360 ns, '1' after 2380 ns,
              '0' after 2400 ns, '1' after 2420 ns, '0' after 2440 ns, '1' after 2460 ns, '0' after 2480 ns, '1' after 2500 ns, '0' after 2520 ns, '1' after 2540 ns, '0' after 2560 ns, '1' after 2580 ns, '0' after 2600 ns, '1' after 2620 ns,
              '0' after 2640 ns, '1' after 2660 ns, '0' after 2680 ns, '1' after 2700 ns, '0' after 2720 ns, '1' after 2740 ns, '0' after 2760 ns, '1' after 2780 ns, '0' after 2800 ns, '1' after 2820 ns, '0' after 2840 ns, '1' after 2860 ns;
   
end tb;
