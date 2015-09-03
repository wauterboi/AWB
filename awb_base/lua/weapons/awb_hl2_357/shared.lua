SWEP.Base = "awb_base"

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
        SWEP.Slot           =   1
        SWEP.SlotPosition   =   2

    -- View/World Model

        SWEP.ViewModel      =   "models/weapons/v_357.mdl"
        SWEP.ViewModelFOV   =   60
        SWEP.ViewModelFlip  =   false

        SWEP.WorldModel     =   "models/weapons/w_357.mdl"

    -- Scope Variables

        SWEP.Primary.Scope.Draw         = false
        SWEP.Primary.Scope.BG           = Material( "anathema/scope/scope_test" )       -- Wrap that string in Material( )
        SWEP.Primary.Scope.Refract      = Material( "anathema/scope/scope_refract" )       -- Wrap that string in Material( )
        SWEP.Primary.Scope.FG           = Material( "anathema/scope/scope_test_crosshair" )       -- Wrap that string in Material( )
        SWEP.Primary.Scope.FOV          = 10
        SWEP.Primary.Scope.WhileFiring  = true
        SWEP.Primary.Scope.Sound        = {
            "player/taunt_clothes_swipe.wav",
            "player/taunt_clothes_swipe2.wav"
        }

    -- Sound

        SWEP.Primary.Sound.Shoot    =   "weapons/357/357_fire2.wav"
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
    SWEP.Primary.Effect.MuzzleEffect    =   "awb_muzzle_357"

    -- Reload Speeds

        SWEP.Primary.Reload.ShotgunReload = false   -- This, and the following three variables, are EXPLICITLY for CS:S Shotgun Reload animations.
        SWEP.Primary.Reload.StartAnimDur   =   .25
        SWEP.Primary.Reload.ReloadAnimDur  =   .5
        SWEP.Primary.Reload.FinishAnimDur  =   .5

    -- Gun Modes

        SWEP.Mode.Ducking.Pos           = Vector( 0, -4, 2.6 )
        SWEP.Mode.Ducking.Ang           = Angle( 0, 2, 2 )
        SWEP.Mode.Ducking.AnimDur     = 1
        SWEP.Mode.Ducking.HoldType      = "smg"
        SWEP.Mode.Ducking.FOV           = 80    -- If using a scope, you keep this the same as the ironsight FOV
        SWEP.Mode.Ducking.FOVSpeed      = 2
        SWEP.Mode.Ducking.WalkSpeed     = 100
        --[[ ! ]] SWEP.Mode.Ducking.DuckSpeed     = 0.3   -- Sets how long it takes for the player to enter the ducking position.

        SWEP.Mode.Sprinting.Pos         = Vector( 0, 0, 5 )
        SWEP.Mode.Sprinting.Ang         = Angle( -30, 0, 0 )
        SWEP.Mode.Sprinting.AnimDur   = 4
        SWEP.Mode.Sprinting.HoldType    = "passive"
        SWEP.Mode.Sprinting.FOV         = 100
        SWEP.Mode.Sprinting.FOVSpeed    = 32
        SWEP.Mode.Sprinting.WalkSpeed   = 250

        SWEP.Mode.Ironsight.Pos         = Vector( 0, -5.65, 2.6 )
        SWEP.Mode.Ironsight.Ang         = Angle( 0, 0, 2 )
        SWEP.Mode.Ironsight.AnimDur   = 2
        SWEP.Mode.Ironsight.FocusDur  = .5        -- Length of transition to focus in scope
        SWEP.Mode.Ironsight.HoldType    = "smg"
        SWEP.Mode.Ironsight.FOV         = 75
        SWEP.Mode.Ironsight.FOVSpeed    = 0.5
        SWEP.Mode.Ironsight.WalkSpeed   = 125
        SWEP.Mode.Ironsight.Sensitivity = 1    -- Multiplier of normal sensitivity when aiming

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

        SWEP.Primary.Delay      =   .75         -- Firerate
        SWEP.Primary.FirstDelay =   1           -- Amount of time that differentiates different sessions of firing
                                                -- This allows the recoil ramping to reset
        SWEP.Primary.Automatic  =   true        -- There is no reason to set this to false
        SWEP.Primary.NumBullets     =   1

    -- Ammo

        SWEP.Primary.Ammo       =   "SMG1"
        SWEP.Primary.ClipSize   =   16
        SWEP.Primary.DefaultClip=   64

    -- Damage

        -- Max damage is done CLOSE and min damage is done FAR

        SWEP.Primary.Damage.MaxDamage       =   125
        SWEP.Primary.Damage.MaxDamageDist   =   64
        SWEP.Primary.Damage.MinDamage       =   75
        SWEP.Primary.Damage.MinDamageDist   =   512
    
    -- Force

        SWEP.Primary.Force = 5 -- CUSTOM FORCE

    -- Recoil and Inaccuracy

        -- Starts at BaseX and moves up to MaxX over TimeToMax
    
        SWEP.Primary.Recoil.BaseKick    = 2
        SWEP.Primary.Recoil.MaxKick     = 4
        SWEP.Primary.Recoil.TimeToMax   = 1

        SWEP.Primary.Recoil.IronMult    = .5    -- How much to reduce the recoil when aiming down sights/scope

        SWEP.Primary.Recoil.Pattern.X.Wave  =   "sin"
        SWEP.Primary.Recoil.Pattern.X.Abs   =   true
        SWEP.Primary.Recoil.Pattern.X.Freq  =   3
        SWEP.Primary.Recoil.Pattern.X.Amp   =   1.5

        SWEP.Primary.Recoil.Pattern.Y.Wave  =   "sin"
        SWEP.Primary.Recoil.Pattern.Y.Abs   =   true
        SWEP.Primary.Recoil.Pattern.Y.Freq  =   4
        SWEP.Primary.Recoil.Pattern.Y.Amp   =   .5

        SWEP.Primary.Spread.BasePrec    = 0.1
        SWEP.Primary.Spread.MaxPrec     = 1
        SWEP.Primary.Spread.TimeToMax   = 4

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