;
;  ramps.s
;  STUNTCYCLE
;
;  Created by Peter Hirschberg on 10/17/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;

;20,21
;22,23

        case on


ramps start
        using spritesData
        using groundData
        using rampData
        
    
drawRamps entry

; first ramp

        lda leftRampPos
        sta spriteX
        ldx #4
        lda groundLevels,x
        sec
        sbc #16
        sta spriteY
        jsl drawSprite20
        
        lda leftRampPos
        clc
        adc #24
        sta spriteX
        ldx #4
        lda groundLevels,x
        sec
        sbc #16
        sta spriteY
        jsl drawSprite21

; buses

        lda leftRampPos
        clc
        adc #24
        adc #16
        sta busPos

        ldy numBuses

busLoop anop

        lda busPos
        sta spriteX

        ldx #4
        lda groundLevels,x
        sec
        sbc #16
        sta spriteY
        jsl drawSprite16
        
        lda busPos
        clc
        adc #8
        sta busPos
        
        dey
        tya
        bmi busDone
        bra busLoop
        
busDone anop

        lda busPos
        clc
        adc #8
        sta rightRampPos

; second ramp
        
        lda rightRampPos
        sta spriteX
        ldx #4
        lda groundLevels,x
        sec
        sbc #16
        sta spriteY
        jsl drawSprite22
        
        lda rightRampPos
        clc
        adc #24
        sta spriteX
        ldx #4
        lda groundLevels,x
        sec
        sbc #16
        sta spriteY
        jsl drawSprite23
        


        rts
    
    
busPos dc i2'0'
    
        end


rampData data
    
numBuses dc i2'4'
    
leftRampPos dc i2'20'
rightRampPos dc i2'140'
    
        end
