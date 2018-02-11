PULSONIX_LIBRARY_ASCII "SamacSys ECAD Model"
//166712/30955/2.18/14/3/Integrated Circuit

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "r150_70"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 0.7) (shapeHeight 1.5))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 0) (shapeHeight 0))
	)
	(textStyleDef "Normal"
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 1.27)
			(strokeWidth 0.127)
		)
	)
	(patternDef "SOIC127P600X175-14N" (originalName "SOIC127P600X175-14N")
		(multiLayer
			(pad (padNum 1) (padStyleRef r150_70) (pt -2.7, 3.81) (rotation 90))
			(pad (padNum 2) (padStyleRef r150_70) (pt -2.7, 2.54) (rotation 90))
			(pad (padNum 3) (padStyleRef r150_70) (pt -2.7, 1.27) (rotation 90))
			(pad (padNum 4) (padStyleRef r150_70) (pt -2.7, 0) (rotation 90))
			(pad (padNum 5) (padStyleRef r150_70) (pt -2.7, -1.27) (rotation 90))
			(pad (padNum 6) (padStyleRef r150_70) (pt -2.7, -2.54) (rotation 90))
			(pad (padNum 7) (padStyleRef r150_70) (pt -2.7, -3.81) (rotation 90))
			(pad (padNum 8) (padStyleRef r150_70) (pt 2.7, -3.81) (rotation 90))
			(pad (padNum 9) (padStyleRef r150_70) (pt 2.7, -2.54) (rotation 90))
			(pad (padNum 10) (padStyleRef r150_70) (pt 2.7, -1.27) (rotation 90))
			(pad (padNum 11) (padStyleRef r150_70) (pt 2.7, 0) (rotation 90))
			(pad (padNum 12) (padStyleRef r150_70) (pt 2.7, 1.27) (rotation 90))
			(pad (padNum 13) (padStyleRef r150_70) (pt 2.7, 2.54) (rotation 90))
			(pad (padNum 14) (padStyleRef r150_70) (pt 2.7, 3.81) (rotation 90))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt 0, 0) (textStyleRef "Normal") (isVisible True))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt -3.7 4.625) (pt 3.7 4.625) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt 3.7 4.625) (pt 3.7 -4.625) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt 3.7 -4.625) (pt -3.7 -4.625) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt -3.7 -4.625) (pt -3.7 4.625) (width 0.05))
		)
		(layerContents (layerNumRef 28)
			(line (pt -1.95 4.312) (pt 1.95 4.312) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt 1.95 4.312) (pt 1.95 -4.312) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt 1.95 -4.312) (pt -1.95 -4.312) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt -1.95 -4.312) (pt -1.95 4.312) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt -1.95 3.042) (pt -0.68 4.312) (width 0.025))
		)
		(layerContents (layerNumRef 18)
			(line (pt -1.6 4.312) (pt 1.6 4.312) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt 1.6 4.312) (pt 1.6 -4.312) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt 1.6 -4.312) (pt -1.6 -4.312) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -1.6 -4.312) (pt -1.6 4.312) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -3.45 4.51) (pt -1.95 4.51) (width 0.2))
		)
	)
	(symbolDef "74LCX07M" (originalName "74LCX07M")

		(pin (pinNum 1) (pt 0 mils 0 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinDes (text (pt 175 mils 25 mils) (rotation 0) (justify "Right") (textStyleRef "Normal"))) (pinName (text (pt 225 mils 0 mils) (rotation 0) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 2) (pt 0 mils -100 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinDes (text (pt 175 mils -75 mils) (rotation 0) (justify "Right") (textStyleRef "Normal"))) (pinName (text (pt 225 mils -100 mils) (rotation 0) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 3) (pt 0 mils -200 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinDes (text (pt 175 mils -175 mils) (rotation 0) (justify "Right") (textStyleRef "Normal"))) (pinName (text (pt 225 mils -200 mils) (rotation 0) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 4) (pt 0 mils -300 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinDes (text (pt 175 mils -275 mils) (rotation 0) (justify "Right") (textStyleRef "Normal"))) (pinName (text (pt 225 mils -300 mils) (rotation 0) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 5) (pt 0 mils -400 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinDes (text (pt 175 mils -375 mils) (rotation 0) (justify "Right") (textStyleRef "Normal"))) (pinName (text (pt 225 mils -400 mils) (rotation 0) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 6) (pt 0 mils -500 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinDes (text (pt 175 mils -475 mils) (rotation 0) (justify "Right") (textStyleRef "Normal"))) (pinName (text (pt 225 mils -500 mils) (rotation 0) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 7) (pt 0 mils -600 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinDes (text (pt 175 mils -575 mils) (rotation 0) (justify "Right") (textStyleRef "Normal"))) (pinName (text (pt 225 mils -600 mils) (rotation 0) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 8) (pt 900 mils 0 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinDes (text (pt 725 mils 25 mils) (rotation 0) (justify "Left") (textStyleRef "Normal"))) (pinName (text (pt 675 mils 0 mils) (rotation 0) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 9) (pt 900 mils -100 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinDes (text (pt 725 mils -75 mils) (rotation 0) (justify "Left") (textStyleRef "Normal"))) (pinName (text (pt 675 mils -100 mils) (rotation 0) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 10) (pt 900 mils -200 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinDes (text (pt 725 mils -175 mils) (rotation 0) (justify "Left") (textStyleRef "Normal"))) (pinName (text (pt 675 mils -200 mils) (rotation 0) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 11) (pt 900 mils -300 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinDes (text (pt 725 mils -275 mils) (rotation 0) (justify "Left") (textStyleRef "Normal"))) (pinName (text (pt 675 mils -300 mils) (rotation 0) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 12) (pt 900 mils -400 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinDes (text (pt 725 mils -375 mils) (rotation 0) (justify "Left") (textStyleRef "Normal"))) (pinName (text (pt 675 mils -400 mils) (rotation 0) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 13) (pt 900 mils -500 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinDes (text (pt 725 mils -475 mils) (rotation 0) (justify "Left") (textStyleRef "Normal"))) (pinName (text (pt 675 mils -500 mils) (rotation 0) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 14) (pt 900 mils -600 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinDes (text (pt 725 mils -575 mils) (rotation 0) (justify "Left") (textStyleRef "Normal"))) (pinName (text (pt 675 mils -600 mils) (rotation 0) (justify "Right") (textStyleRef "Normal"))
		))

		(line (pt 200 mils 100 mils) (pt 700 mils 100 mils) (width 8.0 mils))
		(line (pt 700 mils 100 mils) (pt 700 mils -700 mils) (width 8.0 mils))
		(line (pt 700 mils -700 mils) (pt 200 mils -700 mils) (width 8.0 mils))
		(line (pt 200 mils -700 mils) (pt 200 mils 100 mils) (width 8.0 mils))

		(attr "RefDes" "RefDes" (pt 450 mils 150 mils) (justify center) (isVisible True) (textStyleRef "Normal"))
		(attr "Type" "Type" (pt 450 mils -750 mils)  (justify center) (isVisible True) (textStyleRef "Normal"))

	)

	(compDef "74LCX07M" (originalName "74LCX07M") (compHeader (numPins 14) (numParts 1) (refDesPrefix IC)
		)
		(compPin "1" (pinName "A0") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Input))
		(compPin "2" (pinName "O0") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Output))
		(compPin "3" (pinName "A1") (partNum 1) (symPinNum 3) (gateEq 0) (pinEq 0) (pinType Input))
		(compPin "4" (pinName "O1") (partNum 1) (symPinNum 4) (gateEq 0) (pinEq 0) (pinType Output))
		(compPin "5" (pinName "A2") (partNum 1) (symPinNum 5) (gateEq 0) (pinEq 0) (pinType Input))
		(compPin "6" (pinName "O2") (partNum 1) (symPinNum 6) (gateEq 0) (pinEq 0) (pinType Output))
		(compPin "7" (pinName "GND") (partNum 1) (symPinNum 7) (gateEq 0) (pinEq 0) (pinType Power))
		(compPin "14" (pinName "VCC") (partNum 1) (symPinNum 8) (gateEq 0) (pinEq 0) (pinType Power))
		(compPin "13" (pinName "A3") (partNum 1) (symPinNum 9) (gateEq 0) (pinEq 0) (pinType Input))
		(compPin "12" (pinName "O3") (partNum 1) (symPinNum 10) (gateEq 0) (pinEq 0) (pinType Output))
		(compPin "11" (pinName "A4") (partNum 1) (symPinNum 11) (gateEq 0) (pinEq 0) (pinType Input))
		(compPin "10" (pinName "O4") (partNum 1) (symPinNum 12) (gateEq 0) (pinEq 0) (pinType Output))
		(compPin "9" (pinName "A5") (partNum 1) (symPinNum 13) (gateEq 0) (pinEq 0) (pinType Input))
		(compPin "8" (pinName "O5") (partNum 1) (symPinNum 14) (gateEq 0) (pinEq 0) (pinType Output))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "74LCX07M"))
		(attachedPattern (patternNum 1) (patternName "SOIC127P600X175-14N")
			(numPads 14)
			(padPinMap
				(padNum 1) (compPinRef "1")
				(padNum 2) (compPinRef "2")
				(padNum 3) (compPinRef "3")
				(padNum 4) (compPinRef "4")
				(padNum 5) (compPinRef "5")
				(padNum 6) (compPinRef "6")
				(padNum 7) (compPinRef "7")
				(padNum 8) (compPinRef "8")
				(padNum 9) (compPinRef "9")
				(padNum 10) (compPinRef "10")
				(padNum 11) (compPinRef "11")
				(padNum 12) (compPinRef "12")
				(padNum 13) (compPinRef "13")
				(padNum 14) (compPinRef "14")
			)
		)
		(attr "Supplier_Name" "RS")
		(attr "RS Part Number" "1454566")
		(attr "Manufacturer_Name" "Fairchild Semiconductor")
		(attr "Manufacturer_Part_Number" "74LCX07M")
		(attr "Allied_Number" "")
		(attr "Other Part Number" "")
		(attr "Description" "Buffer/Driver 6-Ch Open Drain SOIC14 74LCX07M, 6-Bit Buffer, LCX, 3-State Non-Inverting 2  5.5 V 14-Pin SOIC")
		(attr "Datasheet Link" "https://www.fairchildsemi.com/datasheets/74/74LCX07.pdf")
		(attr "Height" "1.75")
		(attr "<STEP Filename>" "74LCX07M.stp")
	)

)