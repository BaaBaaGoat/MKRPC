classdef Engines
    %UNTITLED5 此处显示有关此类的摘要
    %   此处显示详细说明

    properties
        EnginesObject
    end
    methods
        function obj = Engines(JavaObject)
            obj.EnginesObject = JavaObject;
        end
        function setThrustLimit(obj,value)
            engines = arrayfun(@(i)Engine(i),...
                obj.PartsObject.setThrustLimit(value));
        end     
    end
end

