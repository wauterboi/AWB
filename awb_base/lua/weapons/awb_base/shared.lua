--[[

  _|_|                          _|      _|                                    _|_|    
_|    _|  _|_|_|      _|_|_|  _|_|_|_|  _|_|_|      _|_|    _|_|_|  _|_|    _|    _|  
_|_|_|_|  _|    _|  _|    _|    _|      _|    _|  _|_|_|_|  _|    _|    _|  _|_|_|_|  
_|    _|  _|    _|  _|    _|    _|      _|    _|  _|        _|    _|    _|  _|    _|  
_|    _|  _|    _|    _|_|_|      _|_|  _|    _|    _|_|_|  _|    _|    _|  _|    _|

    Scripted Weapon Base by wauterboi

]]--

SWEP.Anathema   =   true

-- Tables *DO NOT TOUCH*

    SWEP.Mode                           = { } 
        SWEP.Mode.Ducking               = { }
        SWEP.Mode.Ironsight             = { }
        SWEP.Mode.Walking               = { }
        SWEP.Mode.Sprinting             = { }
        SWEP.Mode.Misc                  = { }
    SWEP.Primary                        = { }
        SWEP.Primary.Damage             = { }
        SWEP.Primary.Recoil             = { }
        SWEP.Primary.Recoil.Pattern     = { }
        SWEP.Primary.Recoil.Pattern.X   = { }
        SWEP.Primary.Recoil.Pattern.Y   = { }
        SWEP.Primary.Spread             = { }
        SWEP.Primary.BulletDrop         = { }
        SWEP.Primary.Reload             = { }
        SWEP.Primary.Sound              = { }
        SWEP.Primary.Effect             = { }
        SWEP.Primary.Scope              = { }
        SWEP.Primary.Scope.Sound        = { }

-- Customizable Variables

    -- Basic Information

        SWEP.PrintName      =   "AnathemA Weapon Base"
        SWEP.Author         =   "wauterboi"
        SWEP.Instructions   =   ""

    -- View/World Model

        SWEP.ViewModel      =   "models/weapons/v_rif_ak47.mdl"
        SWEP.ViewModelFOV   =   80
        SWEP.ViewModelFlip  =   true

        SWEP.WorldModel     =   "models/weapons/w_rif_ak47.mdl"

    -- Scope Variables

        SWEP.Primary.Scope.Draw         = true
        SWEP.Primary.Scope.BG           = Material( "anathema/scope/scope_test" )       -- Wrap that string in Material( )
        SWEP.Primary.Scope.Refract      = Material( "anathema/scope/scope_refract" )       -- Wrap that string in Material( )
        SWEP.Primary.Scope.FG           = Material( "anathema/scope/scope_test_crosshair" )       -- Wrap that string in Material( )
        SWEP.Primary.Scope.FOV          = 10
        SWEP.Primary.Scope.WhileFiring  = true
        SWEP.Primary.Scope.Sound        = {
            "player/taunt_equipment_gun1.wav",
            "player/taunt_equipment_gun2.wav"
        }

    -- Sound

        SWEP.Primary.Sound.Shoot    =   "weapons/pistol/pistol_fire2.wav"
        SWEP.Primary.Sound.Empty    =   "Weapon_Pistol.Empty"

    -- Effect

    SWEP.Primary.Effect.MuzzleFlash     =   {
        "anathema/sprites/muzzle/anim_muzzle1_01",
        "anathema/sprites/muzzle/anim_muzzle1_02",
        "anathema/sprites/muzzle/anim_muzzle1_03",
        "anathema/sprites/muzzle/anim_muzzle1_04",
        "anathema/sprites/muzzle/anim_muzzle1_05",
        }
    SWEP.Primary.Effect.MuzzleSmoke     =   "particles/smokey"
    SWEP.Primary.Effect.MuzzleEffect    =   "awb_muzzle_rifle"

    -- Reload Speeds

        SWEP.Primary.Reload.ShotgunReload = false   -- This, and the following three variables, are EXPLICITLY for CS:S Shotgun Reload animations.
        SWEP.Primary.Reload.StartAnimDur   =   .25
        SWEP.Primary.Reload.ReloadAnimDur  =   .5
        SWEP.Primary.Reload.FinishAnimDur  =   .5

    -- Gun Modes

        SWEP.Mode.Ducking.Pos           = Vector( 0, 5, 3 )
        SWEP.Mode.Ducking.Ang           = Angle( -4, 4, 2 )
        SWEP.Mode.Ducking.AnimDur     = 1
        SWEP.Mode.Ducking.HoldType      = "smg"
        SWEP.Mode.Ducking.FOV           = 80    -- If using a scope, you keep this the same as the ironsight FOV
        SWEP.Mode.Ducking.FOVSpeed      = 2
        SWEP.Mode.Ducking.WalkSpeed     = 100
        --[[ ! ]] SWEP.Mode.Ducking.DuckSpeed     = 0.3   -- Sets how long it takes for the player to enter the ducking position.

        SWEP.Mode.Sprinting.Pos         = Vector( -10, 0, 0 )
        SWEP.Mode.Sprinting.Ang         = Angle( 0, -70, 10 )
        SWEP.Mode.Sprinting.AnimDur   = 16
        SWEP.Mode.Sprinting.HoldType    = "passive"
        SWEP.Mode.Sprinting.FOV         = 100
        SWEP.Mode.Sprinting.FOVSpeed    = 32
        SWEP.Mode.Sprinting.WalkSpeed   = 250

        SWEP.Mode.Ironsight.Pos         = Vector( -3, 6.1, 2 )
        SWEP.Mode.Ironsight.Ang         = Angle( 3, -.125, 0 )
        SWEP.Mode.Ironsight.AnimDur   = 1
        SWEP.Mode.Ironsight.FocusDur  = .5        -- Length of transition to focus in scope
        SWEP.Mode.Ironsight.HoldType    = "smg"
        SWEP.Mode.Ironsight.FOV         = 75
        SWEP.Mode.Ironsight.FOVSpeed    = 0.5
        SWEP.Mode.Ironsight.WalkSpeed   = 125
        SWEP.Mode.Ironsight.Sensitivity = .125    -- Multiplier of normal sensitivity when aiming

        SWEP.Mode.Walking.Pos           = Vector( 0, 0, 0 )
        SWEP.Mode.Walking.Ang           = Angle( 0, 0, 0 )
        SWEP.Mode.Walking.AnimDur     = 2
        SWEP.Mode.Walking.HoldType      = "shotgun"
        SWEP.Mode.Walking.FOV           = 90
        SWEP.Mode.Walking.FOVSpeed      = 1
        SWEP.Mode.Walking.WalkSpeed     = 200
        --[[ ! ]] SWEP.Mode.Walking.WaterSpeed    = 125

        SWEP.Mode.Misc.Pos              = Vector( -10, 0, -10 )
        SWEP.Mode.Misc.Ang              = Angle( 0, -70, 10 )
        SWEP.Mode.Misc.AnimDur        = 2
        SWEP.Mode.Misc.FOV              = 90
        SWEP.Mode.Misc.FOVSpeed         = 1
        SWEP.Mode.Misc.WalkSpeed        = 100

    -- Firerate

        SWEP.Primary.Delay      =   0.125       -- Firerate
        SWEP.Primary.FirstDelay =   0.2         -- Amount of time that differentiates different sessions of firing
                                                -- This allows the recoil ramping to reset
        SWEP.Primary.Automatic  =   true        -- There is no reason to set this to false
        SWEP.Primary.NumBullets     =   1

    -- Ammo

        SWEP.Primary.Ammo       =   "SMG1"
        SWEP.Primary.ClipSize   =   16
        SWEP.Primary.DefaultClip=   64

    -- Damage

        -- Max damage is done CLOSE and min damage is done FAR

        SWEP.Primary.Damage.MaxDamage       =   100
        SWEP.Primary.Damage.MaxDamageDist   =   64
        SWEP.Primary.Damage.MinDamage       =   75
        SWEP.Primary.Damage.MinDamageDist   =   512

    -- Recoil and Inaccuracy

        -- Starts at BaseX and moves up to MaxX over TimeToMax
    
        SWEP.Primary.Recoil.BaseKick    = 1
        SWEP.Primary.Recoil.MaxKick     = 1
        SWEP.Primary.Recoil.TimeToMax   = 1

        SWEP.Primary.Recoil.IronMult    = .5    -- How much to reduce the recoil when aiming down sights/scope

        SWEP.Primary.Recoil.Pattern.X.Wave  =   "sin"
        SWEP.Primary.Recoil.Pattern.X.Abs   =   true
        SWEP.Primary.Recoil.Pattern.X.Freq  =   3
        SWEP.Primary.Recoil.Pattern.X.Amp   =   1.5

        SWEP.Primary.Recoil.Pattern.Y.Wave  =   "sin"
        SWEP.Primary.Recoil.Pattern.Y.Abs   =   true
        SWEP.Primary.Recoil.Pattern.Y.Freq  =   4
        SWEP.Primary.Recoil.Pattern.Y.Amp   =   2

        SWEP.Primary.Spread.BasePrec    = 0.1
        SWEP.Primary.Spread.MaxPrec     = 1
        SWEP.Primary.Spread.TimeToMax   = 1

    -- Bullet Drop

        -- At how many source units will the bullet hit the ground when shooting up at a 45 degree angle?

        SWEP.Primary.BulletDrop.Dist    = 8000

    -- Disable Secondary (do not touch)

        SWEP.Secondary.ClipSize     = -1
        SWEP.Secondary.DefaultClip  = -1

    -- Console Prefix and colors

        SWEP.Console = { }
            SWEP.Console.Prefix  =   "[AnathemA]"
            SWEP.Console.Colors  =   { }
                SWEP.Console.Colors.Prefix      =    Color( 255, 255, 255 )
                SWEP.Console.Colors.MoveAlert   =    Color( 203, 165, 84 )
                SWEP.Console.Colors.ModeAlert   =    Color( 253, 217, 155 )
                SWEP.Console.Colors.FuncAlert   =    Color( 244, 245, 55 )
                SWEP.Console.Colors.AttackAlert =    Color( 250, 39, 114 )


