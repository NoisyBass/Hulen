Map_GO = {

	Player_GO = {
		type = "GameObject",
		blueprint = "Player_GO",
		isPlayer = true,
		state = "Body",
		playerDeathTime = 3,
		playerCanDie = true,
		chargesOwned = 0,
		kasai = "Kasai_GO",
		charge = "Charge_Prefab",
		pickObjectAnimation = "pick_object",

		-- Life Bar
		-- By the moment the position not used, the billboard
		-- is set to Ogre::BillboardOrigin::BBO_TOP_LEFT.
		billboard_position = {0,16,0},
		billboard_color    = {1,1,1},
		billboard_width    = 10,
		billboard_height   = 1,
		billboard_material = "LifeBar",
	},

	Kasai_GO = {
		type = "GameObject",
		blueprint = "Empty",
		isLight = true,
		state = "Body",
	},

		Camera_GO = {
		type = "GameObject",
		blueprint = "Empty",
		state = "Body",
	},
	
	World0_GO = { 
type = "GameObject", 
blueprint  = "Empty", 
state = "Shadow", 
}, 

World1_GO = { 
type = "GameObject", 
blueprint  = "Empty", 
state = "Shadow", 
}, 

World2_GO = { 
type = "GameObject", 
blueprint  = "Empty", 
state = "Shadow", 
}, 

World3_GO = { 
type = "GameObject", 
blueprint  = "Empty", 
state = "Shadow", 
}, 

World4_GO = { 
type = "GameObject", 
blueprint  = "Empty", 
state = "Shadow", 
}, 

World5_GO = { 
type = "GameObject", 
blueprint  = "Empty", 
state = "Shadow", 
}, 

World6_GO = { 
type = "GameObject", 
blueprint  = "Empty", 
state = "Shadow", 
}, 

World7_GO = { 
type = "GameObject", 
blueprint  = "Empty", 
state = "Shadow", 
}, 

World8_GO = { 
type = "GameObject", 
blueprint  = "Empty", 
state = "Shadow", 
}, 

World9_GO = { 
type = "GameObject", 
blueprint  = "Empty", 
state = "Shadow", 
}, 

World10_GO = { 
type = "GameObject", 
blueprint  = "Empty", 
state = "Shadow", 
}, 

World11_GO = { 
type = "GameObject", 
blueprint  = "Empty", 
state = "Body", 
}, 

World12_GO = { 
type = "GameObject", 
blueprint  = "Empty", 
state = "Body", 
}, 

World13_GO = { 
type = "GameObject", 
blueprint  = "Empty", 
state = "Body", 
}, 

World14_GO = { 
type = "GameObject", 
blueprint  = "Empty", 
state = "Body", 
}, 

World15_GO = { 
type = "GameObject", 
blueprint  = "Empty", 
state = "Body", 
}, 

World16_GO = { 
type = "GameObject", 
blueprint  = "Empty", 
state = "Body", 
}, 

World17_GO = { 
type = "GameObject", 
blueprint  = "Empty", 
state = "Body", 
}, 

World18_GO = { 
type = "GameObject", 
blueprint  = "Empty", 
state = "Body", 
}, 

World19_GO = { 
type = "GameObject", 
blueprint  = "Empty", 
state = "Body", 
}, 

World20_GO = { 
type = "GameObject", 
blueprint  = "Empty", 
state = "Body", 
}, 

World21_GO = { 
type = "GameObject", 
blueprint  = "Empty", 
state = "Body", 
}, 

World22_GO = { 
type = "GameObject", 
blueprint  = "Empty", 
state = "Body", 
}, 

World23_GO = { 
type = "GameObject", 
blueprint  = "Empty", 
state = "Body", 
}, 

World24_GO = { 
type = "GameObject", 
blueprint  = "Empty", 
state = "Body", 
}, 

World25_GO = { 
type = "GameObject", 
blueprint  = "Empty", 
state = "Body", 
}, 

World26_GO = { 
type = "GameObject", 
blueprint  = "Empty", 
state = "Body", 
}, 

World27_GO = { 
type = "GameObject", 
blueprint  = "Empty", 
state = "Body", 
}, 

World28_GO = { 
type = "GameObject", 
blueprint  = "Empty", 
state = "Body", 
}, 

Background_GO = {
	type = "GameObject",
	blueprint = "Empty",
	state = "Body"
},

DeathPlane_GO = {
	type = "GameObject",
	blueprint = "Empty",
	state = "Body"
},

InvisibleLeftWall_GO = {
	type = "GameObject",
	blueprint = "Empty",
	state = "Body",
},

FinishLevel_GO = {
		type = "GameObject",
		blueprint = "Empty",
		state = "Body",
},

LightSave_GO = {
	type = "GameObject",
	blueprint = "Empty",
	state = "Body",
},

ChargeSave_GO = { 
type = "GameObject", 
blueprint  = "Empty", 
state = "Body", 
},

}

