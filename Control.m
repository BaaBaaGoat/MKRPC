classdef Control
    properties
        ControlObject
    end
    methods
        function obj = Control(JavaObject)
            obj.ControlObject = JavaObject;
        end
    end
    methods
        %% TODO
%            .. method:: ControlSource getSource()
%            .. method:: ControlState getState()
%            .. method:: SASMode getSASMode()
%            .. method:: SpeedMode getSpeedMode()
%            .. method:: ControlInputMode getInputMode()
%            .. method:: void setSASMode(SASMode value)
%            .. method:: void setSpeedMode(SpeedMode value)
%            .. method:: void setInputMode(ControlInputMode value)
        function nodes = getNodes(obj)
            temp = obj.ControlObject.getNodes().toArray();
            nodes = arrayfun(@(i)(Node(i)),temp);
        end
        function node = addNode(obj,ut,prograde,normal,radial)
            node = obj.ControlObject.addNode(ut,prograde,normal,radial);
        end
        function setActionGroup(obj,group,state)
            obj.ControlObject.setActionGroup(group,state);
        end
        function splitVessels = activateNextStage(obj)
            temp = obj.ControlObject.activateNextStage();
            splitVessels = arrayfun(@(i)(Vessel(i)),temp);
        end 
        function ActionGroup = getActionGroup(obj)
            ActionGroup = obj.ControlObject.getActionGroup();
        end
        function SAS = getSAS(obj)
            SAS = obj.ControlObject.getSAS();
        end
        function RCS = getRCS(obj)
            RCS = obj.ControlObject.getRCS();
        end
        function ReactionWheels = getReactionWheels(obj)
            ReactionWheels = obj.ControlObject.getReactionWheels();
        end
        function Gear = getGear(obj)
            Gear = obj.ControlObject.getGear();
        end
        function Legs = getLegs(obj)
            Legs = obj.ControlObject.getLegs();
        end
        function Wheels = getWheels(obj)
            Wheels = obj.ControlObject.getWheels();
        end
        function Lights = getLights(obj)
            Lights = obj.ControlObject.getLights();
        end
        function Brakes = getBrakes(obj)
            Brakes = obj.ControlObject.getBrakes();
        end
        function Antennas = getAntennas(obj)
            Antennas = obj.ControlObject.getAntennas();
        end
        function CargoBays = getCargoBays(obj)
            CargoBays = obj.ControlObject.getCargoBays();
        end
        function Intakes = getIntakes(obj)
            Intakes = obj.ControlObject.getIntakes();
        end
        function Parachutes = getParachutes(obj)
            Parachutes = obj.ControlObject.getParachutes();
        end
        function Radiators = getRadiators(obj)
            Radiators = obj.ControlObject.getRadiators();
        end
        function ResourceHarvesters = getResourceHarvesters(obj)
            ResourceHarvesters = obj.ControlObject.getResourceHarvesters();
        end
        function ResourceHarvestersActive = getResourceHarvestersActive(obj)
            ResourceHarvestersActive = obj.ControlObject.getResourceHarvestersActive();
        end
        function SolarPanels = getSolarPanels(obj)
            SolarPanels = obj.ControlObject.getSolarPanels();
        end
        function Abort = getAbort(obj)
            Abort = obj.ControlObject.getAbort();
        end
        function Throttle = getThrottle(obj)
            Throttle = obj.ControlObject.getThrottle();
        end
        function Pitch = getPitch(obj)
            Pitch = obj.ControlObject.getPitch();
        end
        function Yaw = getYaw(obj)
            Yaw = obj.ControlObject.getYaw();
        end
        function Roll = getRoll(obj)
            Roll = obj.ControlObject.getRoll();
        end
        function Forward = getForward(obj)
            Forward = obj.ControlObject.getForward();
        end
        function Up = getUp(obj)
            Up = obj.ControlObject.getUp();
        end
        function Right = getRight(obj)
            Right = obj.ControlObject.getRight();
        end
        function WheelThrottle = getWheelThrottle(obj)
            WheelThrottle = obj.ControlObject.getWheelThrottle();
        end
        function WheelSteering = getWheelSteering(obj)
            WheelSteering = obj.ControlObject.getWheelSteering();
        end
        function CurrentStage = getCurrentStage(obj)
            CurrentStage = obj.ControlObject.getCurrentStage();
        end
        function removeNodes(obj)
            obj.ControlObject.removeNodes();
        end
        function  setSAS(obj,SAS)
            obj.ControlObject.setSAS(SAS);
        end
        function  setRCS(obj,RCS)
            obj.ControlObject.setRCS(RCS);
        end
        function  setReactionWheels(obj,ReactionWheels)
            obj.ControlObject.setReactionWheels(ReactionWheels);
        end
        function  setGear(obj,Gear)
            obj.ControlObject.setGear(Gear);
        end
        function  setLegs(obj,Legs)
            obj.ControlObject.setLegs(Legs);
        end
        function  setWheels(obj,Wheels)
            obj.ControlObject.setWheels(Wheels);
        end
        function  setLights(obj,Lights)
            obj.ControlObject.setLights(Lights);
        end
        function  setBrakes(obj,Brakes)
            obj.ControlObject.setBrakes(Brakes);
        end
        function  setAntennas(obj,Antennas)
            obj.ControlObject.setAntennas(Antennas);
        end
        function  setCargoBays(obj,CargoBays)
            obj.ControlObject.setCargoBays(CargoBays);
        end
        function  setIntakes(obj,Intakes)
            obj.ControlObject.setIntakes(Intakes);
        end
        function  setParachutes(obj,Parachutes)
            obj.ControlObject.setParachutes(Parachutes);
        end
        function  setRadiators(obj,Radiators)
            obj.ControlObject.setRadiators(Radiators);
        end
        function  setResourceHarvesters(obj,ResourceHarvesters)
            obj.ControlObject.setResourceHarvesters(ResourceHarvesters);
        end
        function  setResourceHarvestersActive(obj,ResourceHarvestersActive)
            obj.ControlObject.setResourceHarvestersActive(ResourceHarvestersActive);
        end
        function  setSolarPanels(obj,SolarPanels)
            obj.ControlObject.setSolarPanels(SolarPanels);
        end
        function  setAbort(obj,Abort)
            obj.ControlObject.setAbort(Abort);
        end
        function  setThrottle(obj,Throttle)
            obj.ControlObject.setThrottle(Throttle);
        end
        function  setPitch(obj,Pitch)
            obj.ControlObject.setPitch(Pitch);
        end
        function  setYaw(obj,Yaw)
            obj.ControlObject.setYaw(Yaw);
        end
        function  setRoll(obj,Roll)
            obj.ControlObject.setRoll(Roll);
        end
        function  setForward(obj,Forward)
            obj.ControlObject.setForward(Forward);
        end
        function  setUp(obj,Up)
            obj.ControlObject.setUp(Up);
        end
        function  setRight(obj,Right)
            obj.ControlObject.setRight(Right);
        end
        function  setWheelThrottle(obj,WheelThrottle)
            obj.ControlObject.setWheelThrottle(WheelThrottle);
        end
        function  setWheelSteering(obj,WheelSteering)
            obj.ControlObject.setWheelSteering(WheelSteering);
        end
        function  toggleActionGroup(obj,ActionGroup)
            obj.ControlObject.toggleActionGroup(ActionGroup);
        end

    end
end

