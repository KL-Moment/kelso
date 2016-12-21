# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: "Kelso Demo"
	author: "Olivia Hill"
	twitter: ""
	description: ""


# Import file "1220kelsoSync"
$ = Framer.Importer.load("imported/1220kelsoSync@1x")

# scale framer content down
Framer.Device.contentScale	= 0.5

scrollKeepWatching = ScrollComponent.wrap $.scrollablekeepWatching
scrollKeepWatching.scrollVertical = false
scrollKeepWatching.width = Framer.Screen.width * 2 - 160
scrollLive = ScrollComponent.wrap $.scrollableLiveContent
scrollLive.scrollVertical = false
scrollLive.width = Framer.Screen.width * 2 - 160

curve1 = "spring(300,20,50)"

liveOptions = [$.elf, $.cnn, $.ugagt]
dulledOutoptions = [$.dulledOutBillions, $.$30RockDulledOut, $.theCrownDulled]
keepWatchingOptions = [$.billions, $.theCrown, $.$30Rock]

for key, value of liveOptions
	value.on Events.MouseOver, ->
		this.animate
			scale: 1.1
			options:
				time: 0.25
			
for key, value of liveOptions
	value.on Events.MouseOut, ->
		this.animate
			scale: 1
			options:
				time: 0.35

for key, value of keepWatchingOptions
	value.on Events.MouseOver, ->
		this.animate
			opacity: 0
			options:
				time: 0.25

	for key, value of dulledOutoptions
		value.on Events.MouseOver, ->
			this.animate
			scale: 1.1
			options:
				time: 0.25

for key, value of keepWatchingOptions
	value.on Events.MouseOut, ->
		this.animate
			opacity: 1
			options:
				time: 0.25

	for key, value of dulledOutoptions
		value.on Events.MouseOut, ->
			scale: 1
			options:
				time: 0.35

		
		
		
# $.billions.on Events.MouseOver, ->
# 	$.billions.animate
# 		properties:
# 			opacity: 0
# 	$.dulledOutBillions.animate
# 		scale: 1.1
# $.billions.on Events.MouseOut, ->
# 	$.billions.animate
# 		properties:
# 			opacity: 1
# 	$.dulledOutBillions.animate 
# 		scale: 1
# 
# $.theCrown.on Events.MouseOver, ->
# 	$.theCrown.animate
# 		properties:
# 			opacity: 0
# 	$.theCrownDulled.animate
# 		scale: 1.1
# $.theCrown.on Events.MouseOut, ->
# 	$.theCrown.animate
# 		properties:
# 			opacity: 1
# 	$.theCrownDulled.animate 
# 		scale: 1
# 
# $.$30Rock.on Events.MouseOver, ->
# 	$.$30Rock.animate
# 		properties: 
# 			opacity: 0
# 	$.$30RockDulledOut.animate
# 			scale: 1.1
# $.$30Rock.on Events.MouseOut, ->
# 	$.$30Rock.animate
# 		properties:
# 			opacity: 1
# 	$.$30RockDulledOut.animate
# 		properties:
# 			scale: 1
# 
