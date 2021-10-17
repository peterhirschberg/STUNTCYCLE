;
;  game.s
;  STUNTCYCLE
;
;  Created by Peter Hirschberg on 10/14/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;

        case on

game start
        using spritesData
        using groundData
    
baseInit entry

        jsr setupScreen
        
        jsr normalColorTable

        jsr clearScreen
        
        jsr drawGround
        
        jsr drawRamps
        
        rtl
        
        
gameInit entry

        rts



runGameTick entry

gameLoop anop

        jsr waitForVbl
        
        jsr runBike
        
        jsr drawBike
        
        brl gameLoop

        rtl
    
    
        end

