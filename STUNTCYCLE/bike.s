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

        lda bikePosY
        sta bikePosYOld

        lda bikeRow
        sta bikeRowOld

        lda bikeIsOverLeftRamp
        sta bikeIsOverLeftRampOld

        lda bikeIsAirborne
        sta bikeIsAirborneOld
        
        jsr setBikeYPos
        
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
        sta bikeIsOverLeftRamp

        jsr setSpeedY

        lda bikeIsOverLeftRamp
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
        jsr setBikeYPos
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
        
        
setBikeYPos entry

        lda bikeRow
        asl a
        tax
        lda groundData,x
        sec
        sbc #16
        pixelToShifted
        sta bikePosY
        
        lda bikeIsAirborne
        cmp #0
        beq bikeNotAirborne


        lda bikePosX
        shiftedToPixel
        sec
        sbc leftRampPos
        asl a
        tax
        lda leftRampHeight,x
        sta temp

        lda bikePosY
        shiftedToPixel
        sec
        sbc temp
        pixelToShifted
        sta bikePosY
        
bikeNotAirborne anop

        rts


setSpeedY entry

        lda bikeIsOverLeftRamp
        cmp #0
        beq setSpeedYCheck1Passes
        bra notJustLeftRamp

setSpeedYCheck1Passes anop

        lda bikeIsOverLeftRampOld
        cmp #1
        beq setSpeedYCheck2Passes
        bra notJustLeftRamp

setSpeedYCheck2Passes anop

        lda #2
        sta speedY

        rts

notJustLeftRamp anop

        rts



        
drawBike entry

        lda bikePosX
        shiftedToPixel
        sta spriteX
        lda bikePosY
        shiftedToPixel
        sta spriteY
        
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
        lda bikePosYOld
        shiftedToPixel
        sta spriteY

        lda bikeRowOld
        cmp #1
        beq eraseLeft
        jsr eraseBikeStateRight
        rts
eraseLeft anop
        jsr eraseBikeStateLeft
        rts
        

eraseBikeStateRight entry
        lda bikeIsAirborneOld
        cmp #0
        beq eraseNotAirborne
        lda bikeAnimationStateOld
        cmp #0
        bne eraseAnimationStateRight2
        jsl eraseSprite6
        rts
eraseAnimationStateRight2 anop
        jsl eraseSprite7
        rts
eraseNotAirborne anop
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
        lda bikeIsAirborne
        cmp #0
        beq drawNotAirborne
        lda bikeAnimationState
        cmp #0
        bne drawAnimationStateRight2
        jsl drawSprite6
        rts
drawAnimationStateRight2 anop
        jsl drawSprite7
        rts
drawNotAirborne anop
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
        adc #4
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
bikePosY dc i2'0'
bikePosXOld dc i2'0'
bikePosYOld dc i2'0'
bikeRow dc i2'0'
bikeRowOld dc i2'0'
bikeAnimationTimer dc i2'0'
bikeAnimationState dc i2'0'
bikeAnimationStateOld dc i2'0'

bikeIsOverLeftRamp dc i2'0'
bikeIsOverLeftRampOld dc i2'0'

bikeIsAirborne dc i2'0'
bikeIsAirborneOld dc i2'0'

speedY dc i2'0'
    
        end
