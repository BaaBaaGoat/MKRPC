classdef AutoPilot
    properties
        AutoPilotObject
    end
    
    methods
        function obj = AutoPilot(JavaObject)
            %UNTITLED4 构造此类的实例
            %   此处显示详细说明
            obj.AutoPilotObject = JavaObject;
        end
    end
    methods
        %% TODO
%         .. method:: SASMode getSASMode()
%         .. method:: void setSASMode(SASMode value)
        %%
        function  result = getReferenceFrame(obj)
            result = ReferenceFrame(obj.AutoPilotObject.getReferenceFrame());
        end
        function  setReferenceFrame(obj,value)
            obj.AutoPilotObject.setReferenceFrame(value.ReferenceFrameObject);
        end
        function  engage(obj)
            obj.AutoPilotObject.engage();
        end
        function  disengage(obj)
            obj.AutoPilotObject.disengage();
        end
        function  wait_(obj)
            obj.AutoPilotObject.wait_();
        end
        function  result = getError(obj)
            result = obj.AutoPilotObject.getError();
        end
        function  result = getPitchError(obj)
            result = obj.AutoPilotObject.getPitchError();
        end
        function  result = getHeadingError(obj)
            result = obj.AutoPilotObject.getHeadingError();
        end
        function  result = getRollError(obj)
            result = obj.AutoPilotObject.getRollError();
        end
        function  result = getTargetPitch(obj)
            result = obj.AutoPilotObject.getTargetPitch();
        end
        function  result = getTargetHeading(obj)
            result = obj.AutoPilotObject.getTargetHeading();
        end
        function  result = getTargetRoll(obj)
            result = obj.AutoPilotObject.getTargetRoll();
        end
        function  result = getRollThreshold(obj)
            result = obj.AutoPilotObject.getRollThreshold();
        end
        function  result = getSAS(obj)
            result = obj.AutoPilotObject.getSAS();
        end
        function  result = getAutoTune(obj)
            result = obj.AutoPilotObject.getAutoTune();
        end
        function  setRollThreshold(obj,value)
            obj.AutoPilotObject.setRollThreshold(value);
        end
        function  setTargetPitch(obj,value)
            obj.AutoPilotObject.setTargetPitch(value);
        end
        function  setTargetHeading(obj,value)
            obj.AutoPilotObject.setTargetHeading(value);
        end
        function  setTargetRoll(obj,value)
            obj.AutoPilotObject.setTargetRoll(value);
        end
        function  setSAS(obj,value)
            obj.AutoPilotObject.setSAS(value);
        end
        function  setAutoTune(obj,value)
            obj.AutoPilotObject.setAutoTune(value);
        end
        function  targetPitchAndHeading(obj,pitch,heading)
            obj.AutoPilotObject.targetPitchAndHeading(pitch,heading);
        end
        function  result = getTargetDirection(obj)
            temp = obj.AutoPilotObject.getTargetDirection().toArray();
            result = arrayfun(@(i)(double(i)),temp);
        end
        function  result = getAttenuationAngle(obj)
            temp = obj.AutoPilotObject.getAttenuationAngle().toArray();
            result = arrayfun(@(i)(double(i)),temp);
        end
        function  result = getStoppingTime(obj)
            temp = obj.AutoPilotObject.getStoppingTime().toArray();
            result = arrayfun(@(i)(double(i)),temp);
        end
        function  result = getDecelerationTime(obj)
            temp = obj.AutoPilotObject.getDecelerationTime().toArray();
            result = arrayfun(@(i)(double(i)),temp);
        end
        function  result = getTimeToPeak(obj)
            temp = obj.AutoPilotObject.getTimeToPeak().toArray();
            result = arrayfun(@(i)(double(i)),temp);
        end
        function  result = getOvershoot(obj)
            temp = obj.AutoPilotObject.getOvershoot().toArray();
            result = arrayfun(@(i)(double(i)),temp);
        end
        function  result = getPitchPIDGains(obj)
            temp = obj.AutoPilotObject.getPitchPIDGains().toArray();
            result = arrayfun(@(i)(double(i)),temp);
        end
        function  result = getRollPIDGains(obj)
            temp = obj.AutoPilotObject.getRollPIDGains().toArray();
            result = arrayfun(@(i)(double(i)),temp);
        end
        function  result = getYawPIDGains(obj)
            temp = obj.AutoPilotObject.getYawPIDGains().toArray();
            result = arrayfun(@(i)(double(i)),temp);
        end
        function  setTargetDirection(obj,value)
            import org.javatuples.Triplet
            temp = Triplet(value(1),value(2),value(3));
        obj.AutoPilotObject.setTargetDirection(temp);
        end
        function  setStoppingTime(obj,value)
            import org.javatuples.Triplet
            temp = Triplet(value(1),value(2),value(3));
        obj.AutoPilotObject.setStoppingTime(temp);
        end
        function  setDecelerationTime(obj,value)
            import org.javatuples.Triplet
            temp = Triplet(value(1),value(2),value(3));
        obj.AutoPilotObject.setDecelerationTime(temp);
        end
        function  setAttenuationAngle(obj,value)
            import org.javatuples.Triplet
            temp = Triplet(value(1),value(2),value(3));
        obj.AutoPilotObject.setAttenuationAngle(temp);
        end
        function  setTimeToPeak(obj,value)
            import org.javatuples.Triplet
            temp = Triplet(value(1),value(2),value(3));
        obj.AutoPilotObject.setTimeToPeak(temp);
        end
        function  setOvershoot(obj,value)
            import org.javatuples.Triplet
            temp = Triplet(value(1),value(2),value(3));
        obj.AutoPilotObject.setOvershoot(temp);
        end
        function  setPitchPIDGains(obj,value)
            import org.javatuples.Triplet
            temp = Triplet(value(1),value(2),value(3));
        obj.AutoPilotObject.setPitchPIDGains(temp);
        end
        function  setRollPIDGains(obj,value)
            import org.javatuples.Triplet
            temp = Triplet(value(1),value(2),value(3));
        obj.AutoPilotObject.setRollPIDGains(temp);
        end
        function  setYawPIDGains(obj,value)
            import org.javatuples.Triplet
            temp = Triplet(value(1),value(2),value(3));
        obj.AutoPilotObject.setYawPIDGains(temp);
        end
    end
end

