ScriptName RemoveOnActivationDeadDogAndRaider extends ObjectReference Const

;-- Properties --------------------------------------
ObjectReference Property RaiderSanctuaryDead01 Auto Const
ObjectReference Property DogSanctuaryDead01 Auto Const
ObjectReference Property TireIronSanctuary01 Auto Const
ObjectReference Property DecaBloodSanctuary01 Auto Const
ObjectReference Property Player Auto Const

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

Event OnTriggerEnter(ObjectReference akActionRef)
	If (RaiderSanctuaryDead01.IsEnabled())
		If (akActionRef == Player)
			Utility.WaitGameTime(48 as float)
			RaiderSanctuaryDead01.disable(False)
			DogSanctuaryDead01.disable(False)
			TireIronSanctuary01.disable(False)
			DecaBloodSanctuary01.disable(False)
			Self.disable(False)
		EndIf
	EndIf
EndEvent