-- Code

function xFloor( num, decimal )

    local mult = 10 ^ ( decimal or 0 )
    return math.floor( num * mult ) / mult

end

function SWEP:WeaponInUse( )
    
    if self.Owner:GetActiveWeapon( ).PrintName == self.PrintName then
        
        return true
        
    else
        
        return false
        
    end
    
end

function SWEP:Initialize( )
    
    CreateConVar( "awb_debug", 0, 16384, "Enable AnathemA Weapon Base Debugging (0 = off, 1 = normal, 2 = infinite  )" )
                    -- awb_debug options:
                    -- 3: insanely verbose,
                    -- 2: verbose/infinite ammo
                    -- 1: print attack information on PrimaryAttack( )
                    -- 0: off

    self.DATA = { }
    
        self.DATA.AdjRecoil = false

    self.DATA.Reload = { }

        self.DATA.Reload.StartAnimTime          =   nil
        self.DATA.Reload.ReloadStartAnimTime    =   nil
        self.DATA.Reload.ReloadEndAnimTime      =   nil
        self.DATA.Reload.FinishAnimTime         =   nil
        self.DATA.Reload.IdleAnimTime           =   nil
    
    for k, v in pairs( self.Primary.Scope.Sound ) do
        
        if k != "BaseClass" then
        
            util.PrecacheSound( v )
            
        end
        
    end
    
    for k, v in pairs( self.Primary.Sound ) do
        
        if k != "BaseClass" then
        
            util.PrecacheSound( v )
            
        end
        
    end

    if CLIENT then
        
        self.DATA.ModeSwitchTime = CurTime( )

        self.DATA.vm        = { }

            self.DATA.vm.Target = { }

                self.DATA.vm.Target.Pos     = Vector( 0, 0, 0 )
                self.DATA.vm.Target.Ang     = Angle( 0, 0, 0 )
                self.DATA.vm.Target.FOV     = 90

            self.DATA.vm.Current = { }

                self.DATA.vm.Current.Pos    = Vector( 0, 0, 0 )
                self.DATA.vm.Current.Ang    = Angle( 0, 0, 0 )
                self.DATA.vm.Current.FOV    = 90

            self.DATA.vm.FOVSpeed           = 1
            self.DATA.vm.AnimDur          = 1

        self.DATA.BlankTexture  = surface.GetTextureID( "vgui/white" )

    end
    
