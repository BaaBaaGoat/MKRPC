classdef Engines
    %UNTITLED5 �˴���ʾ�йش����ժҪ
    %   �˴���ʾ��ϸ˵��

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

