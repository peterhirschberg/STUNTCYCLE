;
;  drawSprite.s
;  STUNTCYCLE
;
;  Created by Peter Hirschberg on 10/14/21.
;Copyright © 2021 Peter Hirschberg. All rights reserved.
;

        case on
        mcopy global.macros
        keep global


drawSprite start
        using globalData
        using spritesData
    
    
drawSprite0 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$ff
        sta 7
        lda #$f1
        sta 8
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$1f
        sta 7
        lda #$f1
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$ff
        sta 4
        sta 7
        lda #$f1
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$1f
        sta 3
        lda #$f1
        sta 4
        sta 5
        lda #$1f
        sta 6
        lda #$ff
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$ff
        sta 3
        lda #$1f
        sta 5
        lda #$ff
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$1f
        sta 2
        lda #$ff
        sta 3
        lda #$1f
        sta 6
        lda #$f1
        sta 7
        sta 8
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$f1
        sta 1
        lda #$ff
        sta 2
        lda #$1f
        sta 3
        lda #$f1
        sta 4
        lda #$ff
        sta 5
        sta 6
        sta 7
        lda #$f1
        sta 8
        sta 10
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$f1
        sta 2
        lda #$ff
        sta 4
        lda #$1f
        sta 8
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$1f
        sta 0
        sta 1
        sta 2
        sta 4
        lda #$ff
        sta 5
        sta 6
        sta 7
        sta 8
        lda #$f1
        sta 9
        sta 10
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$1f
        sta 7
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$f1
        sta 1
        sta 2
        lda #$1f
        sta 8
        sta 9
        long m

        long m

        _spriteFooter
        rtl

drawSprite1 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$ff
        sta 7
        lda #$f1
        sta 8
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$1f
        sta 7
        lda #$f1
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$ff
        sta 4
        sta 7
        lda #$f1
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$1f
        sta 3
        lda #$f1
        sta 4
        sta 5
        lda #$1f
        sta 6
        lda #$ff
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$ff
        sta 3
        lda #$1f
        sta 5
        lda #$ff
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$1f
        sta 2
        lda #$ff
        sta 3
        lda #$1f
        sta 6
        lda #$f1
        sta 7
        lda #$1f
        sta 8
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$1f
        sta 1
        sta 2
        sta 3
        lda #$f1
        sta 4
        lda #$ff
        sta 5
        sta 6
        sta 7
        lda #$f1
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$1f
        sta 0
        lda #$ff
        sta 2
        sta 4
        lda #$1f
        sta 7
        sta 8
        lda #$f1
        sta 10
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$1f
        sta 1
        sta 4
        lda #$ff
        sta 5
        sta 6
        sta 7
        sta 8
        lda #$f1
        sta 9
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$1f
        sta 0
        sta 2
        lda #$f1
        sta 10
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$1f
        sta 1
        lda #$f1
        sta 8
        sta 9
        long m

        long m

        _spriteFooter
        rtl

drawSprite2 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$1f
        sta 3
        lda #$ff
        sta 4
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$1f
        sta 3
        lda #$f1
        sta 4
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$1f
        sta 3
        lda #$ff
        sta 4
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$ff
        sta 4
        lda #$f1
        sta 5
        lda #$1f
        sta 6
        sta 7
        lda #$f1
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$ff
        sta 4
        sta 5
        lda #$f1
        sta 6
        lda #$ff
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$f1
        sta 2
        sta 3
        lda #$1f
        sta 4
        lda #$f1
        sta 5
        lda #$ff
        sta 8
        lda #$f1
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$1f
        sta 3
        lda #$ff
        sta 4
        sta 5
        sta 6
        lda #$1f
        sta 7
        lda #$f1
        sta 8
        sta 9
        sta 10
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$1f
        sta 1
        lda #$f1
        sta 3
        sta 4
        lda #$ff
        sta 7
        sta 9
        lda #$f1
        sta 11
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$1f
        sta 2
        lda #$ff
        sta 3
        sta 4
        sta 5
        sta 6
        lda #$f1
        sta 7
        sta 10
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$1f
        sta 1
        lda #$f1
        sta 9
        sta 11
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$1f
        sta 2
        sta 3
        lda #$f1
        sta 10
        long m

        long m

        _spriteFooter
        rtl

drawSprite3 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$1f
        sta 3
        lda #$ff
        sta 4
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$1f
        sta 3
        lda #$f1
        sta 4
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$1f
        sta 3
        lda #$ff
        sta 4
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$ff
        sta 4
        lda #$f1
        sta 5
        lda #$1f
        sta 6
        sta 7
        lda #$f1
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$ff
        sta 4
        sta 5
        lda #$f1
        sta 6
        lda #$ff
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$1f
        sta 2
        sta 3
        sta 4
        lda #$f1
        sta 5
        lda #$ff
        sta 8
        lda #$f1
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$1f
        sta 1
        sta 3
        lda #$ff
        sta 4
        sta 5
        sta 6
        lda #$1f
        sta 7
        lda #$f1
        sta 8
        lda #$ff
        sta 9
        lda #$1f
        sta 10
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$f1
        sta 3
        lda #$ff
        sta 7
        lda #$1f
        sta 9
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$1f
        sta 1
        sta 2
        lda #$ff
        sta 3
        sta 4
        sta 5
        sta 6
        lda #$f1
        sta 7
        sta 9
        sta 10
        sta 11
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$f1
        sta 4
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$f1
        sta 2
        sta 3
        lda #$1f
        sta 9
        sta 10
        long m

        long m

        _spriteFooter
        rtl

