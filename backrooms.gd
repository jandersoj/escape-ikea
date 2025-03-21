extends Node3D
var audio1=0
func _process(delta: float) -> void:
	if $Backrooms.playing==false:
		$Backrooms.play()
	if(Counter.check==1 && audio1==0):
			#$"../Backrooms".stop()
			#$"../Sarris1".playing=true
		$Sarris1.play()
		print("entered")
		audio1+=1
			#$"../Sarris1".play()
			
			 #welcome
	if(Counter.check==2 && audio1==1):
		$Sarris2.play()
		print("entered")
		audio1+=1 #it has been a long time since i have had guests
	if(Counter.check==3 && audio1==2):
		$Sarris3.play()
		print("entered")
		audio1+=1 #I have been waiting for you for so long now
	if(Counter.check==4 && audio1==3):
		$Sarris4.play()
		print("entered")
		audio1+=1 #you can not escape trust me I have tried
	if(Counter.check==5 && audio1==4):
		$Sarris5.play()
		print("entered")
		audio1+=1 #thank you for realising me, I am sorry for what your future has instore
		print(Counter.check)
		print(audio1)
	#if(Counter.check==6):
		#print("party")
	if(Counter.check==6 && audio1==5):
		$Sarris6.play()
		print("entered final")
		audio1+=1 
		 #FINALLY MY ETERNAL PUNSHIMENT IS OVER I AM FREE HA HAAHA HAHAHAHAAHAHAHAHAHAHAHHAHAAHAHAAHHAHAAHHAHA
		#Counter.check+=1
