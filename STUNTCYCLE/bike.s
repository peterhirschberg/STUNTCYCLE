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
        using bikeData
        
        
runBike entry

        lda bikeAnimationState
        sta bikeAnimationStateOld
        
        lda bikePosX
        sta bikePosXOld
        
        lda bikeRow
        sta bikeRowOld

        jsr animateBike
        
        lda bikeRow
        cmp #1
        bne goRight

        dec bikePosX
        dec bikePosX
        dec bikePosX
        dec bikePosX
        lda #10
        cmp bikePosX
        bcs resetBikePosToLeft
        rts
        
goRight anop

        inc bikePosX
        inc bikePosX
        inc bikePosX
        inc bikePosX
        lda bikePosX
        cmp #290
        bcs resetBikePosToRight
        rts
        
resetBikePosToLeft anop
        lda #10
        sta bikePosX
        inc bikeRow
        lda bikeRow
        cmp #3
        beq resetToTop
        rts

resetBikePosToRight anop
        lda #290
        sta bikePosX
        inc bikeRow
        lda bikeRow
        cmp #3
        beq resetToTop
        rts
        
resetToTop anop
        lda #10
        sta bikePosX
        lda #0
        sta bikeRow
        rts
        
        
animateBike entry

        dec bikeAnimationTimer
        lda bikeAnimationTimer
        bmi resetAnimationTimer

resetAnimationTimer anop
        lda #6
        sta bikeAnimationTimer
        
        lda bikeAnimationState
        cmp #0
        bne animationStateToZero
        lda #1
        sta bikeAnimationState
        rts
        
animationStateToZero anop
        lda #0
        sta bikeAnimationState
        rts
        
        
drawBike entry


        lda bikePosX
        sta spriteX
        lda bikeRow
        asl a
        tax
        lda groundData,x
        sec
        sbc #16
        sta spriteY

        jsr drawBikeState

        rts


        
eraseBike entry

        lda bikePosXOld
        sta spriteX
        lda bikeRowOld
        asl a
        tax
        lda groundData,x
        sec
        sbc #16
        sta spriteY

        jsr eraseBikeState

        rts
        

eraseBikeState entry
        lda bikeAnimationStateOld
        cmp #0
        bne eraseAnimationState1
        jsl eraseSprite2
        rts
eraseAnimationState1 anop
        jsl eraseSprite3
        rts

        
drawBikeState entry
        lda bikeAnimationState
        cmp #0
        bne drawAnimationState1
        jsl drawSprite2
        rts
drawAnimationState1 anop
        jsl drawSprite3
        rts
        
        
        
        end


bikeData data
    
    
bikeState dc i2'0'
bikePosX dc i2'10'
bikePosXOld dc i2'0'
bikeRow dc i2'0'
bikeRowOld dc i2'0'
bikeAnimationTimer dc i2'0'
bikeAnimationState dc i2'0'
bikeAnimationStateOld dc i2'0'

    
        end