end

function SWEP:SetupDataTables( )
    
    self:NetworkVar( "Int",     0,  "Mode" )
    self:NetworkVar( "Float",   0,  "ModeSwitchTime" )
    
    self:NetworkVar( "Float",   1,  "Spread" )
    
    self:NetworkVar( "Bool",    0,  "ReloadingStatus" )   -- true when reloading, false otherwise
    self:SetReloadingStatus( false )
    
    self:NetworkVar( "Int",     1,  "CrouchingStatus" )   -- 2 = ply is crouching, 1 = ply just started crouching, 0 = ply is not crouching, -1 = ply just stopped crouching
    self:SetCrouchingStatus( 0 )
    self:NetworkVar( "Int",     2,  "ClimbingStatus" )    -- 2 = ply is climbing, 1 = ply just started climbing, 0 = ply is not climbing, -1 = ply just stopped climbing
    self:SetClimbingStatus( 0 )
    self:NetworkVar( "Int",     3,  "WadingStatus" )      -- 2 = ply is wading, 1 = ply just started wading, 0 = ply is not wading, -1 = ply just stopped wading
    self:SetWadingStatus( 0 )
    self:NetworkVar( "Int",     4,  "SwimmingStatus" )    -- 2 = ply is swimming, 1 = ply just started swimming, 0 = ply is not swimming, -1 = ply just stopped swimming
    self:SetSwimmingStatus( 0 )
    
    self:NetworkVar( "Float",   2,  "FirstShotTime" )
    self:NetworkVar( "Float",   3,  "FirstShotAngle" )
    self:NetworkVar( "Float",   4,  "LastShotTime" )
    self:NetworkVar( "Int",     5,  "PatternRand" )
    
end

function SWEP:Equip( )
    
end

function SWEP:Deploy( )

    if CLIENT then

        hook.Add( "CreateMove", "RouteSWEPToCreateMove", function( cmd )

            self:CreateMove( cmd )

        end )

    end

end

function SWEP:OnRemove( )

    if CLIENT then

        hook.Remove( "CreateMove", "RouteSWEPToCreateMove" )

    end

end

function SWEP:Holster( )

    if CLIENT then

        hook.Remove( "CreateMove", "RouteSWEPToCreateMove" )

    end
    
    return true
    
end

function SWEP:Think( )

    if CLIENT and self.Owner:KeyReleased( IN_ATTACK ) then

        self.DATA.AdjRecoil = true

    end

    if !self:WeaponInUse( ) then return end
    
    self:MovementChecks( )
    
    self:Controls( )
    
    self:ReloadThink( )

end

function SWEP:CreateMove( cmd )
    
    if SERVER then return end
    
    local fsa = self:GetFirstShotAngle( )

    if cmd:GetMouseY( ) < -1 or 
        fsa - cmd:GetViewAngles( ).p < 0.1 or
        ( fsa - cmd:GetViewAngles( ).p > 30 ) then
        self.DATA.AdjRecoil = false

    end

    if self:GetLastShotTime( ) + ( self.Primary.Delay * 4 ) > CurTime( ) and self:GetFirstShotAngle( ) > cmd:GetViewAngles( ).p and self.DATA.AdjRecoil then

        cmd:SetViewAngles( Angle( Lerp( 0.95, self:GetFirstShotAngle( ), cmd:GetViewAngles( ).p ), cmd:GetViewAngles( ).y, cmd:GetViewAngles( ).r ) )

    end
    
