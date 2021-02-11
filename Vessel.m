classdef Vessel
    %UNTITLED5 此处显示有关此类的摘要
    %   此处显示详细说明

    properties
        VesselObject
    end
    methods
        function obj = Vessel(JavaObject)
            obj.VesselObject = JavaObject;
        end
    end
%% 宇航员相关 暂时用不到
%    .. method:: java.util.List<CrewMember> getCrew()
%% TODO
%    .. method:: VesselType getType()
%    .. method:: void setType(VesselType value)
%    .. method:: VesselSituation getSituation()
%    .. method:: Comms getComms()
%    .. method:: Resources getResources()
%    .. method:: Resources resourcesInDecoupleStage(int stage, boolean cumulative)
%    .. method:: Parts getParts()

%%
    methods(Access = public)
        function result = getParts(obj)
            result = Parts(obj.VesselObject.getParts());
        end
        function result = getOrbit(obj)
            result = Orbit(obj.VesselObject.getOrbit());
        end
        function result = getControl(obj)
            result = Control(obj.VesselObject.getControl());
        end
        function result = getCrewCapacity(obj)
            result = obj.VesselObject.getCrewCapacity();
        end
        function result = getCrewCount(obj)
            result = obj.VesselObject.getCrewCount();
        end
        function newobj = getAutoPilot(obj)
            newobj=AutoPilot(obj.VesselObject.getAutoPilot());
        end
        function name = getName(obj)
            name=string(obj.VesselObject.getName());
        end
        function setName(obj,name)
            obj.VesselObject.setName(name);
        end
        function result = getRecoverable(obj)
            result = obj.VesselObject.getRecoverable();
        end
        function recover(obj)
            obj.VesselObject.recover();
        end
        function result = getMET(obj)
            result = obj.VesselObject.getMET();
        end
        function result = getBiome(obj)
            result = string(obj.VesselObject.getBiome());
        end       
        function result = getMass(obj)
            result = obj.VesselObject.getMass();
        end
        function result = getDryMass(obj)
            result = obj.VesselObject.getDryMass();
        end
        function result = getThrust(obj)
            result = obj.VesselObject.getThrust();
        end
        function result = getAvailableThrust(obj)
            result = obj.VesselObject.getAvailableThrust();
        end
        function result = getMaxThrust(obj)
            result = obj.VesselObject.getMaxThrust();
        end
        function result = getMaxVacuumThrust(obj)
            result = obj.VesselObject.getMaxVacuumThrust();
        end
        function result = getSpecificImpulse(obj)
            result = obj.VesselObject.getSpecificImpulse();
        end
        function result = getVacuumSpecificImpulse(obj)
            result = obj.VesselObject.getVacuumSpecificImpulse();
        end
        function result = getKerbinSeaLevelSpecificImpulse(obj)
            result = obj.VesselObject.getKerbinSeaLevelSpecificImpulse();
        end
        function result = getReferenceFrame(obj)
            result = ReferenceFrame(obj.VesselObject.getReferenceFrame());
        end
        function result = getOrbitalReferenceFrame(obj)
            result = ReferenceFrame(obj.VesselObject.getOrbitalReferenceFrame());
        end
        function result = getSurfaceReferenceFrame(obj)
            result = ReferenceFrame(obj.VesselObject.getSurfaceReferenceFrame());
        end
        function result = getSurfaceVelocityReferenceFrame(obj)
            result = ReferenceFrame(obj.VesselObject.getSurfaceVelocityReferenceFrame());
        end
        function position = position(obj,referenceFrame)
            position_array=obj.VesselObject.position(referenceFrame.ReferenceFrameObject).toArray();
            position=arrayfun(@(i)(double(i)),position_array)';
        end
        function velocity = velocity(obj,referenceFrame)
            velocity_array=obj.VesselObject.velocity(referenceFrame.ReferenceFrameObject).toArray();
            velocity=arrayfun(@(i)(double(i)),velocity_array)';
        end
        function rotation = rotation(obj,referenceFrame)
            rotation_array=obj.VesselObject.rotation(referenceFrame.ReferenceFrameObject).toArray();
            rotation=arrayfun(@(i)(double(i)),rotation_array)';
            rotation = rotation([4 1 2 3]);
        end
        function direction = direction(obj,referenceFrame)
            direction_array=obj.VesselObject.direction(referenceFrame.ReferenceFrameObject).toArray();
            direction=arrayfun(@(i)(double(i)),direction_array)';
        end
        function angularVelocity = angularVelocity(obj,referenceFrame)
            angularVelocity_array=obj.VesselObject.angularVelocity(referenceFrame.ReferenceFrameObject).toArray();
            angularVelocity=arrayfun(@(i)(double(i)),angularVelocity_array)';
        end
        function MomentOfInertia = getMomentOfInertia(obj)
            MomentOfInertia_array=obj.VesselObject.getMomentOfInertia().toArray();
            MomentOfInertia=arrayfun(@(i)(double(i)),MomentOfInertia_array)';
        end
        function InertiaTensor = getInertiaTensor(obj)
            InertiaTensor_array = obj.VesselObject.getInertiaTensor().toArray();
            InertiaTensor = reshape(arrayfun(@(i)(double(i)),InertiaTensor_array),3,3);
        end
        function AvailableTorque = getAvailableTorque(obj)
            vectors = obj.VesselObject.getAvailableTorque().toArray();
            AvailableTorque = NaN(3,2);
            for i=1:2
                AvailableTorque(:,i) = arrayfun(@(i)(double(i)),vectors(i).toArray());
            end
        end
        function AvailableReactionWheelTorque = getAvailableReactionWheelTorque(obj)
            vectors = obj.VesselObject.getAvailableReactionWheelTorque().toArray();
            AvailableReactionWheelTorque = NaN(3,2);
            for i=1:2
                AvailableReactionWheelTorque(:,i) = arrayfun(@(i)(double(i)),vectors(i).toArray());
            end
        end
        function AvailableRCSTorque = getAvailableRCSTorque(obj)
            vectors = obj.VesselObject.getAvailableRCSTorque().toArray();
            AvailableRCSTorque = NaN(3,2);
            for i=1:2
                AvailableRCSTorque(:,i) = arrayfun(@(i)(double(i)),vectors(i).toArray());
            end
        end
        function AvailableEngineTorque = getAvailableEngineTorque(obj)
            vectors = obj.VesselObject.getAvailableEngineTorque().toArray();
            AvailableEngineTorque = NaN(3,2);
            for i=1:2
                AvailableEngineTorque(:,i) = arrayfun(@(i)(double(i)),vectors(i).toArray());
            end
        end
        function AvailableControlSurfaceTorque = getAvailableControlSurfaceTorque(obj)
            vectors = obj.VesselObject.getAvailableControlSurfaceTorque().toArray();
            AvailableControlSurfaceTorque = NaN(3,2);
            for i=1:2
                AvailableControlSurfaceTorque(:,i) = arrayfun(@(i)(double(i)),vectors(i).toArray());
            end
        end
        function AvailableOtherTorque = getAvailableOtherTorque(obj)
            vectors = obj.VesselObject.getAvailableOtherTorque().toArray();
            AvailableOtherTorque = NaN(3,2);
            for i=1:2
                AvailableOtherTorque(:,i) = arrayfun(@(i)(double(i)),vectors(i).toArray());
            end
        end
        function boundingBox = boundingBox(obj)
            vectors = obj.VesselObject.boundingBox().toArray();
            boundingBox = NaN(3,2);
            for i=1:2
                boundingBox(:,i) = arrayfun(@(i)(double(i)),vectors(i).toArray());
            end
        end
        function flight = flight(obj,referenceFrame)
            flight = Flight(obj.VesselObject.flight(referenceFrame.ReferenceFrameObject));
        end
        
        
    end
end