drawSprite4 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$1f
        sta 7
        lda #$ff
        sta 8
        long m

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$ff
        sta 5
        sta 8
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$1f
        sta 4
        lda #$f1
        sta 6
        lda #$1f
        sta 7
        lda #$ff
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$f1
        sta 2
        lda #$ff
        sta 3
        lda #$f1
        sta 4
        lda #$1f
        sta 6
        lda #$ff
        sta 7
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$f1
        sta 3
        lda #$1f
        sta 4
        sta 7
        lda #$f1
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$1f
        sta 1
        sta 2
        sta 3
        lda #$f1
        sta 5
        lda #$ff
        sta 6
        sta 7
        lda #$f1
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$1f
        sta 5
        lda #$f1
        sta 8
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$f1
        sta 2
        sta 3
        sta 6
        lda #$1f
        sta 7
        lda #$f1
        sta 8
        sta 10
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$1f
        sta 6
        lda #$f1
        sta 7
        lda #$1f
        sta 8
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$1f
        sta 7
        lda #$ff
        sta 8
        lda #$f1
        sta 9
        sta 10
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$1f
        sta 7
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$1f
        sta 8
        sta 9
        long m

        long m

        _spriteFooter
        rtl

drawSprite5 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$1f
        sta 7
        lda #$ff
        sta 8
        long m

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$ff
        sta 5
        sta 8
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$1f
        sta 4
        lda #$f1
        sta 6
        lda #$1f
        sta 7
        lda #$ff
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$1f
        sta 2
        sta 3
        lda #$f1
        sta 4
        lda #$1f
        sta 6
        lda #$ff
        sta 7
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$1f
        sta 1
        lda #$ff
        sta 3
        lda #$1f
        sta 4
        sta 7
        lda #$f1
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$1f
        sta 2
        lda #$f1
        sta 5
        lda #$ff
        sta 6
        sta 7
        lda #$f1
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$1f
        sta 1
        sta 3
        sta 5
        sta 8
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$1f
        sta 2
        lda #$f1
        sta 6
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$1f
        sta 6
        lda #$ff
        sta 7
        lda #$1f
        sta 8
        lda #$f1
        sta 10
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$1f
        sta 7
        lda #$ff
        sta 8
        lda #$f1
        sta 9
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$f1
        sta 10
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$f1
        sta 8
        sta 9
        long m

        long m

        _spriteFooter
        rtl

drawSprite6 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$ff
        sta 3
        lda #$f1
        sta 4
        long m

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$ff
        sta 3
        sta 6
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$ff
        sta 3
        lda #$f1
        sta 4
        lda #$1f
        sta 5
        lda #$f1
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$ff
        sta 3
        sta 4
        lda #$f1
        sta 5
        lda #$1f
        sta 7
        lda #$f1
        sta 8
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$1f
        sta 3
        lda #$f1
        sta 4
        sta 7
        lda #$ff
        sta 8
        lda #$f1
        sta 10
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$1f
        sta 3
        lda #$ff
        sta 4
        sta 5
        lda #$1f
        sta 6
        lda #$f1
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$f1
        sta 2
        sta 3
        sta 6
        sta 8
        sta 10
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$1f
        sta 3
        sta 5
        lda #$f1
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$1f
        sta 1
        lda #$f1
        sta 3
        lda #$ff
        sta 4
        lda #$f1
        sta 5
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$1f
        sta 2
        lda #$ff
        sta 3
        lda #$f1
        sta 4
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$1f
        sta 1
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$1f
        sta 2
        sta 3
        long m

        long m

        _spriteFooter
        rtl

drawSprite7 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$ff
        sta 3
        lda #$f1
        sta 4
        long m

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$ff
        sta 3
        sta 6
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$ff
        sta 3
        lda #$f1
        sta 4
        lda #$1f
        sta 5
        lda #$f1
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$ff
        sta 3
        sta 4
        lda #$f1
        sta 5
        lda #$1f
        sta 7
        lda #$ff
        sta 8
        lda #$1f
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$1f
        sta 3
        lda #$f1
        sta 4
        sta 7
        lda #$1f
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$1f
        sta 3
        lda #$ff
        sta 4
        sta 5
        lda #$1f
        sta 6
        lda #$f1
        sta 8
        sta 9
        sta 10
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$1f
        sta 2
        sta 3
        lda #$f1
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$1f
        sta 1
        sta 3
        lda #$f1
        sta 4
        lda #$1f
        sta 5
        sta 8
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$f1
        sta 3
        lda #$1f
        sta 4
        lda #$f1
        sta 5
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$1f
        sta 1
        sta 2
        lda #$ff
        sta 3
        lda #$f1
        sta 4
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$f1
        sta 4
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$f1
        sta 2
        sta 3
        long m

        long m

        _spriteFooter
        rtl

drawSprite8 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$1f
        sta 2
        sta 3
        long m

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$1f
        sta 3
        sta 4
        lda #$ff
        sta 5
        sta 6
        lda #$f1
        sta 7
        lda #$1f
        sta 9
        lda #$f1
        sta 10
        long m

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$f1
        sta 2
        sta 3
        sta 4
        sta 5
        lda #$1f
        sta 7
        lda #$ff
        sta 10
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$f1
        sta 5
        lda #$ff
        sta 6
        lda #$f1
        sta 8
        lda #$1f
        sta 9
        lda #$ff
        sta 10
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$1f
        sta 2
        sta 3
        sta 5
        lda #$f1
        sta 7
        lda #$ff
        sta 8
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$f1
        sta 6
        lda #$1f
        sta 7
        sta 8
        lda #$f1
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$1f
        sta 6
        lda #$ff
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$f1
        sta 7
        lda #$1f
        sta 8
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$1f
        sta 7
        lda #$ff
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$1f
        sta 8
        lda #$f1
        sta 10
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$1f
        sta 7
        lda #$f1
        sta 9
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$f1
        sta 10
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$f1
        sta 8
        sta 9
        long m

        long m

        _spriteFooter
        rtl

