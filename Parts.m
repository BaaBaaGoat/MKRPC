classdef Parts
    %UNTITLED5 �˴���ʾ�йش����ժҪ
    %   �˴���ʾ��ϸ˵��

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

