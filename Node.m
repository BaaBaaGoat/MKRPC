classdef Node
    %UNTITLED 此处显示有关此类的摘要
    %   此处显示详细说明
    
    properties
        NodeObject
    end
    
    methods
        function obj = Node(JavaObject)
            obj.NodeObject = JavaObject;
        end
    end
    methods
        function  orbit = getOrbit(obj)
            orbit  =orbit(obj.NodeObject.getOrbit());
        end
        function  Prograde = getPrograde(obj)
            Prograde  =double(obj.NodeObject.getPrograde());
        end
        function  Normal = getNormal(obj)
            Normal  =double(obj.NodeObject.getNormal());
        end
        function  Radial = getRadial(obj)
            Radial  =double(obj.NodeObject.getRadial());
        end
        function  DeltaV = getDeltaV(obj)
            DeltaV  =double(obj.NodeObject.getDeltaV());
        end
        function  RemainingDeltaV = getRemainingDeltaV(obj)
            RemainingDeltaV  =double(obj.NodeObject.getRemainingDeltaV());
        end
        function  UT = getUT(obj)
            UT  =double(obj.NodeObject.getUT());
        end
        function  TimeTo = getTimeTo(obj)
            TimeTo  =double(obj.NodeObject.getTimeTo());
        end
        function  setPrograde(obj,value)
            obj.NodeObject.setPrograde(value);
        end
        function  setNormal(obj,value)
            obj.NodeObject.setNormal(value);
        end
        function  setRadial(obj,value)
            obj.NodeObject.setRadial(value);
        end
        function  setDeltaV(obj,value)
            obj.NodeObject.setDeltaV(value);
        end
        function  setUT(obj,value)
            obj.NodeObject.setUT(value);
        end
        function  remove(obj)
            obj.NodeObject.remove();
        end
        function  Reference = getReferenceFrame(obj)
            Reference  =ReferenceFrame(obj.NodeObject.getReferenceFrame());
        end
        function  OrbitalReferenceFrame = getOrbitalReferenceFrame(obj)
            OrbitalReferenceFrame  =ReferenceFrame(obj.NodeObject.getOrbitalReferenceFrame());
        end
        function resu = burnVector(obj,referenceFrame)
            temp=obj.NodeObject.burnVector(referenceFrame).toArray();
            resu=arrayfun(@(i)(double(i)),temp)';
        end
        function resu = remainingBurnVector(obj,referenceFrame)
            temp=obj.NodeObject.remainingBurnVector(referenceFrame).toArray();
            resu=arrayfun(@(i)(double(i)),temp)';
        end
        function resu = position(obj,referenceFrame)
            temp=obj.NodeObject.position(referenceFrame).toArray();
            resu=arrayfun(@(i)(double(i)),temp)';
        end
        function resu = direction(obj,referenceFrame)
            temp=obj.NodeObject.direction(referenceFrame).toArray();
            resu=arrayfun(@(i)(double(i)),temp)';
        end
        
    end
end

