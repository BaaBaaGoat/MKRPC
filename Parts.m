classdef Parts
    %UNTITLED5 此处显示有关此类的摘要
    %   此处显示详细说明

    properties
        PartsObject
    end
    methods
        function obj = Parts(JavaObject)
            obj.PartsObject = JavaObject;
        end
        function engines = getEngines(obj)
            engines = arrayfun(@(i)Engine(i),...
                obj.PartsObject.getEngines().toArray());
        end     
    end
end

