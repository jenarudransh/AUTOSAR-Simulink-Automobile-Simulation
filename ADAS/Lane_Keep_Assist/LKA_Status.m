classdef LKA_Status < Simulink.IntEnumType
    enumeration
        OFF(0)
        PASSIVE(1)
        ACTIVE(2)
        OVERRIDE(3)
    end
end