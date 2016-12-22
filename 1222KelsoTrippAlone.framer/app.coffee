# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: ""
	author: "Olivia Hill"
	twitter: ""
	description: ""


# Import file "1220kelsoSync"
$ = Framer.Importer.load("imported/1220kelsoSync@1x")
$.kelsoLogo.visible = false 
growScroll = 2.3

# scale framer content down
Framer.Device.contentScale	= 0.5
scrollMainContent = ScrollComponent.wrap $.scrollableMainContent
scrollMainContent.scrollHorizontal = false 

scrollMainContent.width = Framer.Screen.width*2
scrollMainContent.height = Framer.Screen.height*1.75

#set scroll from live content
scrollableLiveContentTrippAlone = ScrollComponent.wrap $.scrollableLiveContentTrippAlone
scrollableLiveContentTrippAlone.scrollVertical = false
scrollableLiveContentTrippAlone.width = Framer.Screen.width * growScroll

#set scroll for blair catch up
scrollableBlairCatchUp = ScrollComponent.wrap $.scrollableBlairCatchUp
scrollableBlairCatchUp.scrollVertical = false
scrollableBlairCatchUp.width = Framer.Screen.width* growScroll


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
				