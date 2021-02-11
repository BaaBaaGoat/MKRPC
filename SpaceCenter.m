classdef SpaceCenter
    %UNTITLED4 此处显示有关此类的摘要
    %   此处显示详细说明
    
    properties
        SpaceCenterObject
    end
    
    methods
        function obj = SpaceCenter(kRPC)
            import krpc.client.services.SpaceCenter;
            obj.SpaceCenterObject = SpaceCenter.newInstance(kRPC.connObject);
        end
%% TODO
%    .. method:: java.util.Map<String,CelestialBody> getBodies()

%    .. method:: ContractManager getContractManager()
%    .. method:: void setTargetDockingPort(DockingPort value)
%    .. method:: DockingPort getTargetDockingPort()
%    .. method:: Part raycastPart(org.javatuples.Triplet<Double,Double,Double> position, org.javatuples.Triplet<Double,Double,Double> direction, ReferenceFrame referenceFrame)
%    .. method:: GameMode getGameMode()
%    .. method:: WarpMode getWarpMode()
%    .. method:: Camera getCamera()
%    .. method:: WaypointManager getWaypointManager()
%% TODO MOD相关
%    .. method:: boolean getFARAvailable()
%%
        function bodies = getBodies(obj)
            bodies = obj.SpaceCenterObject.getBodies();
        end
        function setTargetBody(obj,body)
            obj.SpaceCenterObject.setTargetBody(body.CelestialBodyObject);
        end
        function body = getTargetBody(obj)
            body = CelestialBody(obj.SpaceCenterObject.getTargetBody());
        end
        function vessel = getActiveVessel(obj)
            vessel = Vessel(obj.SpaceCenterObject.getActiveVessel());
        end
        function  SetActiveVessel(obj,vessel)
            obj.SpaceCenterObject.setActiveVessel(vessel.VesselObject);
        end
        function vessels = getVessels(obj)
            vessels_java = obj.SpaceCenterObject.getVessels().toArray();
            vessels = arrayfun(@(i)(Vessel(i)),vessels_java);
        end
        function vessel = getTargetVessel(obj)
            vessel = Vessel(obj.SpaceCenterObject.getTargetVessel());
        end
        function  setTargetVessel(obj,vessel)
            obj.SpaceCenterObject.setTargetVessel(vessel.VesselObject);
        end
        function  clearTarget(obj)
            obj.SpaceCenterObject.clearTarget();
        end
        function  save(obj,name)
            obj.SpaceCenterObject.save(name);
        end        
        function  load(obj,name)
            obj.SpaceCenterObject.load(name);
        end  
        function  UT = getUT(obj)
            UT  =obj.SpaceCenterObject.getUT();
        end  
        function  G = getG(obj)
            G  =obj.SpaceCenterObject.getG();
        end  
        function  value = getScience(obj)
            value  =obj.SpaceCenterObject.getScience();
        end  
        function  value = getFunds(obj)
            value  =obj.SpaceCenterObject.getFunds();
        end  
        function  value = getReputation(obj)
            value  =obj.SpaceCenterObject.getReputation();
        end  
        function  quicksave(obj)
            obj.SpaceCenterObject.quicksave();
        end  
        function  quickload(obj)
            obj.SpaceCenterObject.quickload();
        end 
        function  launchVessel(obj,craftDirectory,name,launchSite,recover)
            obj.SpaceCenterObject.launchVessel(craftDirectory,name,launchSite,recover);
        end 
        function  launchVesselFromVAB(obj,name,recover)
            obj.SpaceCenterObject.launchVessel(name,recover);
        end
        function  launchVesselFromSPH(obj,name,recover)
            obj.SpaceCenterObject.launchVessel(name,recover);
        end 
        function  result = getUIVisible(obj)
            result = logical(obj.SpaceCenterObject.getUIVisible());
        end 
        function  setUIVisible(obj,value)
            obj.SpaceCenterObject.setUIVisible(value);
        end 
        function  result = getNavball(obj)
            result = logical(obj.SpaceCenterObject.getNavball());
        end 
        function  setNavball(obj,value)
            obj.SpaceCenterObject.setNavball(value);
        end 
        function  result = getWarpRate(obj)
            result = logical(obj.SpaceCenterObject.getWarpRate());
        end 
        function  result = getWarpFactor(obj)
            result = logical(obj.SpaceCenterObject.getWarpFactor());
        end 
        function  result = getRailsWarpFactor(obj)
            result = logical(obj.SpaceCenterObject.getRailsWarpFactor());
        end
        function  setRailsWarpFactor(obj,value)
            obj.SpaceCenterObject.setRailsWarpFactor(value);
        end
        function  result = getPhysicsWarpFactor(obj)
            result=double(obj.SpaceCenterObject.getPhysicsWarpFactor);
        end
        function setPhysicsWarpFactor(obj,value)
            obj.SpaceCenterObject.setPhysicsWarpFactor(value);
        end
        function  result = canRailsWarpAt(obj)
            result=logical(obj.SpaceCenterObject.canRailsWarpAt());
        end
        function  result = getMaximumRailsWarpFactor(obj)
            result=double(obj.SpaceCenterObject.getMaximumRailsWarpFactor());
        end
        function  result = transformPosition(obj,position,from,to)
            import org.javatuples.Triplet
            temp=obj.SpaceCenterObject.transformPosition(Triplet(position(1),position(2),position(3)),from.ReferenceFrameObject,to.ReferenceFrameObject).toArray();
            result=arrayfun(@(i)(double(i)),temp)';
        end
        function  result = transformDirection(obj,Direction,from,to)
            import org.javatuples.Triplet
            temp=obj.SpaceCenterObject.transformDirection(Triplet(Direction(1),Direction(2),Direction(3)),from.ReferenceFrameObject,to.ReferenceFrameObject).toArray();
            result=arrayfun(@(i)(double(i)),temp)';
        end
        function  result = transformRotation(obj,Rotation,from,to)
            import org.javatuples.Quartet
            temp=obj.SpaceCenterObject.transformRotation(Quartet(Rotation(1),Rotation(2),Rotation(3),Rotation(4)),from.ReferenceFrameObject,to.ReferenceFrameObject).toArray();
            result=arrayfun(@(i)(double(i)),temp)';
        end
        function  result = transformVelocity(obj,Position,from,to)
            import org.javatuples.Triplet
            temp=obj.SpaceCenterObject.transformVelocity( ...
                Triplet(Position(1),Position(2),Position(3)), ...
                Triplet(velocity(1),velocity(2),velocity(3)), ...
                from.ReferenceFrameObject,to.ReferenceFrameObject).toArray();
            result=arrayfun(@(i)(double(i)),temp)';
        end
        function  warpTo(obj,ut,maxRailsRate,maxPhysicsRate)
            obj.SpaceCenterObject.warpTo(ut,maxRailsRate,maxPhysicsRate);
        end
        function  result = launchableVessels(obj,craftDirectory)
            temp=obj.SpaceCenterObject.launchableVessels(craftDirectory);
            result=arrayfun(@(i)(string(i)),temp);
        end
        function  result = raycastDistance(obj,position,direction,referenceFrame)
            result=double(obj.SpaceCenterObject.raycastDistance( ...
                Triplet(position(1),position(2),position(3)), ...
                Triplet(direction(1),direction(2),direction(3)), ...
                referenceFrame.ReferenceFrameObject ...
                ));
        end
    end
end

