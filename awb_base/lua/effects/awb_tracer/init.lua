function EFFECT:Init( data )
    
    local owner     = data:GetEntity( ):GetOwner( )
    self.Origin     = data:GetOrigin( )
    self.DieTime    = CurTime( ) + ( FrameTime( ) )
    
    if owner == LocalPlayer( ) and owner:GetViewEntity( ) == owner then
        
        self.StartPos = owner:GetViewModel( ):GetAttachment( 1 ).Pos
        
    else
        
    if not IsValid (data:GetEntity( ) ) or not data:GetEntity():GetAttachment( 1 ) then return end
        
        self.StartPos = data:GetEntity( ):GetAttachment( 1 ).Pos
        
    end
    
end

function EFFECT:Think( )
    
    if CurTime( ) < self.DieTime then
        return true
    else
        return false
    end
    
end

function EFFECT:Render( )
    
    render.SetMaterial( Material( "effects/beam_generic01" ) )
    render.StartBeam( 4 )
    render.AddBeam( self.StartPos, 0, 64, Color( 255, 255, 255, 0 ) )
    render.AddBeam( LerpVector( 0.33, self.StartPos, self.Origin ), .5, 64, Color( 255, 200, 100, 150 ) )
    render.AddBeam( LerpVector( 0.66, self.StartPos, self.Origin ), .5, 64, Color( 255, 200, 0, 255 ) )
    render.AddBeam( self.Origin, 1, 64, Color( 255, 255, 255, 255 ) )
    render.EndBeam( )
    
    render.SetMaterial( Material( "effects/add_fireball" ) )
    
    render.DrawSprite( self.Origin, 1, 1, white )
    
end