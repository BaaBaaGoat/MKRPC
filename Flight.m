classdef Flight
    properties
        FlightObject
    end
    methods
        function obj = Flight(JavaObject)
            obj.FlightObject = JavaObject;
        end
    end
    methods
        function  ReynoldsNumber = getReynoldsNumber(obj)
           ReynoldsNumber  =double(obj.FlightObject.getReynoldsNumber());
        end
        function  StallFraction = getStallFraction(obj)
           StallFraction  =double(obj.FlightObject.getStallFraction());
        end
        function  DragCoefficient = getDragCoefficient(obj)
           DragCoefficient  =double(obj.FlightObject.getDragCoefficient());
        end
        function  LiftCoefficient = getLiftCoefficient(obj)
           LiftCoefficient  =double(obj.FlightObject.getLiftCoefficient());
        end
        function  BallisticCoefficient = getBallisticCoefficient(obj)
           BallisticCoefficient  =double(obj.FlightObject.getBallisticCoefficient());
        end
        function  ThrustSpecificFuelConsumption = getThrustSpecificFuelConsumption(obj)
           ThrustSpecificFuelConsumption  =double(obj.FlightObject.getThrustSpecificFuelConsumption());
        end

        function  force = simulateAerodynamicForceAt(obj,body,position,velocity)
           import org.javatuples.Triplet
           temp  =obj.FlightObject.simulateAerodynamicForceAt( ...
               body.CelestialBodyObject, ...
               Triplet(position(1),position(2),position(3)), ...
               Triplet(velocity(1),velocity(2),velocity(3)) ...
               ).toArray();
           force = arrayfun(@(i)(double(i)),temp);
        end
        function  GForce = getGForce(obj)
           GForce  =double(obj.FlightObject.getGForce());
        end
        function  MeanAltitude = getMeanAltitude(obj)
           MeanAltitude  =double(obj.FlightObject.getMeanAltitude());
        end
        function  SurfaceAltitude = getSurfaceAltitude(obj)
           SurfaceAltitude  =double(obj.FlightObject.getSurfaceAltitude());
        end
        function  BedrockAltitude = getBedrockAltitude(obj)
           BedrockAltitude  =double(obj.FlightObject.getBedrockAltitude());
        end
        function  Elevation = getElevation(obj)
           Elevation  =double(obj.FlightObject.getElevation());
        end
        function  Latitude = getLatitude(obj)
           Latitude  =double(obj.FlightObject.getLatitude());
        end
        function  Longitude = getLongitude(obj)
           Longitude  =double(obj.FlightObject.getLongitude());
        end
        function  Speed = getSpeed(obj)
           Speed  =double(obj.FlightObject.getSpeed());
        end
        function  HorizontalSpeed = getHorizontalSpeed(obj)
           HorizontalSpeed  =double(obj.FlightObject.getHorizontalSpeed());
        end
        function  VerticalSpeed = getVerticalSpeed(obj)
           VerticalSpeed  =double(obj.FlightObject.getVerticalSpeed());
        end
        function  Pitch = getPitch(obj)
           Pitch  =double(obj.FlightObject.getPitch());
        end
        function  Heading = getHeading(obj)
           Heading  =double(obj.FlightObject.getHeading());
        end
        function  Roll = getRoll(obj)
           Roll  =double(obj.FlightObject.getRoll());
        end
        function  AtmosphereDensity = getAtmosphereDensity(obj)
           AtmosphereDensity  =double(obj.FlightObject.getAtmosphereDensity());
        end
        function  DynamicPressure = getDynamicPressure(obj)
           DynamicPressure  =double(obj.FlightObject.getDynamicPressure());
        end
        function  StaticPressure = getStaticPressure(obj)
           StaticPressure  =double(obj.FlightObject.getStaticPressure());
        end
        function  StaticPressureAtMSL = getStaticPressureAtMSL(obj)
           StaticPressureAtMSL  =double(obj.FlightObject.getStaticPressureAtMSL());
        end
        function  SpeedOfSound = getSpeedOfSound(obj)
           SpeedOfSound  =double(obj.FlightObject.getSpeedOfSound());
        end
        function  Mach = getMach(obj)
           Mach  =double(obj.FlightObject.getMach());
        end
        function  TrueAirSpeed = getTrueAirSpeed(obj)
           TrueAirSpeed  =double(obj.FlightObject.getTrueAirSpeed());
        end
        function  EquivalentAirSpeed = getEquivalentAirSpeed(obj)
           EquivalentAirSpeed  =double(obj.FlightObject.getEquivalentAirSpeed());
        end
        function  TerminalVelocity = getTerminalVelocity(obj)
           TerminalVelocity  =double(obj.FlightObject.getTerminalVelocity());
        end
        function  AngleOfAttack = getAngleOfAttack(obj)
           AngleOfAttack  =double(obj.FlightObject.getAngleOfAttack());
        end
        function  SideslipAngle = getSideslipAngle(obj)
           SideslipAngle  =double(obj.FlightObject.getSideslipAngle());
        end
        function  TotalAirTemperature = getTotalAirTemperature(obj)
           TotalAirTemperature  =double(obj.FlightObject.getTotalAirTemperature());
        end
        function  StaticAirTemperature = getStaticAirTemperature(obj)
           StaticAirTemperature  =double(obj.FlightObject.getStaticAirTemperature());
        end
        function Velocity = getVelocity(obj)
            temp=obj.FlightObject.getVelocity().toArray();
            Velocity=arrayfun(@(i)(double(i)),temp)';
        end
        function CenterOfMass = getCenterOfMass(obj)
            temp=obj.FlightObject.getCenterOfMass().toArray();
            CenterOfMass=arrayfun(@(i)(double(i)),temp)';
        end
        function Direction = getDirection(obj)
            temp=obj.FlightObject.getDirection().toArray();
            Direction=arrayfun(@(i)(double(i)),temp)';
        end
        function Prograde = getPrograde(obj)
            temp=obj.FlightObject.getPrograde().toArray();
            Prograde=arrayfun(@(i)(double(i)),temp)';
        end
        function Retrograde = getRetrograde(obj)
            temp=obj.FlightObject.getRetrograde().toArray();
            Retrograde=arrayfun(@(i)(double(i)),temp)';
        end
        function Normal = getNormal(obj)
            temp=obj.FlightObject.getNormal().toArray();
            Normal=arrayfun(@(i)(double(i)),temp)';
        end
        function AntiNormal = getAntiNormal(obj)
            temp=obj.FlightObject.getAntiNormal().toArray();
            AntiNormal=arrayfun(@(i)(double(i)),temp)';
        end
        function Radial = getRadial(obj)
            temp=obj.FlightObject.getRadial().toArray();
            Radial=arrayfun(@(i)(double(i)),temp)';
        end
        function AntiRadial = getAntiRadial(obj)
            temp=obj.FlightObject.getAntiRadial().toArray();
            AntiRadial=arrayfun(@(i)(double(i)),temp)';
        end
        function AerodynamicForce = getAerodynamicForce(obj)
            temp=obj.FlightObject.getAerodynamicForce().toArray();
            AerodynamicForce=arrayfun(@(i)(double(i)),temp)';
        end
        function Lift = getLift(obj)
            temp=obj.FlightObject.getLift().toArray();
            Lift=arrayfun(@(i)(double(i)),temp)';
        end
        function Drag = getDrag(obj)
            temp=obj.FlightObject.getDrag().toArray();
            Drag=arrayfun(@(i)(double(i)),temp)';
        end
        function Rotation = getRotation(obj)
            temp=obj.FlightObject.getRotation().toArray();
            Rotation=arrayfun(@(i)(double(i)),temp)';
            Rotation = Rotation([4 1 2 3]);
        end


    end
end