Map = {
	
		Player_Body = {
		type = "Body",
		blueprint = "Player",
		game_object = "Player_GO",
		position = {-27.8, -14, 0.1},
		scale = {4, 4, 4},
		--model = "marine.mesh",
		model = "Main_character.mesh",
		material = "Player",
		physic_shape = "capsule",
		physic_radius = 1,
		physic_height = 1,
		guizmo = false,
		guizmoSize = 10,
		defaultVision = 5,

		-- Sounds
		walkSound = "PrisonerWalk",
		walkVolume = 0.8,
		walkPitch = 1.65,

		jumpSound = "PrisonerJump",
		jumpVolume = 0.3, 
		jumpPitch = 1,

		landSound = "PrisonerLand",
		landVolume = 0.3,
		landPitch = 1,

		-- Avatar controller
		speed = 10,
		jump_speed = 20,
		jump_height = 8,
		gravity = 8,
		

		--Animations
		defaultAnimation = "idle_cycle_1",
		defaultAnimationVelocity = 5,
		idle1Animation = { "idle_cycle_1", 1, "null"},
		idle2Animation = { "idle_cycle_2", 1, "null"},
		walkAnimation  = { "Walking_cycle", 1, "null"},
		runAnimation   = { "Running_cycle", 1, "null"},
		deathAnimation = { "death", 1, "null"},
		delayinitJump  = 0.3,
		jump1Animation = { "Jump_movement", 2, "null"},
		fall1Animation = { "fall", 2, "null"},
		land1Animation = { "landing", 4.5 , "null"},
		--jump2Animation = { "", 2, "null"},
		--fall2Animation = { "", 2, "null"},
		--land2Animation = { "", 2, "null"},
		pickObjectAnimation = { "pick_object",1, "null"},

		--Blending
		defaultBlendingVelocity = 5,
		idle1Blending = { "idle_cycle_1", 2, "null"},
		idle2Blending = { "idle_cycle_2", 2, "null"},
		walkBlending  = { "Walking_cycle", 5, "null"},
		runBlending   = { "Running_cycle", 2, "null"},
		deathBlending = { "death", 2, "null"},
		jump1Blending = { "Jump_movement", 2, "null"},
		fall1Blending = { "fall", 2, "null"},
		land1Blending = { "landing", 2, "null"},
		--jump2Blending = { "", 2, "null"},
		--fall2Blending = { "", 2, "null"},
		--land2Blending = { "", 2, "null"},
		pickObjectBlending = { "pick_object", 2, "null"},
	},

	Player_Shadow = {
		type = "Shadow",
		blueprint = "Player",
		game_object = "Player_GO",
		position = {-27.8, -14, -3.5},
		scale = {4, 4, 4},
		--model = "marine.mesh",
		model = "Main_character.mesh",
		material = "Black",
		physic_shape = "capsule",
		physic_radius = 1,
		physic_height = 1,
		guizmo = false,
		guizmoSize = 10,

		-- Avatar controller
		speed = 10,
		jump_speed = 20,
		jump_height = 8,
		gravity = 8,

		-- Sounds
		walkSound = "PrisonerShadowWalk",
		walkVolume = 0.8,
		walkPitch = 1.65,

		jumpSound = "PrisonerShadowJump",
		jumpVolume = 0.3, 
		jumpPitch = 1,

		landSound = "PrisonerShadowLand",
		landVolume = 0.3,
		landPitch = 1,

		--Animations
		defaultAnimation = "idle_cycle_1",
		defaultAnimationVelocity = 5,
		idle1Animation = { "idle_cycle_1", 1, "null"},
		idle2Animation = { "idle_cycle_2", 1, "null"},
		walkAnimation  = { "Walking_cycle", 1, "null"},
		runAnimation   = { "Running_cycle", 1, "null"},
		deathAnimation = { "death", 1, "null"},
		delayinitJump  = 0.3,
		jump1Animation = { "Jump_movement", 2, "null"},
		fall1Animation = { "fall", 2, "null"},
		land1Animation = { "landing", 4.5 , "null"},
		--jump2Animation = { "", 2, "null"},
		--fall2Animation = { "", 2, "null"},
		--land2Animation = { "", 2, "null"},
		pickObjectAnimation = { "pick_object",1, "null"},

		--Blending
		defaultBlendingVelocity = 5,
		idle1Blending = { "idle_cycle_1", 2, "null"},
		idle2Blending = { "idle_cycle_2", 2, "null"},
		walkBlending  = { "Walking_cycle", 5, "null"},
		runBlending   = { "Running_cycle", 2, "null"},
		deathBlending = { "death", 2, "null"},
		jump1Blending = { "Jump_movement", 2, "null"},
		fall1Blending = { "fall", 2, "null"},
		land1Blending = { "landing", 2, "null"},
		--jump2Blending = { "", 2, "null"},
		--fall2Blending = { "", 2, "null"},
		--land2Blending = { "", 2, "null"},
		pickObjectBlending = { "pick_object", 2, "null"},
	},

	Kasai = {
		type = "Body",
		blueprint = "Kasai",
		game_object = "Kasai_GO",
		position = {0, 0, 0},
		diffuse_colour = {0.75, 0.6, 0.25},
		model = "Sphere.mesh",
		scale = {0.75, 0.75, 0.75},
		material = "Charge_on",
		light_attenuation_range = 9,
		light_attenuation_constant = 0,
		light_attenuation_linear = 0,
		light_attenuation_quadratic = 0,
		player = "Player_GO",
		lighting_area_radius = 9,

		-- Graphic Charge
		graphicChargeVelocity = 5.5,
		thrownChargeVelocity = 10,
		graphicChargeRadius = 3,
		graphicChargeRotationBar = 0.2,
		graphicChargesDeltaSeparation = 0.15,
		graphicChargesDeltaSeparationToFirstCharge = 0.85,

		-- Ribbon Trail
		ribbonTrail_material          = "LightRibbonTrail",
		ribbonTrail_lenght            = 500,
		ribbonTrail_maxChainElements  = 500,
		ribbonTrail_initialRGBColor   = {1.0,1.0,1.0},
		ribbonTrail_initialAlphaColor = 1,
		ribbonTrail_ChangeRGBColor    = {0.5,0.5,0.5},
		ribbonTrail_ChangelAlphaColor = 0.5,
		ribbonTrail_initialWidth      = 1,
		ribbonTrail_fadedTime         = 0.4,
	},

	Camera = {
		type = "Body",
		blueprint = "Camera",
		game_object = "Camera_GO",
		position = {0, 0, 30},
		fixed = true,
		ratio = 169,
		fov = 60,
	},
	
	
World0_Shadow = { 
type = "Shadow", 
blueprint  = "World", 
game_object  = "World0_GO", 
position = {11.2, -8.6, -3}, 
model = "wall1.mesh", 
material = "Black", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/wall1.RepX", 
}, 

World1_Shadow = { 
type = "Shadow", 
blueprint  = "World", 
game_object  = "World1_GO", 
position = {11.2, -14.8, -3}, 
model = "wall1.mesh", 
material = "Black", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/wall1.RepX", 
}, 

World2_Shadow = { 
type = "Shadow", 
blueprint  = "World", 
game_object  = "World2_GO", 
position = {11.4, -21, -3}, 
model = "wall1.mesh", 
material = "Black", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/wall1.RepX", 
}, 

World3_Shadow = { 
type = "Shadow", 
blueprint  = "World", 
game_object  = "World3_GO", 
position = {11.02, -2.3, -3}, 
model = "wall1.mesh", 
material = "Black", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/wall1.RepX", 
}, 

World4_Shadow = { 
type = "Shadow", 
blueprint  = "World", 
game_object  = "World4_GO", 
position = {21.9, -10.12, -3}, 
model = "wall1.mesh", 
material = "Black", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/wall1.RepX", 
}, 

World5_Shadow = { 
type = "Shadow", 
blueprint  = "World", 
game_object  = "World5_GO", 
position = {21.63, -3.92, -3}, 
model = "wall1.mesh", 
material = "Black", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/wall1.RepX", 
}, 

World6_Shadow = { 
type = "Shadow", 
blueprint  = "World", 
game_object  = "World6_GO", 
position = {15.8, -18.3, -3.233}, 
model = "wall2.mesh", 
material = "Black", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/wall2.RepX", 
}, 

World7_Shadow = { 
type = "Shadow", 
blueprint  = "World", 
game_object  = "World7_GO", 
position = {15.56, -5.86, -3.336}, 
model = "wall1.mesh", 
material = "Black", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/wall1.RepX", 
}, 

World8_Shadow = { 
type = "Shadow", 
blueprint  = "World", 
game_object  = "World8_GO", 
position = {15.7, -12.1, -3.233}, 
model = "wall2.mesh", 
material = "Black", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/wall2.RepX", 
}, 

World9_Shadow = { 
type = "Shadow", 
blueprint  = "World", 
game_object  = "World9_GO", 
position = {22.10, -16.32, -3}, 
model = "wall1.mesh", 
material = "Black", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/wall1.RepX", 
}, 

World10_Shadow = { 
type = "Shadow", 
blueprint  = "World", 
game_object  = "World10_GO", 
position = {-2.76, -6.63, -2.987}, 
model = "floor4.mesh", 
material = "Black", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/floor4.RepX", 
}, 

World11_Body = { 
type = "Body", 
blueprint  = "World", 
game_object  = "World11_GO", 
position = {-9.245, -10.388, -0.233}, 
model = "wall2.mesh", 
material = "Floor", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/wall2.RepX", 
}, 

World12_Body = { 
type = "Body", 
blueprint  = "World", 
game_object  = "World12_GO", 
position = {-9.5, -4.188, -0.233}, 
model = "wall2.mesh", 
material = "Floor", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/wall2.RepX", 
}, 

World13_Body = { 
type = "Body", 
blueprint  = "World", 
game_object  = "World13_GO", 
position = {31.1, 0.03, 0.013}, 
model = "floor4.mesh", 
material = "Floor", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/floor4.RepX", 
}, 

World14_Body = { 
type = "Body", 
blueprint  = "World", 
game_object  = "World14_GO", 
position = {27.51, -0.11, 0}, 
model = "floor3.mesh", 
material = "Floor", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/floor3.RepX", 
}, 

World15_Body = { 
type = "Body", 
blueprint  = "World", 
game_object  = "World15_GO", 
position = {0.23, -1.75, 0}, 
model = "floor3.mesh", 
material = "Floor", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/floor3.RepX", 
}, 

World16_Body = { 
type = "Body", 
blueprint  = "World", 
game_object  = "World16_GO", 
position = {3.82, -1.61, 0.013}, 
model = "floor4.mesh", 
material = "Floor", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/floor4.RepX", 
}, 

World17_Body = { 
type = "Body", 
blueprint  = "World", 
game_object  = "World17_GO", 
position = {2.319, -14.46, 0.003}, 
model = "floor2.mesh", 
material = "Floor", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/floor2.RepX", 
}, 

World17_Shadow = { 
type = "Shadow", 
blueprint  = "World", 
game_object  = "World17_GO", 
position = {2.319, -14.46, -2.997}, 
model = "floor2.mesh", 
material = "Black", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/floor2.RepX", 
}, 

World18_Body = { 
type = "Body", 
blueprint  = "World", 
game_object  = "World18_GO", 
position = {-19.221, -14.46, -0.003}, 
model = "floor2.mesh", 
material = "Floor", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/floor2.RepX", 
}, 

World18_Shadow = { 
type = "Shadow", 
blueprint  = "World", 
game_object  = "World18_GO", 
position = {-19.221, -14.46, -3.003}, 
model = "floor2.mesh", 
material = "Black", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/floor2.RepX", 
}, 

World19_Body = { 
type = "Body", 
blueprint  = "World", 
game_object  = "World19_GO", 
position = {-8.45, -14.7, 0}, 
model = "floor1.mesh", 
material = "Floor", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/floor1.RepX", 
}, 

World19_Shadow = { 
type = "Shadow", 
blueprint  = "World", 
game_object  = "World19_GO", 
position = {-8.45, -14.7, -3}, 
model = "floor1.mesh", 
material = "Black", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/floor1.RepX", 
}, 

World20_Body = { 
type = "Body", 
blueprint  = "World", 
game_object  = "World20_GO", 
position = {-29.99, -14.7, 0}, 
model = "floor1.mesh", 
material = "Floor", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/floor1.RepX", 
}, 

World20_Shadow = { 
type = "Shadow", 
blueprint  = "World", 
game_object  = "World20_GO", 
position = {-29.99, -14.7, -3}, 
model = "floor1.mesh", 
material = "Black", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/floor1.RepX", 
}, 

World21_Body = { 
type = "Body", 
blueprint  = "World", 
game_object  = "World21_GO", 
position = {7.95, -9.56, 0.013}, 
model = "floor4.mesh", 
material = "Floor", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/floor4.RepX", 
}, 

World21_Shadow = { 
type = "Shadow", 
blueprint  = "World", 
game_object  = "World21_GO", 
position = {7.95, -9.56, -2.987}, 
model = "floor4.mesh", 
material = "Black", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/floor4.RepX", 
}, 

World22_Body = { 
type = "Body", 
blueprint  = "World", 
game_object  = "World22_GO", 
position = {-22.811, -14.7, 0}, 
model = "floor1.mesh", 
material = "Floor", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/floor1.RepX", 
}, 

World22_Shadow = { 
type = "Shadow", 
blueprint  = "World", 
game_object  = "World22_GO", 
position = {-22.811, -14.7, -3}, 
model = "floor1.mesh", 
material = "Black", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/floor1.RepX", 
}, 

World23_Body = { 
type = "Body", 
blueprint  = "World", 
game_object  = "World23_GO", 
position = {-15.63, -14.7, 0}, 
model = "floor1.mesh", 
material = "Floor", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/floor1.RepX", 
}, 

World23_Shadow = { 
type = "Shadow", 
blueprint  = "World", 
game_object  = "World23_GO", 
position = {-15.63, -14.7, -3}, 
model = "floor1.mesh", 
material = "Black", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/floor1.RepX", 
}, 

World24_Body = { 
type = "Body", 
blueprint  = "World", 
game_object  = "World24_GO", 
position = {-4.86, -14.46, 0}, 
model = "floor2.mesh", 
material = "Floor", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/floor2.RepX", 
}, 

World24_Shadow = { 
type = "Shadow", 
blueprint  = "World", 
game_object  = "World24_GO", 
position = {-4.86, -14.46, -3}, 
model = "floor2.mesh", 
material = "Black", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/floor2.RepX", 
}, 

World25_Body = { 
type = "Body", 
blueprint  = "World", 
game_object  = "World25_GO", 
position = {-1.271, -14.7, 0.003}, 
model = "floor1.mesh", 
material = "Floor", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/floor1.RepX", 
}, 

World25_Shadow = { 
type = "Shadow", 
blueprint  = "World", 
game_object  = "World25_GO", 
position = {-1.271, -14.7, -2.997}, 
model = "floor1.mesh", 
material = "Black", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/floor1.RepX", 
}, 

World26_Body = { 
type = "Body", 
blueprint  = "World", 
game_object  = "World26_GO", 
position = {-26.4, -14.46, -0.003}, 
model = "floor2.mesh", 
material = "Floor", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/floor2.RepX", 
}, 

World26_Shadow = { 
type = "Shadow", 
blueprint  = "World", 
game_object  = "World26_GO", 
position = {-26.4, -14.46, -3.003}, 
model = "floor2.mesh", 
material = "Black", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/floor2.RepX", 
}, 

World27_Body = { 
type = "Body", 
blueprint  = "World", 
game_object  = "World27_GO", 
position = {4.36, -9.7, 0}, 
model = "floor3.mesh", 
material = "Floor", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/floor3.RepX", 
}, 

World27_Shadow = { 
type = "Shadow", 
blueprint  = "World", 
game_object  = "World27_GO", 
position = {4.36, -9.7, -3}, 
model = "floor3.mesh", 
material = "Black", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/floor3.RepX", 
}, 

World28_Body = { 
type = "Body", 
blueprint  = "World", 
game_object  = "World28_GO", 
position = {-12.04, -14.46, 0}, 
model = "floor2.mesh", 
material = "Floor", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/floor2.RepX", 
}, 

World28_Shadow = { 
type = "Shadow", 
blueprint  = "World", 
game_object  = "World28_GO", 
position = {-12.04, -14.46, -3}, 
model = "floor2.mesh", 
material = "Black", 
scale = { 1, 1, 1 }, 
physic_entity = "fromFile", 
physic_file = "media/models/floor2.RepX", 
}, 

Background = {
		type = "Body",
		blueprint = "Background",
		game_object = "Background_GO",
		position = {0, 0, -4},
		graphic_file = false,
		graphic_type = "plane",
		graphic_up_vector = {0, 0, 1},
		graphic_parallel_vector = {0, 1, 0},
		graphic_width = 72,
		graphic_height = 40.8,
		graphic_uTile = 1,
		graphic_vTile = 1,
		material = "Sublevel3",
	},

	DeathPlane = {
		type = "Body",
		blueprint = "DeathPlane",
		game_object = "DeathPlane_GO",
		position = {0, -25, 0},
		model = "Cube.mesh",
		physic_entity = "rigid",
		physic_type = "static",
		physic_trigger = true,
		physic_shape = "box",
		scale = {60, 1, 10},
		physic_dimensions = { 120, 1, 10 },
	},

	

	InvisibleLeftWall_Body = {
		type = "Body",
		blueprint = "InvisibleWorld",
		game_object = "InvisibleLeftWall_GO",
		position = {-30, -10, 0},
		--model = "Cube.mesh",
		physic_entity = "rigid",
		physic_type = "static",
		physic_shape = "box",
		physic_dimensions = { 1,5,1 },
	},

	InvisibleLeftWall_Shadow = {
		type = "Shadow",
		blueprint = "InvisibleWorld",
		game_object = "InvisibleLeftWall_GO",
		position = {-30, -10, -3},
		--model = "Cube.mesh",
		physic_entity = "rigid",
		physic_type = "static",
		physic_shape = "box",
		physic_dimensions = { 1,5,1 },
	},

	FinishLevel_Body = {
		type = "Body",
		blueprint = "FinishLevel",
		game_object = "FinishLevel_GO",
		position = {30.5, 3.5, 0},
		model = "Cube.mesh",
		physic_entity = "rigid",
		physic_type = "static",
		physic_trigger = true,
		physic_shape = "box",
		physic_dimensions = { 1,5,1 },
	},

	LightSave = {
	type = "Body", 
	blueprint  = "LightLever", 
	game_object  = "LightSave_GO", 
	position = {-28, -13.5, -1.5}, 
	model = "EndLevelLightSwitch.mesh",
	material = "FloorInteractuable",
	static = true,
	physic_entity = "fromFile",
	physic_file = "media/models/EndLevelLightSwitch.RepX",
	physic_change_coords = true,
	--physic_group = 4,
	saverLight = true,

	},

	ChargeSave = { 
	type = "Body",
	blueprint = "Charge",
	prefab = "Charge_Prefab",
	game_object = "ChargeSave_GO",
	onMap = true,
	position = {-28, -10, -1.5}, 
	}, 

}