end


    include( "movement_checks.lua" ) -- Checks to see if the player just started or stopped crouching
                                     -- Also checks to see if player is allowed to continue aiming while
                                     -- shooting

    function SWEP:Controls( )
    
        -- If the player is swimming
    
        if self:GetSwimmingStatus( ) == 1 then
        
            self:PrepareMode( 4, CurTime( ) )
        
        -- If the player is climbing
        
        elseif self:GetClimbingStatus( ) == 1 then
        
            self:PrepareMode( 4, CurTime( ) )
        
        -- If the player is ducking+aiming
        
        elseif ( self.Owner:KeyDown( IN_ATTACK2 ) and self:GetCrouchingStatus( ) == 1 )
                or ( self.Owner:KeyDown( IN_ATTACK2 ) and self.Owner:KeyPressed( IN_DUCK ) and self:GetCrouchingStatus( ) < 1 )
                or ( self.Owner:KeyPressed( IN_ATTACK2 ) and self.Owner:KeyDown( IN_DUCK ) and self:GetCrouchingStatus( ) > 1 ) then
        
            self.Owner:SetDuckSpeed( self.Mode.Ducking.DuckSpeed )
        
            if self:GetMode( ) != 5 then
                self:PrepareMode( 5, CurTime( ) )
            end
        
            return
        
        -- If the player is ducking
        
        elseif ( !self.Owner:KeyDown( IN_ATTACK2 ) and self:GetCrouchingStatus( ) == 1 )
                or ( !self.Owner:KeyDown( IN_ATTACK2 ) and self.Owner:KeyPressed( IN_DUCK ) and self:GetCrouchingStatus( ) < 1 ) 
                or ( self.Owner:KeyReleased( IN_ATTACK2 ) and self.Owner:KeyDown( IN_DUCK ) and self:GetCrouchingStatus( ) > 1 )  then
        
            self.Owner:SetDuckSpeed( self.Mode.Ducking.DuckSpeed )
        
            if self:GetMode( ) != 3 then
                self:PrepareMode( 3, CurTime( ) )
            end
        
            return
        
        elseif self:GetClimbingStatus( ) == -1 or self:GetSwimmingStatus( ) == -1 or self:GetCrouchingStatus( ) == -1 then
        
            self:PrepareModeAlt( false )
        
        elseif self:GetClimbingStatus( ) == 2 or self:GetSwimmingStatus( ) == 2 or self:GetCrouchingStatus( ) == 2 then
        
            return
        
        -- If the player is running...

        elseif ( self.Owner:KeyPressed( IN_SPEED )  )                                       -- Player simply presses +speed
            then

            self:PrepareMode( 2, CurTime( ) )
        
            return
        
        -- If the player is aiming down sights
        
        elseif ( self.Owner:KeyPressed( IN_ATTACK2 ) and !self.Owner:KeyDown( IN_SPEED ) and self:OwnerAllowedToAim( ) ) -- Player is only pressing +attack2
            or ( self.Owner:KeyDown( IN_ATTACK2 ) and self.Owner:KeyReleased( IN_SPEED ) )                     -- Player just let go of sprint
            or ( self.Owner:KeyPressed( IN_ATTACK2 ) and self.Owner:KeyDown( IN_SPEED ) )                      -- Player presses IN_ATTACK2 after sprint
            then

            self:PrepareMode( 1, CurTime( ) )
        
            return
        
        -- If the player is walking
        
        elseif self.Owner:KeyReleased( IN_SPEED )       -- Stopped running without interception from other conditions
            or self.Owner:KeyReleased( IN_ATTACK2 ) -- Stopped aiming and isn't trying to crouch
            or ( self.Owner:KeyReleased( IN_ATTACK ) and !self:OwnerAllowedToAim( ) )
            then

            self:PrepareMode( 0, CurTime( ) )
        
            return
        
        end

    end

        function SWEP:PrepareMode( mode, time )
    
            local function PrintDebug( ply, text )
        
                if CLIENT then return end
        
                if GetConVar( "awb_debug" ):GetInt( ) == 4 then
                    MsgC( self.Console.Colors.Prefix, self.Console.Prefix, self.Console.Colors.ModeAlert, " "..ply:Nick( ).." entering "..text.."\n" )
                end
        
            end

            -- Let other functions grab mode and time if needed (i.e. animations)
            self:SetMode( mode )
            self:SetModeSwitchTime( time )
    
            if CLIENT then
        
                self.DATA.ModeSwitchTime = time
        
            end

            if mode == 5 then

                if CLIENT then

                    self.DATA.vm.Target.Pos = self.Mode.Ironsight.Pos
                    self.DATA.vm.Target.Ang = self.Mode.Ironsight.Ang
                    self.DATA.vm.AnimDur    = self.Mode.Ironsight.AnimDur
                    self.DATA.vm.Target.FOV = self.Mode.Ironsight.FOV
                    self.DATA.vm.FOVSpeed   = self.Mode.Ironsight.FOVSpeed

                end

                GAMEMODE:SetPlayerSpeed( self.Owner, self.Mode.Ducking.WalkSpeed, self.Mode.Ducking.WalkSpeed )

                self:SetHoldType( self.Mode.Walking.HoldType )
        
                PrintDebug( self.Owner, "DUCK+IRONSIGHT MODE" )

            elseif mode == 4 then

                if CLIENT then

                    self.DATA.vm.Target.Pos = self.Mode.Misc.Pos
                    self.DATA.vm.Target.Ang = self.Mode.Misc.Ang
                    self.DATA.vm.AnimDur    = self.Mode.Misc.AnimDur
                    self.DATA.vm.Target.FOV = self.Mode.Misc.FOV
                    self.DATA.vm.FOVSpeed   = self.Mode.Misc.FOVSpeed

                end

                GAMEMODE:SetPlayerSpeed( self.Owner, self.Mode.Misc.WalkSpeed, self.Mode.Misc.WalkSpeed )

                self:SetHoldType( self.Mode.Sprinting.HoldType )
        
                PrintDebug( self.Owner, "MISC MODE" )

            elseif mode == 3 then

                if CLIENT then

                    self.DATA.vm.Target.Pos = self.Mode.Ducking.Pos
                    self.DATA.vm.Target.Ang = self.Mode.Ducking.Ang
                    self.DATA.vm.AnimDur    = self.Mode.Ducking.AnimDur
                    self.DATA.vm.Target.FOV = self.Mode.Ducking.FOV
                    self.DATA.vm.FOVSpeed   = self.Mode.Ducking.FOVSpeed

                end

                GAMEMODE:SetPlayerSpeed( self.Owner, self.Mode.Ducking.WalkSpeed, self.Mode.Ducking.WalkSpeed )

                self:SetHoldType( self.Mode.Walking.HoldType )
        
                PrintDebug( self.Owner, "DUCK MODE" )

            elseif mode == 2 then 

                if CLIENT then

                    self.DATA.vm.Target.Pos = self.Mode.Sprinting.Pos
                    self.DATA.vm.Target.Ang = self.Mode.Sprinting.Ang
                    self.DATA.vm.AnimDur    = self.Mode.Sprinting.AnimDur
                    self.DATA.vm.Target.FOV = self.Mode.Sprinting.FOV
                    self.DATA.vm.FOVSpeed   = self.Mode.Sprinting.FOVSpeed

                end

                self:SetHoldType( self.Mode.Sprinting.HoldType )

                GAMEMODE:SetPlayerSpeed( self.Owner, self.Mode.Sprinting.WalkSpeed, self.Mode.Sprinting.WalkSpeed )
        
                PrintDebug( self.Owner, "SPRINT MODE" )

            elseif mode == 1 then

                if CLIENT then

                    self.DATA.vm.Target.Pos = self.Mode.Ironsight.Pos
                    self.DATA.vm.Target.Ang = self.Mode.Ironsight.Ang
                    self.DATA.vm.AnimDur    = self.Mode.Ironsight.AnimDur
                    self.DATA.vm.Target.FOV = self.Mode.Ironsight.FOV
                    self.DATA.vm.FOVSpeed   = self.Mode.Ironsight.FOVSpeed
            
                    if IsFirstTimePredicted( ) then
                
                        sound.Play( self.Primary.Scope.Sound[ math.random( 1, table.Count( self.Primary.Scope.Sound ) - 1 ) ], self.Owner:EyePos( ), 75, math.random( 80, 120 ), 1 )
                
                    end

                end

                self:SetHoldType( self.Mode.Ironsight.HoldType )

                GAMEMODE:SetPlayerSpeed( self.Owner, self.Mode.Ironsight.WalkSpeed, self.Mode.Ironsight.WalkSpeed )
        
                PrintDebug( self.Owner, "IRONSIGHT MODE" )

            elseif mode == 0 then

                if CLIENT then

                    self.DATA.vm.Target.Pos = self.Mode.Walking.Pos
                    self.DATA.vm.Target.Ang = self.Mode.Walking.Ang
                    self.DATA.vm.AnimDur  = self.Mode.Walking.AnimDur
                    self.DATA.vm.Target.FOV = self.Mode.Walking.FOV
                    self.DATA.vm.FOVSpeed   = self.Mode.Walking.FOVSpeed

                end

                self:SetHoldType( self.Mode.Walking.HoldType )

                GAMEMODE:SetPlayerSpeed( self.Owner, self.Mode.Walking.WalkSpeed, self.Mode.Walking.WalkSpeed )
        
                PrintDebug( self.Owner, "WALK MODE" )

            end

        end

        function SWEP:PrepareModeAlt( force )
        
            if SERVER and GetConVar( "awb_debug" ):GetInt( ) == 3 then
                MsgC( self.Console.Colors.Prefix, self.Console.Prefix, self.Console.Colors.FuncAlert, " "..self.Owner:Nick( ).."is switching modes through ALTERNATE prepare function \n" )
            end

            -- Q&D check just to see if player is trying to duck, aim, or sprint when the weapon is switched to.

            if force then 

                self:SetMode( 0, 0 )

            end

            if self.Owner:Crouching( ) then return end

            if self.Owner:WaterLevel( ) == 3 then

                self:PrepareMode( 4, CurTime( ) )

            elseif self.Owner:KeyDown( IN_DUCK ) then

                self:PrepareMode( 3, CurTime( ) )

            elseif self.Owner:KeyDown( IN_SPEED ) then

                self:PrepareMode( 2, CurTime( ) )

            elseif self.Owner:KeyDown( IN_ATTACK2 ) then

                self:PrepareMode( 1, CurTime( ) )

            elseif force == false then

                self:PrepareMode( 0, CurTime( ) )

            end

        end

