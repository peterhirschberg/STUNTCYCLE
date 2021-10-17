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
    
    
drawGround entry


        lda #50
        asl a
        tax
        lda screenRowOffsets,x
        tax
        jsr drawGroundLine

        lda #120
        asl a
        tax
        lda screenRowOffsets,x
        tax
        jsr drawGroundLine

        lda #190
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
