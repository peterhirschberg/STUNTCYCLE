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
    
    
        end

rampData data
    
leftRampPos dc i2'20'
rightRampPos dc i2'140'
    
        end