drawSprite9 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$f1
        sta 3
        long m

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$f1
        sta 2
        lda #$1f
        sta 3
        lda #$ff
        sta 4
        sta 5
        sta 6
        lda #$f1
        sta 7
        lda #$1f
        sta 9
        lda #$f1
        sta 10
        long m

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$f1
        sta 3
        sta 5
        lda #$1f
        sta 7
        lda #$ff
        sta 10
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$f1
        sta 2
        sta 4
        sta 5
        lda #$ff
        sta 6
        lda #$f1
        sta 8
        lda #$1f
        sta 9
        lda #$ff
        sta 10
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$f1
        sta 3
        lda #$1f
        sta 5
        lda #$f1
        sta 7
        lda #$ff
        sta 8
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$f1
        sta 6
        lda #$1f
        sta 7
        sta 8
        lda #$f1
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$1f
        sta 6
        lda #$ff
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$f1
        sta 7
        sta 8
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$ff
        sta 8
        lda #$f1
        sta 10
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$1f
        sta 7
        sta 8
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$f1
        sta 9
        sta 10
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$1f
        sta 7
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$1f
        sta 8
        sta 9
        long m

        long m

        _spriteFooter
        rtl

drawSprite10 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$1f
        sta 8
        long m

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$1f
        sta 1
        lda #$f1
        sta 2
        lda #$1f
        sta 4
        lda #$ff
        sta 5
        sta 6
        sta 7
        lda #$f1
        sta 8
        lda #$1f
        sta 9
        long m

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$ff
        sta 1
        lda #$f1
        sta 4
        lda #$1f
        sta 6
        sta 8
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$ff
        sta 1
        lda #$f1
        sta 2
        lda #$1f
        sta 3
        lda #$ff
        sta 5
        lda #$1f
        sta 6
        sta 7
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$ff
        sta 2
        sta 3
        lda #$1f
        sta 4
        lda #$f1
        sta 6
        lda #$1f
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$1f
        sta 2
        lda #$f1
        sta 3
        sta 4
        lda #$1f
        sta 5
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$ff
        sta 3
        lda #$f1
        sta 5
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$1f
        sta 2
        sta 3
        sta 4
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$1f
        sta 1
        lda #$ff
        sta 3
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$f1
        sta 3
        sta 4
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$1f
        sta 1
        sta 2
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$f1
        sta 4
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$f1
        sta 2
        sta 3
        long m

        long m

        _spriteFooter
        rtl

drawSprite11 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$f1
        sta 8
        sta 9
        long m

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$1f
        sta 1
        lda #$f1
        sta 2
        lda #$1f
        sta 4
        lda #$ff
        sta 5
        sta 6
        lda #$f1
        sta 7
        sta 8
        long m

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$ff
        sta 1
        lda #$f1
        sta 4
        lda #$1f
        sta 6
        sta 7
        sta 8
        sta 9
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$ff
        sta 1
        lda #$f1
        sta 2
        lda #$1f
        sta 3
        lda #$ff
        sta 5
        lda #$1f
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$ff
        sta 2
        sta 3
        lda #$1f
        sta 4
        lda #$f1
        sta 6
        sta 8
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$1f
        sta 2
        lda #$f1
        sta 3
        sta 4
        lda #$1f
        sta 5
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$ff
        sta 3
        lda #$f1
        sta 5
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$f1
        sta 2
        sta 3
        lda #$1f
        sta 4
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$ff
        sta 3
        lda #$f1
        sta 4
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$1f
        sta 1
        lda #$f1
        sta 3
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$1f
        sta 2
        lda #$f1
        sta 4
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$1f
        sta 1
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$1f
        sta 2
        sta 3
        long m

        long m

        _spriteFooter
        rtl

drawSprite12 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$f1
        sta 10
        long m

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$f1
        sta 9
        sta 11
        long m

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$f1
        sta 10
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$f1
        sta 9
        sta 11
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$f1
        sta 10
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$1f
        sta 7
        lda #$ff
        sta 8
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$ff
        sta 6
        lda #$f1
        sta 7
        lda #$1f
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$f1
        sta 2
        sta 3
        lda #$1f
        sta 5
        lda #$f1
        sta 7
        lda #$1f
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$1f
        sta 3
        lda #$ff
        sta 4
        sta 5
        sta 6
        lda #$f1
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$1f
        sta 1
        lda #$f1
        sta 3
        lda #$1f
        sta 4
        lda #$ff
        sta 5
        sta 6
        sta 7
        sta 8
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$1f
        sta 2
        lda #$f1
        sta 3
        lda #$ff
        sta 4
        sta 5
        lda #$f1
        sta 6
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$1f
        sta 1
        sta 5
        lda #$f1
        sta 6
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$1f
        sta 2
        sta 3
        sta 5
        lda #$ff
        sta 6
        long m

        long m

        _spriteFooter
        rtl

drawSprite13 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$1f
        sta 1
        long m

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$1f
        sta 0
        sta 2
        long m

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$1f
        sta 1
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$1f
        sta 0
        sta 2
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$1f
        sta 1
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$ff
        sta 2
        sta 3
        lda #$f1
        sta 4
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$f1
        sta 2
        lda #$1f
        sta 4
        lda #$ff
        sta 5
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$f1
        sta 2
        lda #$1f
        sta 4
        lda #$f1
        sta 6
        lda #$1f
        sta 8
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$1f
        sta 2
        lda #$ff
        sta 5
        sta 6
        sta 7
        lda #$f1
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$ff
        sta 3
        sta 4
        sta 5
        sta 6
        lda #$f1
        sta 7
        lda #$1f
        sta 8
        lda #$f1
        sta 10
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$1f
        sta 5
        lda #$ff
        sta 6
        sta 7
        lda #$1f
        sta 8
        lda #$f1
        sta 9
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$1f
        sta 5
        lda #$f1
        sta 6
        sta 10
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$ff
        sta 5
        lda #$f1
        sta 6
        sta 8
        sta 9
        long m

        long m

        _spriteFooter
        rtl

