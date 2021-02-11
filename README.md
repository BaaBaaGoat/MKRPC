# HOWTO use

1. switch to root path of this project,which contains **krpc-java-0.4.8.jar**
2. run 
```matlab
>> javaaddpath(pwd+"\protobuf-java-3.4.0.jar")
>> javaaddpath(pwd+"\krpc-java-0.4.8.jar")
>> javaaddpath(pwd+"\javatuples-1.2.jar")
```
3. run   ```krpc = kRPC("127.0.0.1",50000,50001);```   to get a connection to kRPC

4. ```spacecenter=SpaceCenter(krpc)``` to get a spacecenter object for controlling
5. use it like using a python client of KRPC.
6. KRPC_recorder.m is a demo which records the flight params of the active vessel(the rocket you're operating) to Log.csv

## SAM demo

1. missile and aircraft files are in **SHIPS** folder
2. fly the aircraft to ~4km away from the missile
3. switch to the missile,run the simulation file in **simulink\missile.slx**
4. ignite the solid rocket of missile
5. then the missile will track the target automaticly

