class influenza1918
  parameter Real MortalityProb(start = 0.01);
  parameter Real RecoveryTime(start = 2.5);
  parameter Real MortalityTime(start = 1);
  parameter Real TransmissionProb(start = 0.15);
  parameter Real IncubationTime(start = 3);
  parameter Real EncounterRate(start=4);
  parameter Real Infected(start=1000);

  // Start variables - Initialization
  Real Susceptible(start=103267000);
  Real Infectious(start=Infected);
  Real Removed(start=0);
  Real Deceased(start=0);
  Real Recovered(start=0);
  Real Incubating(start=0);
  Real TotalInfected(start=0);
  Real Population;
  Real R;

  equation
    Population = Recovered+Infectious+Incubating+Susceptible;
    R=(TransmissionProb*EncounterRate*Susceptible)/Population;
    Deceased=MortalityProb*Removed;
    Recovered=(1-MortalityProb)*Removed;
    der(Removed)=(MortalityProb/MortalityTime+(1-MortalityProb)/RecoveryTime)*Infectious;
    der(Infectious)=-der(Removed)+Incubating/IncubationTime;
    der(Susceptible)=-R*Infectious;
    der(Incubating)=-Incubating/IncubationTime+R*Infectious;
    der(TotalInfected)=Incubating/IncubationTime;
end influenza1918;
