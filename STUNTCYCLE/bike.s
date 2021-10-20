;
;  bike.s
;  STUNTCYCLE
;
;  Created by Peter Hirschberg on 10/16/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;

        case on
        mcopy global.macros
        keep global


bike start
        using spritesData
        using groundData
        using rampData
        using bikeData
        
        
runBike entry

        lda bikeAnimationState
        sta bikeAnimationStateOld
        
        lda bikePosX
        sta bikePosXOld
        
        lda bikeRow
        sta bikeRowOld
        
        dec bikeSpeedTimer
        lda bikeSpeedTimer
        bmi adjustBikeSpeed
        bra dontAdjustBikeSpeed
        
adjustBikeSpeed anop

        lda #16
        sta bikeSpeedTimer
        
        lda bikeSpeed
        clc
        adc #1
        sta bikeSpeed
        
dontAdjustBikeSpeed anop

        jsr animateBike
        
        lda bikeRow
        cmp #1
        bne goRight
        
        lda bikePosX
        sec
        sbc bikeSpeed
        sta bikePosX
        
        lda bikePosX
        bmi resetBikePosToLeft
        rts
        
goRight anop

        lda bikePosX
        clc
        adc bikeSpeed
        sta bikePosX
        
        
        lda #0
        sta bikeIsAirborne
        
        jsr isOverLeftRamp
        cmp #0
        beq notOverLeftRamp

        lda #1
        sta bikeIsAirborne
       
       
notOverLeftRamp anop

        lda bikePosX
        shiftedToPixel
        cmp #319-24
        bcs resetBikePosToRight
        rts
        
resetBikePosToLeft anop
        lda #0
        pixelToShifted
        sta bikePosX
        inc bikeRow
        lda bikeRow
        cmp #3
        beq resetToTop
        rts

resetBikePosToRight anop
        lda #319-24
        pixelToShifted
        sta bikePosX
        inc bikeRow
        lda bikeRow
        cmp #3
        beq resetToTop
        rts
        
resetToTop anop
        lda #0
        pixelToShifted
        sta bikePosX
        lda #0
        sta bikeRow
        lda #10
        sta bikeSpeed
        rts
        
        
animateBike entry

        dec bikeAnimationTimer
        lda bikeAnimationTimer
        bmi resetAnimationTimer

resetAnimationTimer anop
        lda 8
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
        shiftedToPixel
        sta spriteX
        lda bikeRow
        asl a
        tax
        lda groundData,x
        sec
        sbc #16
        sta spriteY
        
        
        lda bikeIsAirborne
        cmp #0
        beq drawBikeNotAirborne
        
        lda spriteY
        sec
        sbc #8
        sta spriteY
        
        
drawBikeNotAirborne anop

        lda bikeRow
        cmp #1
        beq drawLeft
        jsr drawBikeStateRight
        rts
drawLeft anop
        jsr drawBikeStateLeft
        rts


        
eraseBike entry

        lda bikePosXOld
        shiftedToPixel
        sta spriteX
        lda bikeRowOld
        asl a
        tax
        lda groundData,x
        sec
        sbc #16
        sta spriteY
        
        
        lda bikeIsAirborne
        cmp #0
        beq eraseBikeNotAirborne
        
        lda spriteY
        sec
        sbc #8
        sta spriteY
        
        
eraseBikeNotAirborne anop


        lda bikeRowOld
        cmp #1
        beq eraseLeft
        jsr eraseBikeStateRight
        rts
eraseLeft anop
        jsr eraseBikeStateLeft
        rts
        

eraseBikeStateRight entry
        lda bikeAnimationStateOld
        cmp #0
        bne eraseAnimationStateRight1
        jsl eraseSprite2
        rts
eraseAnimationStateRight1 anop
        jsl eraseSprite3
        rts

        
eraseBikeStateLeft entry
        lda bikeAnimationStateOld
        cmp #0
        bne eraseAnimationStateLeft1
        jsl eraseSprite0
        rts
eraseAnimationStateLeft1 anop
        jsl eraseSprite1
        rts
        
        
        
drawBikeStateRight entry
        lda bikeAnimationState
        cmp #0
        bne drawAnimationStateRight1
        jsl drawSprite2
        rts
drawAnimationStateRight1 anop
        jsl drawSprite3
        rts
        
        
drawBikeStateLeft entry
        lda bikeAnimationState
        cmp #0
        bne drawAnimationStateLeft1
        jsl drawSprite0
        rts
drawAnimationStateLeft1 anop
        jsl drawSprite1
        rts
        
        
        
isOverLeftRamp entry

        lda bikeRow
        cmp #2
        beq onBottomRow1
        lda #0
        rts

onBottomRow1 anop

        lda bikePosX
        shiftedToPixel
        clc
        adc #24
        sta temp
        cmp leftRampPos
        bcs leftCheckPasses
        lda #0
        rts
        
leftCheckPasses anop

        lda leftRampRight
        cmp temp
        bcs rightCheckPasses1
        lda #0
        rts
    
rightCheckPasses1 anop
        lda #1
        rts

        
        
        
temp dc i2'0'
        
        end


bikeData data
    
bikeSpeedTimer dc i2'0'
bikeSpeed dc i2'10'
bikeState dc i2'0'
bikePosX dc i2'0'
bikePosXOld dc i2'0'
bikeRow dc i2'0'
bikeRowOld dc i2'0'
bikeAnimationTimer dc i2'0'
bikeAnimationState dc i2'0'
bikeAnimationStateOld dc i2'0'

bikeIsAirborne dc i2'0'

    
        end
