classdef ReferenceFrame
    properties
        ReferenceFrameObject
    end
    methods
        function obj = ReferenceFrame(JavaObject)
            obj.ReferenceFrameObject = JavaObject;
        end
    end
end