drawSprite14 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #0
        tcd

        short m
        lda #$f1
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #160
        tcd

        short m
        lda #$1f
        sta 5
        lda #$f1
        sta 8
        long m

        lda >drawAddress
        clc
        adc #320
        tcd

        short m
        lda #$1f
        sta 5
        sta 6
        lda #$f1
        sta 8
        long m

        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$1f
        sta 5
        sta 6
        lda #$f1
        sta 8
        long m

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$1f
        sta 3
        lda #$ff
        sta 4
        sta 5
        sta 6
        lda #$1f
        sta 7
        long m

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$1f
        sta 3
        lda #$ff
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$1f
        sta 3
        lda #$ff
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$f1
        sta 5
        lda #$1f
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$f1
        sta 5
        lda #$1f
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$f1
        sta 5
        lda #$1f
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$f1
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$1f
        sta 5
        lda #$ff
        sta 6
        lda #$1f
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$ff
        sta 6
        lda #$f1
        sta 8
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$f1
        sta 6
        sta 7
        sta 8
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$f1
        sta 6
        sta 8
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$1f
        sta 6
        sta 7
        long m

        long m

        _spriteFooter
        rtl

drawSprite15 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #0
        tcd

        short m
        lda #$1f
        sta 4
        sta 5
        long m

        lda >drawAddress
        clc
        adc #160
        tcd

        short m
        lda #$1f
        sta 3
        lda #$f1
        sta 6
        long m

        lda >drawAddress
        clc
        adc #320
        tcd

        short m
        lda #$1f
        sta 3
        lda #$f1
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$1f
        sta 3
        lda #$f1
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$f1
        sta 4
        lda #$ff
        sta 5
        sta 6
        sta 7
        lda #$f1
        sta 8
        long m

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$ff
        sta 5
        sta 6
        sta 7
        lda #$f1
        sta 8
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$ff
        sta 5
        sta 6
        lda #$f1
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$f1
        sta 5
        lda #$1f
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$f1
        sta 5
        lda #$1f
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$f1
        sta 5
        lda #$1f
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$1f
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$f1
        sta 4
        lda #$ff
        sta 5
        lda #$f1
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$1f
        sta 3
        lda #$ff
        sta 5
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$1f
        sta 3
        sta 4
        sta 5
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$1f
        sta 3
        sta 5
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$f1
        sta 4
        sta 5
        long m

        long m

        _spriteFooter
        rtl

drawSprite16 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$ff
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$1f
        sta 4
        lda #$f1
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$1f
        sta 4
        lda #$f1
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$1f
        sta 4
        lda #$ff
        sta 5
        sta 6
        lda #$f1
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$1f
        sta 4
        lda #$ff
        sta 5
        sta 6
        lda #$f1
        sta 7
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$1f
        sta 4
        sta 5
        lda #$f1
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$1f
        sta 4
        lda #$ff
        sta 5
        sta 6
        lda #$f1
        sta 7
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$1f
        sta 4
        lda #$f1
        sta 7
        long m

        long m

        _spriteFooter
        rtl

drawSprite17 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$ff
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$1f
        sta 4
        lda #$f1
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$1f
        sta 4
        lda #$f1
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$1f
        sta 4
        lda #$ff
        sta 5
        sta 6
        lda #$f1
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$1f
        sta 4
        lda #$ff
        sta 5
        sta 6
        lda #$f1
        sta 7
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$1f
        sta 4
        lda #$ff
        sta 5
        sta 6
        lda #$f1
        sta 7
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$1f
        sta 4
        lda #$ff
        sta 5
        sta 6
        lda #$f1
        sta 7
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$1f
        sta 4
        lda #$f1
        sta 7
        long m

        long m

        _spriteFooter
        rtl

drawSprite18 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #0
        tcd

        short m
        lda #$1f
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #160
        tcd

        short m
        lda #$f1
        sta 6
        sta 8
        long m

        lda >drawAddress
        clc
        adc #320
        tcd

        short m
        lda #$f1
        sta 6
        sta 7
        sta 8
        long m

        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$ff
        sta 6
        lda #$f1
        sta 8
        long m

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$1f
        sta 5
        lda #$ff
        sta 6
        lda #$1f
        sta 7
        long m

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$f1
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$f1
        sta 5
        lda #$1f
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$f1
        sta 5
        lda #$1f
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$f1
        sta 5
        lda #$1f
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$1f
        sta 3
        lda #$ff
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$1f
        sta 3
        lda #$ff
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$1f
        sta 3
        lda #$ff
        sta 4
        sta 5
        sta 6
        lda #$1f
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$1f
        sta 5
        sta 6
        lda #$f1
        sta 8
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$1f
        sta 5
        sta 6
        lda #$f1
        sta 8
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$1f
        sta 5
        lda #$f1
        sta 8
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$f1
        sta 6
        sta 7
        long m

        long m

        _spriteFooter
        rtl

drawSprite19 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #0
        tcd

        short m
        lda #$f1
        sta 4
        sta 5
        long m

        lda >drawAddress
        clc
        adc #160
        tcd

        short m
        lda #$1f
        sta 3
        sta 5
        long m

        lda >drawAddress
        clc
        adc #320
        tcd

        short m
        lda #$1f
        sta 3
        sta 4
        sta 5
        long m

        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$1f
        sta 3
        lda #$ff
        sta 5
        long m

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$f1
        sta 4
        lda #$ff
        sta 5
        lda #$f1
        sta 6
        long m

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$1f
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$f1
        sta 5
        lda #$1f
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$f1
        sta 5
        lda #$1f
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$f1
        sta 5
        lda #$1f
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$ff
        sta 5
        sta 6
        lda #$f1
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$ff
        sta 5
        sta 6
        sta 7
        lda #$f1
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$f1
        sta 4
        lda #$ff
        sta 5
        sta 6
        sta 7
        lda #$f1
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$1f
        sta 3
        lda #$f1
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$1f
        sta 3
        lda #$f1
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$1f
        sta 3
        lda #$f1
        sta 6
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$1f
        sta 4
        sta 5
        long m

        long m

        _spriteFooter
        rtl

