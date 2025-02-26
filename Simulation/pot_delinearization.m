%definition of trimmer
position=0:0.01:1;
pot_value=10000; %in ohms
impedance=2*pot_value.*position.*(1-position);

%definition of delinearization network connected to wiper of trimmer
set_impedance=3000; %in ohms
set_position=0; %center of delinearization (slope is lowest around this point)

%calculate the delinearized output, beware that it will change if loaded!
output=position+(set_position-position).*impedance./(set_impedance+impedance);
plot(output);