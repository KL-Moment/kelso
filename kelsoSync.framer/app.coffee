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


Framer.Device.contentScale	= 0.5
$.mainContent.visible = false
$.mainContent.opacity = 0

blair = new Layer
	height: 156
	image: "images/Blair.png"
	width: 156
	x: 1066
	y: 51
	opacity: .5

blairInTheRoom = false


growScroll = 2.34

# scale framer content down
Framer.Device.contentScale	= 0.5
scrollMainContent = ScrollComponent.wrap $.scrollableMainContent
scrollMainContent.scrollHorizontal = false 


scrollMainContent.width = Framer.Screen.width * 2
scrollMainContent.height = Framer.Screen.height * 2

#set scroll from live content
scrollableLiveContentTrippAlone = ScrollComponent.wrap $.scrollableLiveContentTrippAlone
scrollableLiveContentTrippAlone.scrollVertical = false
scrollableLiveContentTrippAlone.width = Framer.Screen.width * growScroll

#set scroll for blair catch up
scrollableBlairCatchUp = ScrollComponent.wrap $.scrollableBlairCatchUp
scrollableBlairCatchUp.scrollVertical = false
scrollableBlairCatchUp.width = Framer.Screen.width * growScroll
scrollableBlairCatchUp.height = 800

#set scroll for family catch up
scrollableFamilyCatchup = ScrollComponent.wrap $.scrollableFamilyCatchUp
scrollableFamilyCatchup.scrollVertical = false
scrollableFamilyCatchup.width = Framer.Screen.width * growScroll

#set scroll for what youre watching
scrollableWhatYoureWatching = ScrollComponent.wrap $.scrollableYoureWatching
scrollableWhatYoureWatching.scrollVertical = false
scrollableWhatYoureWatching.width = Framer.Screen.width * growScroll

#set arrays
liveTrippAlone = [$.cnnTA, $.ugagtTA, $.pgagolfTA]

familyCatchUp = [$.goldbergs,$.goldbergsDulled, $.americanhousewife, $.americanhousewifeDulled, $.survivor, $.survivorDulled]

blairCatchUp = [$.$30Rock, $.$30RockDulledOut,$.billions, $.dulledOutBillions, $.theCrown, $.theCrownDulled]

youreWatching = [$.parksAndRec, $.parksAndRecDulled, $.bachelor, $.bachelorDulledOut, $.nakedandafraid, $.nakedAndAfraidDulled]

$.searchbar.y = Screen.height*2 - 250

scrollKeepWatching = ScrollComponent.wrap $.scrollablekeepWatching
scrollKeepWatching.scrollVertical = false
scrollKeepWatching.width = Framer.Screen.width * 2 - 160
scrollLive = ScrollComponent.wrap $.scrollableLiveContent
scrollLive.scrollVertical = false
scrollLive.width = Framer.Screen.width * 2 - 160


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


#animate live options
for key, value of liveTrippAlone
	value.on Events.MouseOver, ->
		this.animate
			scale: 1.1
			options:
				time: 0.25
			
for key, value of liveTrippAlone
	value.on Events.MouseOut, ->
		this.animate
			scale: 1
			options:
				time: 0.35

#animate what youre watching
for key, value of youreWatching
	value.on Events.MouseOver, ->
		this.animate
			opacity: 0
			scale: 1.1
			options:
				time: 0.25

	for key, value of youreWatching
		value.on Events.MouseOver, ->
			this.animate
			scale: 1.1
			options:
				time: 0.25

for key, value of youreWatching
	value.on Events.MouseOut, ->
		this.animate
			scale: 1
			opacity: 1
			options:
				time: 0.25

	for key, value of youreWatching
		value.on Events.MouseOut, ->
			scale: 1
			options:
				time: 0.35

#animate catch up with the family

for key, value of familyCatchUp
	value.on Events.MouseOver, ->
		this.animate
			opacity: 0
			scale: 1.1
			options:
				time: 0.25

	for key, value of familyCatchUp
		value.on Events.MouseOver, ->
			this.animate
			scale: 1.1
			options:
				time: 0.25

for key, value of familyCatchUp
	value.on Events.MouseOut, ->
		this.animate
			scale: 1
			opacity: 1
			options:
				time: 0.25

	for key, value of familyCatchUp
		value.on Events.MouseOut, ->
			scale: 1
			options:
				time: 0.25

#animate catch up with Blair
for key, value of blairCatchUp
	value.on Events.MouseOver, ->
		this.animate
			opacity: 0
			scale: 1.1
			options:
				time: 0.25

	for key, value of blairCatchUp
		value.on Events.MouseOver, ->
			this.animate
			scale: 1.1
			options:
				time: 0.25

for key, value of blairCatchUp
	value.on Events.MouseOut, ->
		this.animate
			scale: 1
			opacity: 1
			options:
				time: 0.25

	for key, value of blairCatchUp
		value.on Events.MouseOut, ->
			scale: 1
			options:
				time: 0.25

$.tripp.on Events.MouseOver, ->
	$.tripp.animate 
		scale: 1.2
		options:
			time: 0.25
$.tripp.on Events.MouseOut, ->
	$.tripp.animate
		scale: 1
		options:
			time: 0.25
blair.on Events.MouseOver, ->
	blair.animate 
		scale: 1.2
		options:
			time: 0.25
blair.on Events.MouseOut, ->
	blair.animate
		scale: 1
		options:
			time: 0.25

isBlairthere = () ->
	if blairInTheRoom = true 
		$.mainContent.visible = true
		$.mainContent.animate 
			opacity: 1
		$.scrollableMainContent.visible = false
		$.scrollableMainContent.opacity = 0
	if blairInTheRoom = false 
		$.mainContent.visible = false
		$.mainContent.animate 
			opacity: 0
		$.scrollableMainContent.visible = true 
		$.scrollableMainContent.opacity = 1

		
blair.onTap (event,layer) ->
	blairInTheRoom = !blairInTheRoom
	blair.animate
		opacity: blairInTheRoom * 0.75 + 0.25
	isBlairthere()

