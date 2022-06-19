entity ICI is
  port(A, B, C, D :  in bit;
       E, F, G, H :  in bit;
                X :  out bit);
end entity;

architecture ICI_arch of ICI is

  signal NW1, NS1, NE1, WS1, WE1, WN1, SE1, SN1, SW1, EN1, EW1, ES1 : bit;
  signal NW2, NS2, NE2, WS2, WE2, WN2, SE2, SN2, SW2, EN2, EW2, ES2 : bit;
  signal An, Bn, Cn, Dn : bit;
  signal En, Fn, Gn, Hn : bit;

begin
--NOT DEFINITION
    An <= not A;
    Bn <= not B;
    Cn <= not C;
    Dn <= not D;

    En <= not E;
    Fn <= not F;
    Gn <= not G;
    Hn <= not H;

-- DIRRECTION DEFFINITION 1
    NW1 <= An and Bn and Cn and Dn;  -- NORTH VEHICLE 1
    NS1 <= An and Bn and Cn and D;
    NE1 <= An and Bn and C and Dn;

    WS1 <= An and Bn and C and D;    -- WEST VEHICLE 1
    WE1 <= An and B and Cn and Dn;
    WN1 <= An and B and Cn and D;

    SE1 <= An and B and C and Dn;    -- SOUTH VEHICLE  1
    SN1 <= An and B and C and D;
    SW1 <= A and Bn and Cn and Dn;

    EN1 <= A and Bn and Cn and D;    -- EAST VEHICLE 1
    EW1 <= A and Bn and C and Dn;
    ES1 <= A and Bn and C and D;

-- DIRRECTION DEFFINITION 2
    NW2 <= En and Fn and Gn and Hn;  -- NORTH VEHICLE 2
    NS2 <= En and Fn and Gn and H;
    NE2 <= En and Fn and G and Hn;

    WS2 <= En and Fn and G and H;    -- WEST VEHICLE 2
    WE2 <= En and F and Gn and Hn;
    WN2 <= En and F and Gn and H;

    SE2 <= En and F and G and Hn;    -- SOUTH VEHICLE 2
    SN2 <= En and F and G and H;
    SW2 <= E and Fn and Gn and Hn;

    EN2 <= E and Fn and Gn and H;    -- EAST VEHICLE 2
    EW2 <= E and Fn and G and Hn;
    ES2 <= E and Fn and G and H;

-- COLLISION LOGIC
      X <= '1' when (NS1='1' and WS2='1') else --NORTH/WEST
           '1' when (NS1='1' and WE2='1') else
           '1' when (NS1='1' and WN2='1') else
           '1' when (NE1='1' and WE2='1') else
           '1' when (NE1='1' and WN2='1') else

           '1' when (WE1='1' and SE2='1') else --WEST/SOUTH
           '1' when (WE1='1' and SN2='1') else
           '1' when (WE1='1' and SW2='1') else
           '1' when (WN1='1' and SN2='1') else
           '1' when (WN1='1' and SW2='1') else

           '1' when (SN1='1' and EN2='1') else --SOUTH/EAST
           '1' when (SN1='1' and EW2='1') else
           '1' when (SN1='1' and ES2='1') else
           '1' when (SW1='1' and EW2='1') else
           '1' when (SW1='1' and ES2='1') else

           '1' when (NW1='1' and SW2='1') else --NORTH/SOUTH
           '1' when (NS1='1' and SW2='1') else
           '1' when (NE1='1' and SE2='1') else
           '1' when (NE1='1' and SN2='1') else

           '1' when (WS1='1' and ES2='1') else --WEST/EAST
           '1' when (WE1='1' and ES2='1') else
	   '1' when (WN1='1' and EN2='1') else
           '1' when (WN1='1' and EW2='1') else

	   '1' when (NW1='1' and EW2='1') else --NORTH/EAST
           '1' when (NS1='1' and EW2='1') else
           '1' when (NE1='1' and EW2='1') else
           '1' when (NS1='1' and ES2='1') else
           '1' when (NE1='1' and ES2='1') else
       	   '0';

end architecture;