function SWEP:MuzzlePosition( )
    
    if CLIENT then

        local vm = self.Owner:GetViewModel( )
        local attachment

        if vm:LookupAttachment( "muzzle" ) == 0 then
            attachment = 1
        else
            attachment = vm:LookupAttachment( "muzzle" )
        end

        local pos, ang = vm:GetAttachment( attachment ).Pos, vm:GetAttachment( attachment ).Ang

        return { attachment, pos, ang }
        
    end
    
    if SERVER then
        
    end

end

function SWEP:GetViewModelPosition( pos, ang )
    
    if !self.DATA.vm then return pos, ang end

    local ply = LocalPlayer( )

    local switchFrac    = ( self.DATA.ModeSwitchTime - CurTime( ) ) / self.DATA.vm.AnimDur * -1

    local lerpAng       =  Lerp( switchFrac, self.DATA.vm.Current.Ang, self.DATA.vm.Target.Ang )

    ang:RotateAroundAxis( ang:Right(),   lerpAng.p ) -- pitch
    ang:RotateAroundAxis( ang:Up(),      lerpAng.y ) -- yaw
    ang:RotateAroundAxis( ang:Forward(), lerpAng.r ) -- roll

    local lerpPos       =  Lerp( switchFrac, self.DATA.vm.Current.Pos, self.DATA.vm.Target.Pos )

    local offsetPos     =  ( ang:Forward( ) * lerpPos.x ) + ( ang:Right( ) * lerpPos.y ) + ( ang:Up( ) * lerpPos.z )

    local breathPos     =  Vector( math.sin( CurTime( ) * 2 ), math.sin( CurTime( ) ), math.sin( CurTime( ) * 3 ) ) / 64

    pos = pos + offsetPos + breathPos

    self.DATA.vm.Current.Ang    = lerpAng
    self.DATA.vm.Current.Pos    = lerpPos

    return pos, ang
    
end

function SWEP:TranslateFOV( fov )
    
    if !self.DATA.vm then return fov end

    local switchFrac    = ( self.DATA.ModeSwitchTime - CurTime( ) ) / self.DATA.vm.FOVSpeed * -1

    fov = Lerp( switchFrac, self.DATA.vm.Current.FOV, self.DATA.vm.Target.FOV )

    self.DATA.vm.Current.FOV = fov

    return fov

end

function SWEP:PrimaryAttack( )

    if !self:CanPrimaryAttack( ) then
        self:SetNextPrimaryFire( CurTime( ) + self.Primary.Delay )
        return
    end

    self:BulletCheck( )
    
    self:SetSpread( self:CalculateSpread( ) )

    self:ShootBullet( self:GetSpread( ) )
    
    self:CalculateRecoil( )
    
    self:EmitSound( self.Primary.Sound.Shoot )

    self:SetNextPrimaryFire( CurTime( ) + self.Primary.Delay )

    self.Weapon:SendWeaponAnim( ACT_VM_PRIMARYATTACK )
    self.Owner:SetAnimation( PLAYER_ATTACK1 )

    if GetConVarNumber( "awb_debug" )  < 2 then

        self:TakePrimaryAmmo( 1 )

    end
    
