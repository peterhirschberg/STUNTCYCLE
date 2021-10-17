;
;  ground.s
;  STUNTCYCLE
;
;  Created by Peter Hirschberg on 10/16/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;

        case on

ground start
        using globalData
        using groundData
    
    
drawGround entry


        ldx #0
        lda groundLevels,x
        asl a
        tax
        lda screenRowOffsets,x
        tax
        jsr drawGroundLine

        ldx #2
        lda groundLevels,x
        asl a
        tax
        lda screenRowOffsets,x
        tax
        jsr drawGroundLine

        ldx #4
        lda groundLevels,x
        asl a
        tax
        lda screenRowOffsets,x
        tax
        jsr drawGroundLine

        
        rts
        
        
drawGroundLine entry

        ldy #0

groundLoop anop

        lda #$0101
        sta >SCREEN_ADDR,x
        inx
        inx
        iny
        iny
        tya
        cmp #159
        bcs groundLoopDone
        bra groundLoop
        
groundLoopDone anop

        rts
        
    
        end


groundData data

groundLevels anop
        dc i2'65'
        dc i2'125'
        dc i2'185'

        end
