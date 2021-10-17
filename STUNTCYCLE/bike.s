;
;  bike.s
;  STUNTCYCLE
;
;  Created by Peter Hirschberg on 10/16/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;

        case on

bike start
        using spritesData
        using groundData
        
        
runBike entry
        rts
        
        
drawBike entry


        lda #10
        sta spriteX
        ldx #0
        lda groundData,x
        sec
        sbc #16
        sta spriteY

;        jsl eraseSprite3
        jsl drawSprite2


        rts
    
    
        end