end

    function SWEP:CalculateRecoil( )
    
        self.Owner:ViewPunch( Angle( -1, 0, 0 ) )
    
        if SERVER then return end

        local delay     = self.Primary.Delay
        local recoil    = self.Primary.Recoil

        local startTime     = CurTime( ) - self:GetFirstShotTime( )
    
        local kickFrac      = math.Clamp( startTime / recoil.TimeToMax, 0, 1 )
    
        local kickRand      = self:GetPatternRand( )
    
        local kickBonus
    
        if self:GetMode( ) == ( 1 or 3 ) then
        
            kickBonus     = recoil.IronMult
        
        else
        
            kickBonus     = 1
        
        end
    
        local function kickPattern( time, axis )
            
            local axisTable
        
            if axis == x then
            
                axisTable = self.Primary.Recoil.Pattern.X
            
            else
            
                axisTable = self.Primary.Recoil.Pattern.Y
            
            end
            
            time = time * axisTable.Freq
        
            if axisTable.AbsTime == true then
                
                time = math.abs( time )
            
            end
        
            if axisTable.Wave == "sin" then
            
                time = math.sin( time )
            
            elseif axisTable.Wave == "cos" then
            
                time = math.cos( time )
            
            elseif axisTable.Wave == "tan" then
            
                time = math.tan( time )
            
            end
        
            time = time * axisTable.Amp
        
            return time
        
        end    
        
        local kickPatternX  = kickPattern( startTime, x ) * kickRand
        local kickPatternY  = kickPattern( startTime, y )
    
        local kickPenalty   = Lerp( kickFrac, recoil.BaseKick, recoil.MaxKick )
        local kick          = ( Angle( kickPenalty * -1, 0, 0 ) + Angle( kickPatternY * -1, kickPatternX, 0 ) ) * kickBonus
    
        if IsFirstTimePredicted( ) then

            self.Owner:SetEyeAngles( self.Owner:EyeAngles( ) + kick )
        
        end

    end

    function SWEP:CalculateSpread( )
    
        if self:GetLastShotTime( ) + ( self.Primary.FirstDelay ) < CurTime( ) then return 0 end

        local ply       = self.Owner

        local delay     = self.Primary.Delay
        local spread    = self.Primary.Spread

        local precRand      = xFloor( util.SharedRandom( tostring( CurTime( ) ), .75, 1 ), 2 )
        local precFrac      = math.Clamp( ( CurTime( ) - self:GetFirstShotTime( ) ) / spread.TimeToMax, 0, 1 )
        local velocityFrac  = math.Clamp( ply:GetVelocity( ):Length( ) ^ 1.1 / 100, 1, 4 )
        local precPenalty   = Lerp( precFrac, spread.BasePrec, spread.MaxPrec ) * precRand * velocityFrac / 10

        return precPenalty

    end

    function SWEP:BulletCheck( )
    
        local function QuickRandom( )
        
            if math.random( 0, 100 ) > 50 then
            
                self:SetPatternRand( 1 )
            
            else
            
                self:SetPatternRand( -1 )
            
            end
        
        end
    
        if self:GetLastShotTime( ) == nil then
        
            self:SetFirstShotTime( CurTime( ) )
            self:SetFirstShotAngle( self.Owner:EyeAngles( ).p )
            self:SetLastShotTime( CurTime( ) )
            QuickRandom( )
        
        elseif self:GetLastShotTime( ) + ( self.Primary.FirstDelay ) < CurTime( ) then
        
            self:SetFirstShotTime( CurTime( ) )
            self:SetFirstShotAngle( self.Owner:EyeAngles( ).p )
            self:SetLastShotTime( CurTime( ) )
            QuickRandom( )
        
        else
        
            self:SetLastShotTime( CurTime( ) )
        
        end
    
    end

    function SWEP:CanPrimaryAttack( )

        if self.Owner:WaterLevel( ) > 2 then

            self:SetNextPrimaryFire( CurTime( ) + self.Primary.Delay / 4 )
            return false

        elseif self:GetNextPrimaryFire( ) > CurTime( ) then
            return false
        
        elseif self:GetMode( ) == 2 then
            return false

        elseif self:GetReloadingStatus( ) == true then
            return false

        elseif ( self.Weapon:Clip1() <= 0 ) then

            if self.Weapon:Ammo1( ) == 0 or self:GetMode( ) == 1 then
                self:EmitSound( self.Primary.Sound.Empty )
                self:SetNextPrimaryFire( CurTime( ) + 0.5 )
            end

            self:Reload( )
            return false

        else

            return true

        end

    end

function SWEP:ShootBullet( spread )
    
    local ang = self.Owner:EyeAngles( )

    local v0 = ang:Forward( ) * self.Primary.BulletDrop.Dist
    local landed, v, pos, traceResult = false, v0, self.Owner:GetShootPos( ), { }
    local deltaTime = 0.01
    local gravity = GetConVarNumber( "sv_gravity" )

    repeat
        util.TraceLine({
            start = pos,
            endpos = pos + ( v * deltaTime ),
            filter = { self, self.Owner },
            output = traceResult,
            mask = MASK_SHOT
        })

        if traceResult.Hit then
            landed = true

        else

            v.z = v.z - ( gravity * deltaTime )
            pos = pos + ( v * deltaTime )

        end


    until landed or pos:Distance( self.Owner:EyePos( ) ) > 16384    -- This bigass number is the max cubic size of a map!
                                                                    -- Stuff crashes without this!
    

    local bulletDist    = self:EyePos( ):Distance( traceResult.HitPos )
    local slope         = ( self.Primary.Damage.MaxDamage - self.Primary.Damage.MinDamage ) / ( self.Primary.Damage.MaxDamageDist - self.Primary.Damage.MinDamageDist )
    local yInt          = math.abs( self.Primary.Damage.MaxDamageDist * slope - self.Primary.Damage.MaxDamage )
    local dmg           = math.Clamp( ( ( bulletDist - self.Primary.Damage.MaxDamageDist ) * slope ) + yInt, self.Primary.Damage.MinDamage, self.Primary.Damage.MaxDamage )

    if IsFirstTimePredicted( ) then

        util.TraceLine({
            start = self.Owner:GetShootPos( ),
            endpos = pos + ( v * deltaTime ),
            filter = { self, self.Owner },
            output = traceResult.HitPos,
            mask = MASK_SHOT
        })

        self:FireBullets({
            Attacker = self.Owner,
            Damage = dmg,
            Force = self.Primary.Force or dmg / 100,
            Distance = 1000000,
            Tracer= 1,
            TracerName= "awb_tracer",
            Num = self.Primary.NumBullets,
            Dir = traceResult.Normal,
            Spread = Vector( spread, spread ),
            Src = pos,
        })
        
        if SERVER and GetConVar( "awb_debug" ):GetInt( ) >= 1 then
        
            MsgC( self.Console.Colors.Prefix, self.Console.Prefix, self.Console.Colors.AttackAlert, " "..self.Owner:Nick( ).."'s BASE DMG: "..dmg.."\n" )
            
        end

    end

    self:ShootEffects( ang:Forward( ) )
    
end

function SWEP:ShootEffects( ang, posTable )
    
    if CLIENT and LocalPlayer( ) == self.Owner then

        local effectData = EffectData( )
        effectData:SetEntity( self.Owner )
        effectData:SetAngles( Angle( ang.p, ang.y, ang.r ) )
        effectData:SetOrigin( self:MuzzlePosition( )[ 2 ] + ( self.Owner:GetAimVector() * 16 ) )
    
        util.Effect( self.Primary.Effect.MuzzleEffect, effectData )
        
    end
    
