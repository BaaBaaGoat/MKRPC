classdef Orbit
    %UNTITLED3 此处显示有关此类的摘要
    %   此处显示详细说明
    
    properties
        OrbitObject
    end
    
    methods
        function obj = Orbit(JavaObject)
            obj.OrbitObject = JavaObject;
        end
    end
    methods
        %% TODO
%           method:: java.util.List<java.util.List<Double>> listClosestApproaches(Orbit target, int orbits)
%           method:: static org.javatuples.Triplet<Double,Double,Double> referencePlaneNormal(Connection connection, ReferenceFrame referenceFrame)
%           method:: static org.javatuples.Triplet<Double,Double,Double> referencePlaneDirection(Connection connection, ReferenceFrame referenceFrame)
        %%
        function newobj = getNextOrbit(obj)
            newobj = Orbit(obj.OrbitObject.getNextOrbit());
        end
        function  result = getApoapsis(obj)
            result = obj.OrbitObject.getApoapsis();
        end
        function  result = getPeriapsis(obj)
            result = obj.OrbitObject.getPeriapsis();
        end
        function  result = getApoapsisAltitude(obj)
            result = obj.OrbitObject.getApoapsisAltitude();
        end
        function  result = getPeriapsisAltitude(obj)
            result = obj.OrbitObject.getPeriapsisAltitude();
        end
        function  result = getSemiMajorAxis(obj)
            result = obj.OrbitObject.getSemiMajorAxis();
        end
        function  result = getSemiMinorAxis(obj)
            result = obj.OrbitObject.getSemiMinorAxis();
        end
        function  result = getRadius(obj)
            result = obj.OrbitObject.getRadius();
        end
        function  result = getSpeed(obj)
            result = obj.OrbitObject.getSpeed();
        end
        function  result = getPeriod(obj)
            result = obj.OrbitObject.getPeriod();
        end
        function  result = getTimeToApoapsis(obj)
            result = obj.OrbitObject.getTimeToApoapsis();
        end
        function  result = getTimeToPeriapsis(obj)
            result = obj.OrbitObject.getTimeToPeriapsis();
        end
        function  result = getEccentricity(obj)
            result = obj.OrbitObject.getEccentricity();
        end
        function  result = getInclination(obj)
            result = obj.OrbitObject.getInclination();
        end
        function  result = getLongitudeOfAscendingNode(obj)
            result = obj.OrbitObject.getLongitudeOfAscendingNode();
        end
        function  result = getArgumentOfPeriapsis(obj)
            result = obj.OrbitObject.getArgumentOfPeriapsis();
        end
        function  result = getMeanAnomalyAtEpoch(obj)
            result = obj.OrbitObject.getMeanAnomalyAtEpoch();
        end
        function  result = getEpoch(obj)
            result = obj.OrbitObject.getEpoch();
        end
        function  result = getMeanAnomaly(obj)
            result = obj.OrbitObject.getMeanAnomaly();
        end
        function  result = getTrueAnomaly(obj)
            result = obj.OrbitObject.getTrueAnomaly();
        end
        function  result = getOrbitalSpeed(obj)
            result = obj.OrbitObject.getOrbitalSpeed();
        end
        function  result = getEccentricAnomaly(obj)
            result = obj.OrbitObject.getEccentricAnomaly();
        end
        function  result = getTimeToSOIChange(obj)
            result = obj.OrbitObject.getTimeToSOIChange();
        end
        function  result = radiusAt(obj,ut)
            result = obj.OrbitObject.radiusAt(ut);
        end
        function  result = orbitalSpeedAt(obj,time)
            result = obj.OrbitObject.orbitalSpeedAt(time);
        end
        function  result = meanAnomalyAtUT(obj,ut)
            result = obj.OrbitObject.meanAnomalyAtUT(ut);
        end
        function  result = eccentricAnomalyAtUT(obj,ut)
            result = obj.OrbitObject.eccentricAnomalyAtUT(ut);
        end
        function  result = trueAnomalyAtUT(obj,ut)
            result = obj.OrbitObject.trueAnomalyAtUT(ut);
        end
        function  result = trueAnomalyAtRadius(obj,radius)
            result = obj.OrbitObject.trueAnomalyAtRadius(radius);
        end
        function  result = uTAtTrueAnomaly(obj,trueAnomaly)
            result = obj.OrbitObject.uTAtTrueAnomaly(trueAnomaly);
        end
        function  result = radiusAtTrueAnomaly(obj,trueAnomaly)
            result = obj.OrbitObject.radiusAtTrueAnomaly(trueAnomaly);
        end
        function  result = positionAt(obj,ut,referenceFrame)
            temp = obj.OrbitObject.positionAt(ut,referenceFrame).toArray();result = arrayfun(@(i)(double(i)),temp);
        end
        function  result = getBody(obj)
            result = CelestialBody(obj.OrbitObject.getBody());
        end
        function  result = trueAnomalyAtAN(obj,target)
            result = obj.OrbitObject.trueAnomalyAtAN(target.OrbitObject);
        end
        function  result = trueAnomalyAtDN(obj,target)
            result = obj.OrbitObject.trueAnomalyAtDN(target.OrbitObject);
        end
        function  result = timeOfClosestApproach(obj,target)
            result = obj.OrbitObject.timeOfClosestApproach(target.OrbitObject);
        end
        function  result = distanceAtClosestApproach(obj,target)
            result = obj.OrbitObject.distanceAtClosestApproach(target.OrbitObject);
        end
        function  result = relativeInclination(obj,target)
            result = obj.OrbitObject.relativeInclination(target.OrbitObject);
        end
    end
end

