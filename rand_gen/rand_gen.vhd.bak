library ieee;
use ieee.math_real.all;

entity rand_gen is
end rand_gen;

architecture behavior of rand_gen is 

signal rand_num : integer := 0;

begin

process
    variable seed1, seed2: positive;               -- seed values for random generator
    variable rand: real;   -- random real-number value in range 0 to 1.0  
    variable range_of_rand : real := 1000.0;    -- the range of random values created will be 0 to +1000.
begin
    uniform(seed1, seed2, rand);   -- generate random number
    rand_num <= integer(rand*range_of_rand);  -- rescale to 0..1000, convert integer part 
    wait for 10 ns;
end process;

end behavior;