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
    
    
baseInit entry

        jsr setupScreen
        
        jsr normalColorTable

        jsr clearScreen
        
        jsr drawGround
        
        rtl
        
        
gameInit entry

        rts



runGameTick entry

gameLoop anop

        jsr waitForVbl
        jsr waitForVbl
        jsr waitForVbl

        lda #100
        sta spriteX
        lda #120-16
        sta spriteY
        
        jsl eraseSprite1
        jsl drawSprite0

        
        jsr waitForVbl
        jsr waitForVbl
        jsr waitForVbl

        lda #100
        sta spriteX
        lda #120-16
        sta spriteY
        
        jsl eraseSprite0
        jsl drawSprite1

        
        brl gameLoop


        rtl
    
    
        end

