classdef kRPC
    properties
        connObject
        kRPCObject
    end
    methods
        function obj = kRPC(ip,portservice,portstream)
            %kRPC KRPC Connector
            %   When constructed without any arguments, it will 
            %   connect to the local machine on the default port numbers. 
            %   The ip and port can be set by calling:
            %   KRPCConnection("127.0.0.1",50000,50001)
            %   when "127.0.0.1" is the IP address ,and the port number
            %   for service and streaming is 50000 and 50001.
            import krpc.client.Connection;
            import krpc.client.RPCException;
            import krpc.client.services.KRPC;
            import java.io.IOException;
            if(~exist('ip','var'))
                ip="127.0.0.1";
            end
            if(~exist('portservice','var'))
                portservice=1000;
            end
            if(~exist('portstream','var'))
                portstream=1001;
            end
                obj.connObject = Connection.newInstance( ...
                    'Matlab',ip, portservice,portstream);
                obj.kRPCObject = KRPC.newInstance(obj.connObject);
        end
        function close( obj )%析构函数，释放数据源'
            obj.connObject.close();
        end
        % TODO:
%    .. method:: getClients() 太复杂且用不到
%TODO    .. method:: krpc.schema.KRPC.Status getStatus()
%TODO    .. method:: krpc.schema.KRPC.Services getServices()
%TODO    .. method:: GameScene getCurrentGameScene()
        function resu = getPaused(obj)
            resu = obj.kRPCObject.getPaused();
        end
        function setPaused(obj,stat)
            obj.kRPCObject.setPaused(stat);
        end
        function resu = getClientName(obj)
            resu = obj.kRPCObject.getClientName();
        end
        function resu = getClientID(obj)
            resu = typecast(obj.kRPCObject.getClientID(),'uint8')';
        end
    end
end

