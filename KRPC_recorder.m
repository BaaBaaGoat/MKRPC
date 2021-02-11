clear classes;
krpc = kRPC("127.0.0.1",50000,50001);
spacecenter = SpaceCenter(krpc);
f = fopen('Log.csv','w');
%%
vessel = spacecenter.getActiveVessel();
referframe_ground = vessel.getOrbit().getBody().getReferenceFrame();
flight = vessel.flight(referframe_ground);
t0 = vessel.getMET();
lasttime = -1;
fprintf(f,"Time,PosX,PosY,PosZ,VelX,VelY,VelZ,RotW,RotX,RotY,RotZ,DirX,DirY,DirZ,AVX,AVY,AVZ,Alt,Temp,AtmDen,DynPres,StatPres,AoA,AFX,AFY,AFZ\n");
while (1)
    newdata = [ ...
        vessel.getMET()-t0,...
        vessel.position(referframe_ground),...
        vessel.velocity(referframe_ground),...
        vessel.rotation(referframe_ground),...
        vessel.direction(referframe_ground),...
        vessel.angularVelocity(referframe_ground),...
        flight.getMeanAltitude(),...
        flight.getTotalAirTemperature(),...
        flight.getAtmosphereDensity(),...
        flight.getDynamicPressure(),...
        flight.getStaticPressure(),...
        flight.getAngleOfAttack(),...
        flight.getAerodynamicForce(),...
    ];
    if(newdata(1) == lasttime)
        continue;
    end
    lasttime = newdata(1);
    fprintf(f,"%f,",newdata);
    fprintf(f,"\n");
%     if(newdata(1) > 1000)
%         break;
%     end
end
%%
krpc.close();
fclose(f);
clear krpc spacecenter vessel referframe_ground flight control 