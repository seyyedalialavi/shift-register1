library verilog;
use verilog.vl_types.all;
entity DataMemory is
    port(
        MemRead         : in     vl_logic;
        MemWrite        : in     vl_logic;
        address         : in     vl_logic_vector(63 downto 0);
        WriteData       : in     vl_logic_vector(63 downto 0);
        ReadData        : out    vl_logic_vector(63 downto 0)
    );
end DataMemory;