drawSprite20 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$ff
        sta 10
        sta 11
        long m

        long m

        _spriteFooter
        rtl

drawSprite21 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$1f
        sta 10
        lda #$ff
        sta 11
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$ff
        sta 9
        sta 10
        sta 11
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$1f
        sta 7
        lda #$ff
        sta 8
        sta 9
        sta 10
        sta 11
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$1f
        sta 5
        lda #$ff
        sta 6
        sta 7
        sta 8
        sta 9
        sta 10
        sta 11
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$1f
        sta 3
        lda #$ff
        sta 4
        sta 5
        sta 6
        sta 7
        sta 8
        sta 9
        sta 10
        sta 11
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$ff
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        sta 8
        sta 9
        sta 10
        sta 11
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$ff
        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        sta 8
        sta 9
        sta 10
        sta 11
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$ff
        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        sta 8
        sta 9
        sta 10
        sta 11
        long m

        long m

        _spriteFooter
        rtl

drawSprite22 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$ff
        sta 0
        lda #$f1
        sta 1
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$ff
        sta 0
        sta 1
        sta 2
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$ff
        sta 0
        sta 1
        sta 2
        sta 3
        lda #$f1
        sta 4
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$ff
        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        lda #$f1
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$ff
        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        lda #$f1
        sta 8
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$ff
        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        sta 8
        sta 9
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$ff
        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        sta 8
        sta 9
        sta 10
        sta 11
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$ff
        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        sta 8
        sta 9
        sta 10
        sta 11
        long m

        long m

        _spriteFooter
        rtl

drawSprite23 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$ff
        sta 0
        sta 1
        long m

        long m

        _spriteFooter
        rtl
    
    
eraseSprite0 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$11
        sta 7
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$11
        sta 7
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$11
        sta 4
        sta 7
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 4
        sta 5
        lda #$11
        sta 6
        lda #$11
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 5
        lda #$11
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$11
        sta 2
        lda #$11
        sta 3
        lda #$11
        sta 6
        lda #$11
        sta 7
        sta 8
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$11
        sta 1
        lda #$11
        sta 2
        lda #$11
        sta 3
        lda #$11
        sta 4
        lda #$11
        sta 5
        sta 6
        sta 7
        lda #$11
        sta 8
        sta 10
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$11
        sta 2
        lda #$11
        sta 4
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$11
        sta 0
        sta 1
        sta 2
        sta 4
        lda #$11
        sta 5
        sta 6
        sta 7
        sta 8
        lda #$11
        sta 9
        sta 10
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$11
        sta 7
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$11
        sta 1
        sta 2
        lda #$11
        sta 8
        sta 9
        long m

        long m

        _spriteFooter
        rtl

eraseSprite1 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$11
        sta 7
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$11
        sta 7
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$11
        sta 4
        sta 7
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 4
        sta 5
        lda #$11
        sta 6
        lda #$11
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 5
        lda #$11
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$11
        sta 2
        lda #$11
        sta 3
        lda #$11
        sta 6
        lda #$11
        sta 7
        lda #$11
        sta 8
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$11
        sta 1
        sta 2
        sta 3
        lda #$11
        sta 4
        lda #$11
        sta 5
        sta 6
        sta 7
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$11
        sta 0
        lda #$11
        sta 2
        sta 4
        lda #$11
        sta 7
        sta 8
        lda #$11
        sta 10
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$11
        sta 1
        sta 4
        lda #$11
        sta 5
        sta 6
        sta 7
        sta 8
        lda #$11
        sta 9
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$11
        sta 0
        sta 2
        lda #$11
        sta 10
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$11
        sta 1
        lda #$11
        sta 8
        sta 9
        long m

        long m

        _spriteFooter
        rtl

eraseSprite2 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 4
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 4
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 4
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$11
        sta 4
        lda #$11
        sta 5
        lda #$11
        sta 6
        sta 7
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$11
        sta 4
        sta 5
        lda #$11
        sta 6
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$11
        sta 2
        sta 3
        lda #$11
        sta 4
        lda #$11
        sta 5
        lda #$11
        sta 8
        lda #$11
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 4
        sta 5
        sta 6
        lda #$11
        sta 7
        lda #$11
        sta 8
        sta 9
        sta 10
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$11
        sta 1
        lda #$11
        sta 3
        sta 4
        lda #$11
        sta 7
        sta 9
        lda #$11
        sta 11
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$11
        sta 2
        lda #$11
        sta 3
        sta 4
        sta 5
        sta 6
        lda #$11
        sta 7
        sta 10
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$11
        sta 1
        lda #$11
        sta 9
        sta 11
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$11
        sta 2
        sta 3
        lda #$11
        sta 10
        long m

        long m

        _spriteFooter
        rtl

eraseSprite3 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 4
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 4
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 4
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$11
        sta 4
        lda #$11
        sta 5
        lda #$11
        sta 6
        sta 7
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$11
        sta 4
        sta 5
        lda #$11
        sta 6
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$11
        sta 2
        sta 3
        sta 4
        lda #$11
        sta 5
        lda #$11
        sta 8
        lda #$11
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$11
        sta 1
        sta 3
        lda #$11
        sta 4
        sta 5
        sta 6
        lda #$11
        sta 7
        lda #$11
        sta 8
        lda #$11
        sta 9
        lda #$11
        sta 10
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 7
        lda #$11
        sta 9
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$11
        sta 1
        sta 2
        lda #$11
        sta 3
        sta 4
        sta 5
        sta 6
        lda #$11
        sta 7
        sta 9
        sta 10
        sta 11
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$11
        sta 4
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$11
        sta 2
        sta 3
        lda #$11
        sta 9
        sta 10
        long m

        long m

        _spriteFooter
        rtl