end

function SWEP:FireAnimationEvent( pos, ang, event, options ) -- easy removal for CS:S muzzles

    if ( event == 21 or event == 5001 or event == 5011 or event == 5021 or event == 5031 ) then

        return true

    end

end

function SWEP:SecondaryAttack( )
    
end

function SWEP:Reload( )
    
    if !self.DATA.Reload then return end
            
    if self:GetMode( ) == 1 then return false end

    if self:GetMode( ) > 1 then return end

    if self.Primary.Reload.ShotgunReload == true then

        if self:Clip1( ) < self.Primary.ClipSize and self.Weapon:Ammo1( ) > 0 then

            if self:GetReloadingStatus( ) == false then

                self.Owner:AnimRestartGesture( 0, ACT_HL2MP_GESTURE_RELOAD_SHOTGUN, true )
                self:SetReloadingStatus( true )
                self.DATA.Reload.StartAnimTime  =   CurTime( )
            end

        end

    else
        
        self:DefaultReload( ACT_VM_RELOAD )

        self.DATA.Reload.IdleAnimTime = CurTime( ) + self:SequenceDuration( ACT_VM_RELOAD )

    end
    
end

    function SWEP:ReloadThink( )
    
        if !self.DATA.Reload then return end

        if self.DATA.Reload.StartAnimTime and self.DATA.Reload.StartAnimTime < CurTime( ) then

            self.DATA.Reload.StartAnimTime  = nil
            self.DATA.Reload.ReloadStartAnimTime = CurTime( ) + self.Primary.Reload.StartAnimDur
            self:SetReloadingStatus( ACT_SHOTGUN_RELOAD_START )

        elseif self.DATA.Reload.ReloadStartAnimTime and self.DATA.Reload.ReloadStartAnimTime < CurTime( ) then

            if self:Clip1( ) < self.Primary.ClipSize and self.Weapon:Ammo1( ) > 0 then

                self:SendWeaponAnim( ACT_VM_RELOAD )

                self.DATA.Reload.ReloadStartAnimTime = nil
                self.DATA.Reload.ReloadEndAnimTime  = CurTime( ) + self.Primary.Reload.ReloadAnimDur - 0.1
                self:SetClip1( self:Clip1( ) + 1 )
                self.Owner:RemoveAmmo( 1, self:GetPrimaryAmmoType( ) )
                -- self.DATA.Reload.FinishAnimTime = CurTime( ) + self.DATA.Reload.FinishAnimDur

            else

                self.DATA.Reload.ReloadStartAnimTime = nil
                self.DATA.Reload.FinishAnimTime = CurTime( ) + self.Primary.Reload.ReloadAnimDur

            end

        elseif self.DATA.Reload.ReloadEndAnimTime and self.DATA.Reload.ReloadEndAnimTime < CurTime( ) then

            self.DATA.Reload.ReloadEndAnimTime = nil
            self.DATA.Reload.ReloadStartAnimTime = CurTime( ) + 0.1
            self:SendWeaponAnim( ACT_SHOTGUN_RELOAD_START )

        elseif self.DATA.Reload.FinishAnimTime and self.DATA.Reload.FinishAnimTime < CurTime( ) then

            self.DATA.Reload.FinishAnimTime  = nil
            self.DATA.Reload.IdleAnimTime = CurTime( ) + self.Primary.Reload.FinishAnimDur        
            self:SendWeaponAnim( ACT_SHOTGUN_RELOAD_FINISH )

        elseif self.DATA.Reload.IdleAnimTime and self.DATA.Reload.IdleAnimTime < CurTime( ) then

            self.DATA.Reload.IdleAnimTime  = nil        
            self:SendWeaponAnim( ACT_VM_IDLE )
            self:SetReloadingStatus( false )

            self:PrepareModeAlt( false )

        end

    end

local function GenerateCircleVertices( x, y, radius, ang_start, ang_size ) -- Found this on Github by wiox, thanks dude! https://github.com/wiox/gmod-gta-radar/blob/master/lua/autorun/client/gta_radar.lua#L20

    local vertices = { }
    local passes   = 64

    vertices[ 1 ] = {
        x = x,
        y = y,
    }

    for i = 0, passes do

        local ang = math.rad( -90 + ang_start + ang_size * i / passes )

        vertices[ i + 2 ] = {

            x = x + math.cos( ang ) * radius,
            y = y + math.sin( ang ) * radius

        }

    end

   return vertices

end

if CLIENT then

    local RADAR_RADIUS = ScrH( ) / 3
    local RADAR_X, RADAR_Y = ScrW( ) / 2, ScrH( ) / 2

    SWEP.inner_vertices = GenerateCircleVertices( RADAR_X, RADAR_Y, RADAR_RADIUS, 0, 360 )

end

