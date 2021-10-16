;
;  screen.s
;  STUNTCYCLE
;
;  Created by Peter Hirschberg on 10/16/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;

        case on


screen start

    
clearScreen entry

        ldx #0

clearScreenLoop anop

        lda #$1111
        sta >SCREEN_ADDR,x
        inx
        inx
        txa
        cmp #$7d00
        beq clearScreenDone
        bra clearScreenLoop

clearScreenDone anop

        rts
    
    
    
        end