eraseSprite4 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$11
        sta 7
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$11
        sta 5
        sta 8
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$11
        sta 4
        lda #$11
        sta 6
        lda #$11
        sta 7
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$11
        sta 2
        lda #$11
        sta 3
        lda #$11
        sta 4
        lda #$11
        sta 6
        lda #$11
        sta 7
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 4
        sta 7
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$11
        sta 1
        sta 2
        sta 3
        lda #$11
        sta 5
        lda #$11
        sta 6
        sta 7
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$11
        sta 5
        lda #$11
        sta 8
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$11
        sta 2
        sta 3
        sta 6
        lda #$11
        sta 7
        lda #$11
        sta 8
        sta 10
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$11
        sta 6
        lda #$11
        sta 7
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$11
        sta 7
        lda #$11
        sta 8
        lda #$11
        sta 9
        sta 10
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$11
        sta 7
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$11
        sta 8
        sta 9
        long m

        long m

        _spriteFooter
        rtl

eraseSprite5 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$11
        sta 7
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$11
        sta 5
        sta 8
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$11
        sta 4
        lda #$11
        sta 6
        lda #$11
        sta 7
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$11
        sta 2
        sta 3
        lda #$11
        sta 4
        lda #$11
        sta 6
        lda #$11
        sta 7
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$11
        sta 1
        lda #$11
        sta 3
        lda #$11
        sta 4
        sta 7
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$11
        sta 2
        lda #$11
        sta 5
        lda #$11
        sta 6
        sta 7
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$11
        sta 1
        sta 3
        sta 5
        sta 8
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$11
        sta 2
        lda #$11
        sta 6
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$11
        sta 6
        lda #$11
        sta 7
        lda #$11
        sta 8
        lda #$11
        sta 10
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$11
        sta 7
        lda #$11
        sta 8
        lda #$11
        sta 9
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$11
        sta 10
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$11
        sta 8
        sta 9
        long m

        long m

        _spriteFooter
        rtl

eraseSprite6 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 4
        long m

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$11
        sta 3
        sta 6
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 4
        lda #$11
        sta 5
        lda #$11
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$11
        sta 3
        sta 4
        lda #$11
        sta 5
        lda #$11
        sta 7
        lda #$11
        sta 8
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 4
        sta 7
        lda #$11
        sta 8
        lda #$11
        sta 10
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 4
        sta 5
        lda #$11
        sta 6
        lda #$11
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$11
        sta 2
        sta 3
        sta 6
        sta 8
        sta 10
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$11
        sta 3
        sta 5
        lda #$11
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$11
        sta 1
        lda #$11
        sta 3
        lda #$11
        sta 4
        lda #$11
        sta 5
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$11
        sta 2
        lda #$11
        sta 3
        lda #$11
        sta 4
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$11
        sta 1
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$11
        sta 2
        sta 3
        long m

        long m

        _spriteFooter
        rtl

eraseSprite7 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 4
        long m

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$11
        sta 3
        sta 6
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 4
        lda #$11
        sta 5
        lda #$11
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$11
        sta 3
        sta 4
        lda #$11
        sta 5
        lda #$11
        sta 7
        lda #$11
        sta 8
        lda #$11
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 4
        sta 7
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 4
        sta 5
        lda #$11
        sta 6
        lda #$11
        sta 8
        sta 9
        sta 10
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$11
        sta 2
        sta 3
        lda #$11
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$11
        sta 1
        sta 3
        lda #$11
        sta 4
        lda #$11
        sta 5
        sta 8
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 4
        lda #$11
        sta 5
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$11
        sta 1
        sta 2
        lda #$11
        sta 3
        lda #$11
        sta 4
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$11
        sta 4
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$11
        sta 2
        sta 3
        long m

        long m

        _spriteFooter
        rtl

eraseSprite8 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$11
        sta 2
        sta 3
        long m

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$11
        sta 3
        sta 4
        lda #$11
        sta 5
        sta 6
        lda #$11
        sta 7
        lda #$11
        sta 9
        lda #$11
        sta 10
        long m

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$11
        sta 2
        sta 3
        sta 4
        sta 5
        lda #$11
        sta 7
        lda #$11
        sta 10
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$11
        sta 5
        lda #$11
        sta 6
        lda #$11
        sta 8
        lda #$11
        sta 9
        lda #$11
        sta 10
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$11
        sta 2
        sta 3
        sta 5
        lda #$11
        sta 7
        lda #$11
        sta 8
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$11
        sta 6
        lda #$11
        sta 7
        sta 8
        lda #$11
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$11
        sta 6
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$11
        sta 7
        lda #$11
        sta 8
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$11
        sta 7
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$11
        sta 8
        lda #$11
        sta 10
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$11
        sta 7
        lda #$11
        sta 9
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$11
        sta 10
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$11
        sta 8
        sta 9
        long m

        long m

        _spriteFooter
        rtl

eraseSprite9 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$11
        sta 3
        long m

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$11
        sta 2
        lda #$11
        sta 3
        lda #$11
        sta 4
        sta 5
        sta 6
        lda #$11
        sta 7
        lda #$11
        sta 9
        lda #$11
        sta 10
        long m

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$11
        sta 3
        sta 5
        lda #$11
        sta 7
        lda #$11
        sta 10
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$11
        sta 2
        sta 4
        sta 5
        lda #$11
        sta 6
        lda #$11
        sta 8
        lda #$11
        sta 9
        lda #$11
        sta 10
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 5
        lda #$11
        sta 7
        lda #$11
        sta 8
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$11
        sta 6
        lda #$11
        sta 7
        sta 8
        lda #$11
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$11
        sta 6
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$11
        sta 7
        sta 8
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$11
        sta 8
        lda #$11
        sta 10
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$11
        sta 7
        sta 8
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$11
        sta 9
        sta 10
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$11
        sta 7
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$11
        sta 8
        sta 9
        long m

        long m

        _spriteFooter
        rtl

