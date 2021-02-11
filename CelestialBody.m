classdef CelestialBody
    properties
        CelestialBodyObject
    end
    methods
        function obj = CelestialBody(JavaObject)
            obj.CelestialBodyObject = JavaObject;
        end
    end   
    methods
        function orbit = getOrbit(obj)
            orbit = Orbit(obj.CelestialBodyObject.getOrbit());
        end
        function Mass = getMass(obj)
            Mass = double(obj.CelestialBodyObject.getMass());
        end
        function GravitationalParameter = getGravitationalParameter(obj)
            GravitationalParameter = double(obj.CelestialBodyObject.getGravitationalParameter());
        end
        function SurfaceGravity = getSurfaceGravity(obj)
            SurfaceGravity = double(obj.CelestialBodyObject.getSurfaceGravity());
        end
        function RotationalPeriod = getRotationalPeriod(obj)
            RotationalPeriod = double(obj.CelestialBodyObject.getRotationalPeriod());
        end
        function RotationalSpeed = getRotationalSpeed(obj)
            RotationalSpeed = double(obj.CelestialBodyObject.getRotationalSpeed());
        end
        function RotationAngle = getRotationAngle(obj)
            RotationAngle = double(obj.CelestialBodyObject.getRotationAngle());
        end
        function InitialRotation = getInitialRotation(obj)
            InitialRotation = double(obj.CelestialBodyObject.getInitialRotation());
        end
        function EquatorialRadius = getEquatorialRadius(obj)
            EquatorialRadius = double(obj.CelestialBodyObject.getEquatorialRadius());
        end
        function SphereOfInfluence = getSphereOfInfluence(obj)
            SphereOfInfluence = double(obj.CelestialBodyObject.getSphereOfInfluence());
        end
        function AtmosphereDepth = getAtmosphereDepth(obj)
            AtmosphereDepth = double(obj.CelestialBodyObject.getAtmosphereDepth());
        end
        function FlyingHighAltitudeThreshold = getFlyingHighAltitudeThreshold(obj)
            FlyingHighAltitudeThreshold = double(obj.CelestialBodyObject.getFlyingHighAltitudeThreshold());
        end
        function SpaceHighAltitudeThreshold = getSpaceHighAltitudeThreshold(obj)
            SpaceHighAltitudeThreshold = double(obj.CelestialBodyObject.getSpaceHighAltitudeThreshold());
        end
        function HasAtmosphericOxygen = getHasAtmosphericOxygen(obj)
            HasAtmosphericOxygen = logical(obj.CelestialBodyObject.getHasAtmosphericOxygen());
        end
        function HasAtmosphere = getHasAtmosphere(obj)
            HasAtmosphere = logical(obj.CelestialBodyObject.getHasAtmosphere());
        end
        function Name = getName(obj)
            Name = string(obj.CelestialBodyObject.getName());
        end
        function Refer = getReferenceFrame(obj)
            Refer = ReferenceFrame(obj.CelestialBodyObject.getReferenceFrame());
        end
        function NonRotatingReferenceFrame = getNonRotatingReferenceFrame(obj)
            NonRotatingReferenceFrame = ReferenceFrame(obj.CelestialBodyObject.getNonRotatingReferenceFrame());
        end
        function OrbitalReferenceFrame = getOrbitalReferenceFrame(obj)
            OrbitalReferenceFrame = ReferenceFrame(obj.CelestialBodyObject.getOrbitalReferenceFrame());
        end
        function Satellites = getSatellites(obj)
            Satellites = arrayfun(@(i)(CelestialBody(i)),obj.CelestialBodyObject.getSatellites().toArray());
        end
        function position = position(obj,referenceFrame)
            temp = obj.VesselObject.position(referenceFrame.ReferenceFrameObject).toArray();
            position = arrayfun(@(i)(double(i)),temp)';
        end
        function velocity = velocity(obj,referenceFrame)
            temp = obj.VesselObject.velocity(referenceFrame.ReferenceFrameObject).toArray();
            velocity = arrayfun(@(i)(double(i)),temp)';
        end
        function rotation = rotation(obj,referenceFrame)
            temp = obj.VesselObject.rotation(referenceFrame.ReferenceFrameObject).toArray();
            rotation = arrayfun(@(i)(double(i)),temp)';
            rotation = rotation([4 1 2 3]);
        end
        function direction = direction(obj,referenceFrame)
            temp = obj.VesselObject.direction(referenceFrame.ReferenceFrameObject).toArray();
            direction = arrayfun(@(i)(double(i)),temp)';
        end
        function angularVelocity = angularVelocity(obj,referenceFrame)
            temp = obj.VesselObject.angularVelocity(referenceFrame.ReferenceFrameObject).toArray();
            angularVelocity = arrayfun(@(i)(double(i)),temp)';
        end
        function altitudeAtPosition = altitudeAtPosition(obj,position,referenceFrame)
            import org.javatuples.Triplet;
            altitudeAtPosition=obj.CelestialBodyObject.altitudeAtPosition(Triplet(position(1),position(2),position(3)),referenceFrame.ReferenceFrameObject);
        end
        function latitudeAtPosition = latitudeAtPosition(obj,position,referenceFrame)
            import org.javatuples.Triplet;
            latitudeAtPosition=obj.CelestialBodyObject.latitudeAtPosition(Triplet(position(1),position(2),position(3)),referenceFrame.ReferenceFrameObject);
        end
        function longitudeAtPosition = longitudeAtPosition(obj,position,referenceFrame)
            import org.javatuples.Triplet;
            longitudeAtPosition=obj.CelestialBodyObject.longitudeAtPosition(Triplet(position(1),position(2),position(3)),referenceFrame.ReferenceFrameObject);
        end
        function atmosphericDensityAtPosition = atmosphericDensityAtPosition(obj,position,referenceFrame)
            import org.javatuples.Triplet;
            atmosphericDensityAtPosition=obj.CelestialBodyObject.atmosphericDensityAtPosition(Triplet(position(1),position(2),position(3)),referenceFrame.ReferenceFrameObject);
        end
        function temperatureAt = temperatureAt(obj,position,referenceFrame)
            import org.javatuples.Triplet;
            temperatureAt=obj.CelestialBodyObject.temperatureAt(Triplet(position(1),position(2),position(3)),referenceFrame.ReferenceFrameObject);
        end
        function mSLPosition = mSLPosition(obj,latitude,longitude,referenceFrame)
            temp=obj.CelestialBodyObject.mSLPosition(latitude,longitude,referenceFrame.ReferenceFrameObject).toArray();
            mSLPosition=arrayfun(@(i)(double(i)),temp)';
        end
        function surfacePosition = surfacePosition(obj,latitude,longitude,referenceFrame)
            temp=obj.CelestialBodyObject.surfacePosition(latitude,longitude,referenceFrame.ReferenceFrameObject).toArray();
            surfacePosition=arrayfun(@(i)(double(i)),temp)';
        end
        function bedrockPosition = bedrockPosition(obj,latitude,longitude,referenceFrame)
            temp=obj.CelestialBodyObject.bedrockPosition(latitude,longitude,referenceFrame.ReferenceFrameObject).toArray();
            bedrockPosition=arrayfun(@(i)(double(i)),temp)';
        end
        function positionAtAltitude = positionAtAltitude(obj,latitude,longitude,altitude,referenceFrame)
            temp=obj.CelestialBodyObject.positionAtAltitude(latitude,longitude,altitude,referenceFrame.ReferenceFrameObject).toArray();
            positionAtAltitude=arrayfun(@(i)(double(i)),temp)';
        end
        function densityAt = densityAt(obj,altitude)
            densityAt = obj.CelestialBodyObject.densityAt(altitude);
        end
        function pressureAt = pressureAt(obj,altitude)
            pressureAt = obj.CelestialBodyObject.pressureAt(altitude);
        end
        function surfaceHeight = surfaceHeight(obj,latitude,longitude)
            surfaceHeight = obj.CelestialBodyObject.surfaceHeight(latitude,longitude);
        end
        function bedrockHeight = bedrockHeight(obj,latitude,longitude)
            bedrockHeight = obj.CelestialBodyObject.bedrockHeight(latitude,longitude);
        end
        function biomes = getBiomes(obj)
            temp = obj.CelestialBodyObject.getBiomes();
            biomes = arrayfun(@(i)(string(i)),temp);
        end
        function biome = biomeAt(obj,latitude,longitude)
            biome = obj.CelestialBodyObject.biomeAt(latitude,longitude);
        end
    end
end

