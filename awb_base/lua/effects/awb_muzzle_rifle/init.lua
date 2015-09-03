function EFFECT:Init( data )
    
    self.DieTime    =   CurTime( ) + .1
    self.Origin     =   data:GetOrigin( )
    self.Entity     =   data:GetEntity( )
    self.Ang        =   data:GetAngles( )
    self.Velocity   =   data:GetNormal( )

	local emitter = ParticleEmitter( self.Origin ) // Creates the actual emitter

        for i=1, 3 do

            part = emitter:Add( "effects/energysplash", self.Origin )

            part:SetStartSize( math.random ( 0.05, 0.15 ) )
            part:SetEndSize( 0 )
            part:SetDieTime( 0.5 )
            part:SetColor( 255, math.random ( 100, 255 ), math.random ( 0, 50 ), 255 )
            part:SetVelocity( Vector( math.random( -16, -16 ), math.random( -16, 16 ), math.random( 1, 64 ) ) )
            part:SetGravity( Vector( 0, 0, -256 )  )
            part:SetRoll( math.random( 0, 360 )  )

        end	

	emitter:Finish()

	local emitter = ParticleEmitter( self.Origin ) // Creates the actual emitter

        for i=1, 5 do

            part = emitter:Add( "effects/fire_embers1", self.Origin )

            part:SetStartSize( math.random ( 0.5, 1 ) )
            part:SetEndSize( 0 )
            part:SetDieTime( 0.1 )
            part:SetColor( 255, math.random ( 100, 255 ), math.random ( 0, 50 ), 255 )
            part:SetVelocity( Vector( math.random( -16, -16 ), math.random( -16, 16 ), math.random( 1, 64 ) ) )
            part:SetGravity( Vector( 0, 0, -256 )  )
            part:SetRoll( math.random( 0, 360 )  )

        end	

	emitter:Finish()

	local emitter = ParticleEmitter( self.Origin) // Creates the actual emitter

        part = emitter:Add( data:GetEntity( ):GetActiveWeapon( ).Primary.Effect.MuzzleFlash[ math.random( 1, table.Count( data:GetEntity( ):GetActiveWeapon( ):GetTable( ).Primary.Effect.MuzzleFlash ) - 1 ) ], self.Origin )

        part:SetStartSize( math.random ( 6, 10 ) )
        part:SetEndSize( 4 )
        part:SetDieTime( 0.05 )
        part:SetColor( 255, 255, 255, 255 )
        part:SetVelocity( Vector( 0, 0, math.random( 1, 2 ) ) )
        part:SetRoll( math.random( 0, 360 ) )

	emitter:Finish()

	local emitter = ParticleEmitter( self.Origin) // Creates the actual emitter

        part = emitter:Add( "sprites/heatwave", self.Origin )

        part:SetStartSize( math.random ( 4, 12 ) )
        part:SetEndSize( math.random ( 2, 4 ) )
        part:SetDieTime( 0.1 )
        part:SetColor( 255, 255, 255, math.random( 100, 255 ) )
        part:SetVelocity( Vector( 0, 0, math.random( 1, 2 ) ) )
        part:SetRoll( math.random( 0, 360 ) )

	emitter:Finish()
    
end


function EFFECT:Think( )
    
    if self.DieTime > CurTime( ) then
        
        local emitter = ParticleEmitter( self.Origin ) // Creates the actual emitter

            part = emitter:Add( self.Entity:GetActiveWeapon( ).Primary.Effect.MuzzleSmoke, self.Entity:GetActiveWeapon( ):MuzzlePosition( )[2] )

            part:SetStartSize( 2 )
            part:SetEndSize( 1 )
            part:SetDieTime( 4 )
            part:SetColor( 50, 50, 50, 255 )
            part:SetStartAlpha( 10 )
            part:SetEndAlpha( 0 )
            part:SetVelocity( Vector( math.random( -2, 2 ), math.random( -2, 2 ), 10 ) )
            part:SetRoll( math.random( 0, 360 ) )

        local emitter = ParticleEmitter( self.Origin) // Creates the actual emitter

            part = emitter:Add( self.Entity:GetActiveWeapon( ).Primary.Effect.MuzzleSmoke, self.Entity:GetActiveWeapon( ):MuzzlePosition( )[2] )

            part:SetStartSize( 1 )
            part:SetEndSize( 1 )
            part:SetDieTime( .25 )
            part:SetColor( 100, 100, 100, 5 )
            part:SetStartAlpha( 50 )
            part:SetEndAlpha( 0 )
            part:SetVelocity( Vector( 0, 0, 1 ) )
            part:SetRoll( math.random( 0, 360 ) )

        emitter:Finish()
        
       return true
        
    else
        
	   return false	
        
    end
    
end


function EFFECT:Render()
end