eraseSprite10 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$11
        sta 1
        lda #$11
        sta 2
        lda #$11
        sta 4
        lda #$11
        sta 5
        sta 6
        sta 7
        lda #$11
        sta 8
        lda #$11
        sta 9
        long m

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$11
        sta 1
        lda #$11
        sta 4
        lda #$11
        sta 6
        sta 8
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$11
        sta 1
        lda #$11
        sta 2
        lda #$11
        sta 3
        lda #$11
        sta 5
        lda #$11
        sta 6
        sta 7
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$11
        sta 2
        sta 3
        lda #$11
        sta 4
        lda #$11
        sta 6
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$11
        sta 2
        lda #$11
        sta 3
        sta 4
        lda #$11
        sta 5
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 5
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$11
        sta 2
        sta 3
        sta 4
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$11
        sta 1
        lda #$11
        sta 3
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$11
        sta 3
        sta 4
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$11
        sta 1
        sta 2
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$11
        sta 4
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$11
        sta 2
        sta 3
        long m

        long m

        _spriteFooter
        rtl

eraseSprite11 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$11
        sta 8
        sta 9
        long m

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$11
        sta 1
        lda #$11
        sta 2
        lda #$11
        sta 4
        lda #$11
        sta 5
        sta 6
        lda #$11
        sta 7
        sta 8
        long m

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$11
        sta 1
        lda #$11
        sta 4
        lda #$11
        sta 6
        sta 7
        sta 8
        sta 9
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$11
        sta 1
        lda #$11
        sta 2
        lda #$11
        sta 3
        lda #$11
        sta 5
        lda #$11
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$11
        sta 2
        sta 3
        lda #$11
        sta 4
        lda #$11
        sta 6
        sta 8
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$11
        sta 2
        lda #$11
        sta 3
        sta 4
        lda #$11
        sta 5
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 5
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$11
        sta 2
        sta 3
        lda #$11
        sta 4
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 4
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$11
        sta 1
        lda #$11
        sta 3
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$11
        sta 2
        lda #$11
        sta 4
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$11
        sta 1
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$11
        sta 2
        sta 3
        long m

        long m

        _spriteFooter
        rtl

eraseSprite12 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$11
        sta 10
        long m

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$11
        sta 9
        sta 11
        long m

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$11
        sta 10
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$11
        sta 9
        sta 11
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$11
        sta 10
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$11
        sta 7
        lda #$11
        sta 8
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$11
        sta 6
        lda #$11
        sta 7
        lda #$11
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$11
        sta 2
        sta 3
        lda #$11
        sta 5
        lda #$11
        sta 7
        lda #$11
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 4
        sta 5
        sta 6
        lda #$11
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$11
        sta 1
        lda #$11
        sta 3
        lda #$11
        sta 4
        lda #$11
        sta 5
        sta 6
        sta 7
        sta 8
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$11
        sta 2
        lda #$11
        sta 3
        lda #$11
        sta 4
        sta 5
        lda #$11
        sta 6
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$11
        sta 1
        sta 5
        lda #$11
        sta 6
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$11
        sta 2
        sta 3
        sta 5
        lda #$11
        sta 6
        long m

        long m

        _spriteFooter
        rtl

eraseSprite13 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$11
        sta 1
        long m

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$11
        sta 0
        sta 2
        long m

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$11
        sta 1
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$11
        sta 0
        sta 2
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$11
        sta 1
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$11
        sta 2
        sta 3
        lda #$11
        sta 4
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$11
        sta 2
        lda #$11
        sta 4
        lda #$11
        sta 5
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$11
        sta 2
        lda #$11
        sta 4
        lda #$11
        sta 6
        lda #$11
        sta 8
        sta 9
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$11
        sta 2
        lda #$11
        sta 5
        sta 6
        sta 7
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$11
        sta 3
        sta 4
        sta 5
        sta 6
        lda #$11
        sta 7
        lda #$11
        sta 8
        lda #$11
        sta 10
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$11
        sta 5
        lda #$11
        sta 6
        sta 7
        lda #$11
        sta 8
        lda #$11
        sta 9
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$11
        sta 5
        lda #$11
        sta 6
        sta 10
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$11
        sta 5
        lda #$11
        sta 6
        sta 8
        sta 9
        long m

        long m

        _spriteFooter
        rtl

eraseSprite14 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #0
        tcd

        short m
        lda #$11
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #160
        tcd

        short m
        lda #$11
        sta 5
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #320
        tcd

        short m
        lda #$11
        sta 5
        sta 6
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$11
        sta 5
        sta 6
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 4
        sta 5
        sta 6
        lda #$11
        sta 7
        long m

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$11
        sta 5
        lda #$11
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$11
        sta 5
        lda #$11
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$11
        sta 5
        lda #$11
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$11
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$11
        sta 5
        lda #$11
        sta 6
        lda #$11
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$11
        sta 6
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$11
        sta 6
        sta 7
        sta 8
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$11
        sta 6
        sta 8
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$11
        sta 6
        sta 7
        long m

        long m

        _spriteFooter
        rtl

eraseSprite15 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #0
        tcd

        short m
        lda #$11
        sta 4
        sta 5
        long m

        lda >drawAddress
        clc
        adc #160
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 6
        long m

        lda >drawAddress
        clc
        adc #320
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$11
        sta 4
        lda #$11
        sta 5
        sta 6
        sta 7
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$11
        sta 5
        sta 6
        sta 7
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$11
        sta 5
        sta 6
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$11
        sta 5
        lda #$11
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$11
        sta 5
        lda #$11
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$11
        sta 5
        lda #$11
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$11
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$11
        sta 4
        lda #$11
        sta 5
        lda #$11
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 5
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$11
        sta 3
        sta 4
        sta 5
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$11
        sta 3
        sta 5
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$11
        sta 4
        sta 5
        long m

        long m

        _spriteFooter
        rtl

