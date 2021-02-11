function pushData(data)
global KRPC;
KRPC.Control.setPitch(data(1));
KRPC.Control.setRoll(data(2));
KRPC.Control.setYaw(data(3));
KRPC.Control.setAbort(data(4) > 0);
end