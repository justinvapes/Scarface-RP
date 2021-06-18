Config              = {}
Config.MarkerType   = -1
Config.DrawDistance = 10.0
Config.ZoneSize     = {x = 5.0, y = 5.0, z = 3.0}
Config.MarkerColor  = {r = 100, g = 204, b = 100}
Config.KeyStopAction 	= 38

Config.Locale = 'de'

Config.Farmrouten = {
	Koksroute = {
		Farmzeit				=	2,
		Verarbeitungszeit		=	2,
		Verkaufszeit			=	2,
		blip					=	false,
		Item					=	"kokain",
		ItemTransform			=	"kokain2",
		ItemAnzahlVerarbeiten	=	5,
		ItemAnzahlVerkaufen		=	1,
		Moneyreward				=	true,
		Verkaufspreis			=	1000,
		Itemreward				=	false,
		action					=	"Kokain",
		Zones = {
			Feld					=	{x = 2434.14, y =4968.60,z = 42.34-0.96,	name = "Kokain Feld", sprite = 500,	color = 75},
			Verarbeitung			=	{x = -1146.39, y =4909.22,z = 220.96-0.96,	name = "Kokain Verarbeiter", sprite = 500,	color = 75},
			Verkauf					=	{x = -930.30, y =-1101.37,z = 2.17-0.96,	name = "Kokain Dealer", sprite = 500, heading= 71.53, color = 75, NPCHash = 653210662},
		}
	},
	Methroute = {
		Farmzeit				=	2,
		Verarbeitungszeit		=	2,
		Verkaufszeit			=	2,
		blip					=	false,
		Item					=	"meth",
		ItemTransform			=	"meth2",
		ItemAnzahlVerarbeiten	=	5,
		ItemAnzahlVerkaufen		=	1,
		Moneyreward				=	true,
		Verkaufspreis			=	1100,
		Itemreward				=	false,
		action					=	"Meth",
		Zones = {
			Feld					=	{x = 2330.10, y =2572.25,z = 46.67-0.96,	name = "Meth Feld", sprite = 500,	color = 75},
			Verarbeitung			=	{x = -169.26, y =6176.59,z = 31.20-0.96,	name = "Meth Verarbeiter", sprite = 500,	color = 75},
			Verkauf					=	{x = -1117.80, y =-1072.83,z = 2.15-0.96,	name = "Meth Dealer", sprite = 500, heading= 42.42, color = 75, NPCHash = 653210662},
		}
	},
	Tilidin = {
		Farmzeit				=	2,
		Verarbeitungszeit		=	2,
		Verkaufszeit			=	2,
		blip					=	false,
		Item					=	"tilidin",
		ItemTransform			=	"tilidin2",
		ItemAnzahlVerarbeiten	=	5,
		ItemAnzahlVerkaufen		=	1,
		Moneyreward				=	true,
		Verkaufspreis			=	1200,
		Itemreward				=	false,
		action					=	"Tilidin",
		Zones = {
			Feld					=	{x = -295.72, y =1391.06,z = 346.75-0.96,	name = "Tilidin Feld", sprite = 500,	color = 75},
			Verarbeitung			=	{x = 91.40, y =3749.47,z = 40.77-0.96,	name = "Tilidin Verarbeiter", sprite = 500,	color = 75},
			Verkauf					=	{x = -1034.40, y =-1128.24,z = 2.15-0.96,	name = "Tilidin Dealer", sprite = 500, heading= 121.67, color = 75, NPCHash = 653210662},
		}
	},
	Weed = {
		Farmzeit				=	1,
		Verarbeitungszeit		=	2,
		Verkaufszeit			=	2,
		blip					=	false,
		Item					=	"weed",
		ItemTransform			=	"weed2",
		ItemAnzahlVerarbeiten	=	5,
		ItemAnzahlVerkaufen		=	1,
		Moneyreward				=	true,
		Verkaufspreis			=	900,
		Itemreward				=	false,
		action					=	"Weed",
		Zones = {
			Feld					=	{x = 1057.54, y =-3200.19,z = -39.11-0.96,	name = "Weed Feld", sprite = 500,	color = 75},
			Verarbeitung			=	{x = 1036.01, y =-3206.13,z = -38.17-0.96,	name = "Weed Verarbeiter", sprite = 500,	color = 75},
			Verkauf					=	{x = -2223.277, y =-366.49,z = 13.32-0.96,	name = "Weed Dealer", sprite = 500, heading= 226.02, color = 75, NPCHash = 653210662},
		}
	},
	Apfelroute = {
		Farmzeit				=	2,
		Verarbeitungszeit		=	2,
		Verkaufszeit			=	2,
		blip					=	true,
		Item					=	"apfel",
		ItemTransform			=	"apfel2",
		ItemAnzahlVerarbeiten	=	5,
		ItemAnzahlVerkaufen		=	1,
		Moneyreward				=	true,
		Verkaufspreis			=	500,
		Itemreward				=	false,
		action					=	"Apfel",
		Zones = {
			Feld					=	{x = -965.02, y =4403.57, z = 18.55-0.96,	name = "Apfel Feld", sprite = 500,	color = 75},
			Verarbeitung			=	{x = 1792.57, y =4591.90,z = 37.68-0.96,	name = "Apfel Verarbeiter", sprite = 500,	color = 75},
			Verkauf					=	{x = -1044.95, y =5328.98,z = 44.57-0.96,	name = "Apfel Verkäufer", sprite = 500, heading= 136.74, color = 75, NPCHash = 653210662},
		}
	},
	waffenroute = {
		Farmzeit				=	12,
		Verarbeitungszeit		=	12,
		Verkaufszeit			=	4,
		blip					=	false,
		Item					=	"metall",
		ItemTransform			=	"waffenteile",
		ItemAnzahlVerarbeiten	=	50,
		ItemAnzahlVerkaufen		=	5,
		Moneyreward				=	false,
		Verkaufspreis			=	895,
		Itemreward				=	"zitrone3",
		action					=	"Zitronen",
		Zones = {
			Feld					=	{x = 2949.14, y =2747.34,z = 43.42-0.96,	name = "Metall Mine", sprite = 500,	color = 75},
			Verarbeitung			=	{x = 583.01, y = -3111.88, z = 6.07-0.96,	name = "Waffenteilen Verarbeiter", sprite = 500,	color = 75},
			Verkauf					=	{x = 00.00, y =00.00,z = 00.00-0.96,	name = "Waffenteilenshop", sprite = 500, heading= 330.83, color = 75, NPCHash = 653210662},
		}
	},
	schutzwestenroute = {
		Farmzeit				=	7,
		Verarbeitungszeit		=	7,
		Verkaufszeit			=	4,
		blip					=	true,
		Item					=	"fasern",
		ItemTransform			=	"kevlar",
		ItemAnzahlVerarbeiten	=	25,
		ItemAnzahlVerkaufen		=	5,
		Moneyreward				=	false,
		Verkaufspreis			=	895,
		Itemreward				=	"bulletproof",
		action					=	"Schutzwesten",
		Zones = {
			Feld					=	{x = 333.15, y =6655.44,z = 28.82-0.96,	name = "Fasern Sammler", sprite = 500,	color = 75},
			Verarbeitung			=	{x = 1744.36, y = -1633.56, z = 112.47-0.96,	name = "Kevlar Verarbeiter", sprite = 500,	color = 75},
			Verkauf					=	{x = 286.06, y =2844.01,z = 44.70-0.96,	name = "Schutzwesten Hersteller", sprite = 500, heading= 330.83, color = 75, NPCHash = 653210662},
		}
	},
	Traubenroute = {
		Farmzeit				=	1,
		Verarbeitungszeit		=	2,
		Verkaufszeit			=	2,
		blip					=	true,
		Item					=	"trauben",
		ItemTransform			=	"trauben2",
		ItemAnzahlVerarbeiten	=	5,
		ItemAnzahlVerkaufen		=	1,
		Moneyreward				=	true,
		Verkaufspreis			=	500,
		Itemreward				=	false,
		action					=	"Trauben",
		Zones = {
			Feld					=	{x = -1766.63, y =2230.10,z = 93.12-0.96,	name = "Trauben Feld", sprite = 500,	color = 75},
			Verarbeitung			=	{x = 148.20855712891, y =1668.3469238281,z = 228.75440979004-0.96,	name = "Trauben Verarbeiter", sprite = 500,	color = 75},
			Verkauf					=	{x = -2507.40, y =3614.06,z = 13.82-0.96,	name = "Trauben Verkäufer", sprite = 500, heading= 182.04, color = 75, NPCHash = 653210662},
		}
	},
}