eraseSprite16 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$11
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$11
        sta 4
        lda #$11
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$11
        sta 4
        lda #$11
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$11
        sta 4
        lda #$11
        sta 5
        sta 6
        lda #$11
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$11
        sta 4
        lda #$11
        sta 5
        sta 6
        lda #$11
        sta 7
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$11
        sta 4
        sta 5
        lda #$11
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$11
        sta 4
        lda #$11
        sta 5
        sta 6
        lda #$11
        sta 7
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$11
        sta 4
        lda #$11
        sta 7
        long m

        long m

        _spriteFooter
        rtl

eraseSprite17 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$11
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$11
        sta 4
        lda #$11
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$11
        sta 4
        lda #$11
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$11
        sta 4
        lda #$11
        sta 5
        sta 6
        lda #$11
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$11
        sta 4
        lda #$11
        sta 5
        sta 6
        lda #$11
        sta 7
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$11
        sta 4
        lda #$11
        sta 5
        sta 6
        lda #$11
        sta 7
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$11
        sta 4
        lda #$11
        sta 5
        sta 6
        lda #$11
        sta 7
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$11
        sta 4
        lda #$11
        sta 7
        long m

        long m

        _spriteFooter
        rtl

eraseSprite18 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #0
        tcd

        short m
        lda #$11
        sta 6
        sta 7
        long m

        lda >drawAddress
        clc
        adc #160
        tcd

        short m
        lda #$11
        sta 6
        sta 8
        long m

        lda >drawAddress
        clc
        adc #320
        tcd

        short m
        lda #$11
        sta 6
        sta 7
        sta 8
        long m

        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$11
        sta 6
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$11
        sta 5
        lda #$11
        sta 6
        lda #$11
        sta 7
        long m

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$11
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$11
        sta 5
        lda #$11
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$11
        sta 5
        lda #$11
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$11
        sta 5
        lda #$11
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 4
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 4
        sta 5
        sta 6
        lda #$11
        sta 7
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$11
        sta 5
        sta 6
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$11
        sta 5
        sta 6
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$11
        sta 5
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$11
        sta 6
        sta 7
        long m

        long m

        _spriteFooter
        rtl

eraseSprite19 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #0
        tcd

        short m
        lda #$11
        sta 4
        sta 5
        long m

        lda >drawAddress
        clc
        adc #160
        tcd

        short m
        lda #$11
        sta 3
        sta 5
        long m

        lda >drawAddress
        clc
        adc #320
        tcd

        short m
        lda #$11
        sta 3
        sta 4
        sta 5
        long m

        lda >drawAddress
        clc
        adc #480
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 5
        long m

        lda >drawAddress
        clc
        adc #640
        tcd

        short m
        lda #$11
        sta 4
        lda #$11
        sta 5
        lda #$11
        sta 6
        long m

        lda >drawAddress
        clc
        adc #800
        tcd

        short m
        lda #$11
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #960
        tcd

        short m
        lda #$11
        sta 5
        lda #$11
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1120
        tcd

        short m
        lda #$11
        sta 5
        lda #$11
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$11
        sta 5
        lda #$11
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$11
        sta 5
        sta 6
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$11
        sta 5
        sta 6
        sta 7
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$11
        sta 4
        lda #$11
        sta 5
        sta 6
        sta 7
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 5
        sta 6
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 6
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$11
        sta 4
        sta 5
        long m

        long m

        _spriteFooter
        rtl

eraseSprite20 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$11
        sta 10
        sta 11
        long m

        long m

        _spriteFooter
        rtl

eraseSprite21 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$11
        sta 10
        lda #$11
        sta 11
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$11
        sta 9
        sta 10
        sta 11
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$11
        sta 7
        lda #$11
        sta 8
        sta 9
        sta 10
        sta 11
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$11
        sta 5
        lda #$11
        sta 6
        sta 7
        sta 8
        sta 9
        sta 10
        sta 11
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$11
        sta 3
        lda #$11
        sta 4
        sta 5
        sta 6
        sta 7
        sta 8
        sta 9
        sta 10
        sta 11
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$11
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        sta 8
        sta 9
        sta 10
        sta 11
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$11
        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        sta 8
        sta 9
        sta 10
        sta 11
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$11
        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        sta 8
        sta 9
        sta 10
        sta 11
        long m

        long m

        _spriteFooter
        rtl

eraseSprite22 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #1280
        tcd

        short m
        lda #$11
        sta 0
        lda #$11
        sta 1
        long m

        lda >drawAddress
        clc
        adc #1440
        tcd

        short m
        lda #$11
        sta 0
        sta 1
        sta 2
        long m

        lda >drawAddress
        clc
        adc #1600
        tcd

        short m
        lda #$11
        sta 0
        sta 1
        sta 2
        sta 3
        lda #$11
        sta 4
        long m

        lda >drawAddress
        clc
        adc #1760
        tcd

        short m
        lda #$11
        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        lda #$11
        sta 6
        long m

        lda >drawAddress
        clc
        adc #1920
        tcd

        short m
        lda #$11
        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        lda #$11
        sta 8
        long m

        lda >drawAddress
        clc
        adc #2080
        tcd

        short m
        lda #$11
        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        sta 8
        sta 9
        long m

        lda >drawAddress
        clc
        adc #2240
        tcd

        short m
        lda #$11
        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        sta 8
        sta 9
        sta 10
        sta 11
        long m

        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$11
        sta 0
        sta 1
        sta 2
        sta 3
        sta 4
        sta 5
        sta 6
        sta 7
        sta 8
        sta 9
        sta 10
        sta 11
        long m

        long m

        _spriteFooter
        rtl

eraseSprite23 entry

        spriteGetDrawAddress
        _spriteHeader


        lda >drawAddress
        clc
        adc #2400
        tcd

        short m
        lda #$11
        sta 0
        sta 1
        long m

        long m

        _spriteFooter
        rtl    
    
    
drawAddress dc i4'0'
    
        end
