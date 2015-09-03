AddCSLuaFile( )

function SWEP:StatusCheck( var, condition, verb, ConVar )

    if var == 1 then

        if GetConVar( "awb_debug" ):GetInt( ) == 3 and SERVER then

            MsgC( self.Console.Colors.MoveAlert, self.Console.Prefix.." ".."2: "..self.Owner:Nick( ).." IS "..verb.."\n" )

        end

        return 2

    elseif var == 0 and condition then 

        if GetConVar( "awb_debug" ):GetInt( ) == 3 and SERVER  then

            MsgC( self.Console.Colors.MoveAlert, self.Console.Prefix.." ".."1: "..self.Owner:Nick( ).." STARTED "..verb.."\n" )

        end

        return 1

    elseif var == 2 and !condition then

        if GetConVar( "awb_debug" ):GetInt( ) == 3 and SERVER  then

            MsgC( self.Console.Colors.MoveAlert, self.Console.Prefix.." ".."-1: "..self.Owner:Nick( ).." STOPPED "..verb.."\n" )

        end

        return -1

    elseif var == -1 and !condition then

        if GetConVar( "awb_debug" ):GetInt( ) == 3 and SERVER  then

            MsgC( self.Console.Colors.MoveAlert, self.Console.Prefix.." ".."0: "..self.Owner:Nick( ).." IS NOT "..verb.."\n" )

        end

        return 0

    else

        return var

    end

end

function SWEP:MovementChecks( )
    
    self:SetClimbingStatus(
        self:StatusCheck(
            self:GetClimbingStatus( ),
            ( self.Owner:GetMoveType( ) == MOVETYPE_LADDER ),
            "CLIMBING" )
        )
    
    self:SetCrouchingStatus(
        self:StatusCheck(
            self:GetCrouchingStatus( ),
            ( self.Owner:Crouching( ) ),
            "CROUCHING" )
        )
    
    self:SetWadingStatus(
        self:StatusCheck(
            self:GetWadingStatus( ),
            ( self.Owner:WaterLevel( ) == 2 ),
            "WADING THROUGH WATER" )
        )
    
    self:SetSwimmingStatus(
        self:StatusCheck(
            self:GetSwimmingStatus( ),
            ( self.Owner:WaterLevel( ) == 3 ),
            "SWIMMING" )
        )
    
end

function SWEP:OwnerAllowedToAim( )

    if !self.Primary.Scope.WhileFiring and CurTime( ) < self:GetNextPrimaryFire( ) == true then

        return false

    else

        return true

    end

end