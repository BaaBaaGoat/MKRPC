clear classes;
clear gatherData;
javaaddpath(pwd+"\..\protobuf-java-3.4.0.jar")
javaaddpath(pwd+"\..\krpc-java-0.4.8.jar")
javaaddpath(pwd+"\..\javatuples-1.2.jar")
addpath ..\
global KRPC;
KRPC.krpc = kRPC("127.0.0.1",50000,50001);
spacecenter = SpaceCenter(KRPC.krpc);
vessels = spacecenter.getVessels();

KRPC.Vessel = vessels(arrayfun(@(i)i.getName() == "MISL",vessels));
KRPC.TargetVessel = vessels(arrayfun(@(i)i.getName() == "TGT",vessels));

KRPC.spacecenter = SpaceCenter(KRPC.krpc);
KRPC.referframe_ground = KRPC.Vessel.getOrbit().getBody().getReferenceFrame();
KRPC.Control = KRPC.Vessel.getControl();