function SWEP:DrawHUDBackground( )
    
    local timeSinceRC = 0
    
    if self.Owner:KeyDown( IN_ATTACK2 ) then
            
    end
    
    if self.Primary.Scope.Draw == false then return end

    local tex_white             =   self.DATA.BlankTexture
    local tex_scope_bg          =   self.Primary.Scope.BG
    local tex_scope_fg          =   self.Primary.Scope.FG
    local tex_scope_refract     =   self.Primary.Scope.Refract
    
    local blurX = Material( "pp/blurx" )
    local blurY = Material( "pp/blury" )

    local oldRT =   render.GetRenderTarget( )

    local rt    =   GetRenderTarget( "scopeRT", ScrW( ), ScrH( ) )
    local rtMat =   CreateMaterial( "scopeRTMat", "UnlitGeneric",
        {            
            ["$basetexture"]    =  "scopeRT",
        } )

    if !self:GetReloadingStatus( ) and (
            ( self:GetMode( ) == 1 and ( self:GetModeSwitchTime( ) + ( self.Mode.Ironsight.AnimDur * .125 ) ) < CurTime( ) )                or ( self:GetMode( ) == 5 )
        )
        then

        if !self.Primary.Scope.WhileFiring and CurTime( ) < self:GetNextPrimaryFire( ) then return end

        local darkenScreen = {
            [ "$pp_colour_addr" ]       = 0, 
            [ "$pp_colour_addg" ]       = 0,
            [ "$pp_colour_addb" ]       = 0, 
            [ "$pp_colour_brightness" ] = -.25, 
            [ "$pp_colour_contrast" ]   = .25, 
            [ "$pp_colour_colour" ]     = .5, 
            [ "$pp_colour_mulr" ]       = 0, 
            [ "$pp_colour_mulg" ]       = 0, 
            [ "$pp_colour_mulb" ]       = 0
        }

        DrawColorModify( darkenScreen )

        render.SetRenderTarget( rt )
            render.SetViewPort( 0, 0, ScrW( ), ScrH( ) )
        
                local lerpFrac =  1 - math.Clamp( ( self:GetModeSwitchTime( ) + self.Mode.Ironsight.FocusDur ) - CurTime( ), 0, 10 ) ^ 2
        
                local devX   =   ( math.sin( CurTime( ) * 2 ) * 3 ) * ( self.Owner:GetVelocity( ):Length( ) / self.Owner:GetWalkSpeed( ) )
                local devY   =   ( math.sin( CurTime( ) * 5 ) * 4 ) * ( self.Owner:GetVelocity( ):Length( ) / self.Owner:GetWalkSpeed( ) )
                local pickupX = Lerp( lerpFrac, ( math.sin( CurTime( ) * 3 ) * 24 ), 0 )
                local pickupY = Lerp( lerpFrac, ( math.sin( CurTime( ) * 2 ) * 32 ), 0 )

                local ScopeData           = {}
                ScopeData.angles          = LocalPlayer( ):EyeAngles( )
                ScopeData.origin          = LocalPlayer( ):EyePos( ) + ( LocalPlayer( ):EyeAngles( ):Up( ) * devY ) + ( LocalPlayer( ):EyeAngles( ):Right( ) * devX ) + ( LocalPlayer( ):EyeAngles( ):Up( ) * pickupY ) + ( LocalPlayer( ):EyeAngles( ):Right( ) * pickupX ) + ( LocalPlayer( ):EyeAngles( ):Up( ) * breathY ) + ( LocalPlayer( ):EyeAngles( ):Right( ) * breathX ) 
                ScopeData.x               = 0
                ScopeData.y               = 0
                ScopeData.w               = ScrW( )
                ScopeData.h               = ScrH( )
                ScopeData.fov             = self.Primary.Scope.FOV
                ScopeData.drawhud         = false
                ScopeData.drawviewmodel   = true
                ScopeData.viewmodelfov    = 0
                ScopeData.dopostprocess   = true

                render.RenderView( ScopeData )
        
            local blurAmount    =   { }
            blurAmount.Intro    =   math.Clamp( ( self:GetModeSwitchTime( ) + self.Mode.Ironsight.FocusDur ) - CurTime( ), 0, 10 )
            blurAmount.Velocity =   math.Clamp( ( self.Owner:GetVelocity( ):Length( ) / self.Owner:GetWalkSpeed( ) ) * math.Clamp( math.sin( CurTime( ) * 2 ) + 1, 0, 10 ) * 4, 0, 1 )
        
            blurX:SetTexture( "$basetexture", rt )
            blurY:SetTexture( "$basetexture", rt )
            blurX:SetFloat( "$size", ( 4 * blurAmount.Intro ) + ( 4 * blurAmount.Velocity ) )
            blurY:SetFloat( "$size", ( 4 * blurAmount.Intro ) + ( 4 * blurAmount.Velocity ) )

            render.SetMaterial( tex_scope_refract )
            render.DrawScreenQuadEx( ScrW( ) / 2 - ( ScrH( ) / 2 ), 0, ScrH( ), ScrH( ) )
        
            render.SetMaterial( blurX )
            render.DrawScreenQuad()
        
            render.SetMaterial( blurY )
            render.DrawScreenQuad()

            render.SetRenderTarget( oldRT )
            render.SetViewPort( 0, 0, ScrW( ), ScrH( ) )
        
        render.SetStencilEnable( true )

            render.SetStencilReferenceValue( 1 )
            render.SetStencilWriteMask( 1 )
            render.SetStencilTestMask( 1 )

            render.SetStencilPassOperation( STENCIL_REPLACE )
            render.SetStencilFailOperation( STENCIL_KEEP )
            render.SetStencilZFailOperation( STENCIL_KEEP )

            render.SetStencilCompareFunction( STENCIL_NOTEQUAL )

                surface.SetTexture( tex_white )
                surface.SetDrawColor( 255, 255, 255, 255 )
                surface.DrawPoly( self.inner_vertices )

            render.SetStencilCompareFunction( STENCIL_EQUAL )

                surface.SetDrawColor( 255, 255, 255, 255 )
                surface.SetMaterial( rtMat )
                surface.DrawTexturedRect( ScrW( ) / 8, ScrH( ) / 8, ScrW( ) / 4 * 3, ScrH( ) / 4 * 3 )

            render.SetStencilCompareFunction( STENCIL_NOTEQUAL )

                surface.SetDrawColor( 255, 255, 255, 255 )
                surface.DrawPoly( self.inner_vertices )

            render.ClearStencil()

        render.SetStencilEnable( false )

        surface.SetMaterial( tex_scope_bg )
        surface.SetDrawColor( 255, 255, 255, 255 )
        surface.DrawTexturedRect( ScrW( ) / 2 - ScrH( ) / 3,  ScrH( ) / 6, ScrH( ) / 3 * 2, ScrH( ) / 3 * 2)

        surface.SetMaterial( tex_scope_fg )
        surface.SetDrawColor( 255, 255, 255, 255 )
        surface.DrawTexturedRect( ScrW( ) / 2 - ScrH( ) / 3,  ScrH( ) / 6, ScrH( ) / 3 * 2, ScrH( ) / 3 * 2)

    end

end

function SWEP:DrawHUD( )
    
end

function SWEP:AdjustMouseSensitivity( )
    
    if self:GetMode( ) == 1 then
        
        return self.Mode.Ironsight.Sensitivity
        
    else
    
        return scale or 1
        
    end
    
end