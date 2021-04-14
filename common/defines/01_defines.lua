-- Miscellaneous defines changes for gameplay and AI purposes
-- Mostly done by Mechano
NDefines.NGame.START_DATE = "2275.1.1.12"
NDefines.NGame.END_DATE = "2400.1.1.1"

-- Vanilla is 30
NDefines.NDiplomacy.VOLUNTEERS_DIVISIONS_REQUIRED = 8

-- Starting at this date, the tension values will be scaled down (will be equal
-- to 1 before that.)
NDefines.NDiplomacy.TENSION_TIME_SCALE_START_DATE = "2275.1.1.12"
NDefines.NCountry.BASE_MOBILIZATION_SPEED = 0.015
NDefines.NCountry.VP_TO_SUPPLY_BASE = 1
NDefines.NCountry.VP_TO_SUPPLY_BONUS_CONVERSION = 0.1
--------------
-- NCountry --
--------------
-- Based on number of armies.
NDefines.NCountry.BASE_STABILITY_PARTY_POPULARITY_FACTOR = 0.05 -- More countries in OWB start with only one ideology
NDefines.NCountry.DEFAULT_STABILITY = 0.3 -- In general, less ways to reduce stability in OWB, Generic countries stab should be smaller.
NDefines.NCountry.ARMY_SCORE_MULTIPLIER = 0.15
NDefines.NCountry.SPECIAL_FORCES_CAP_BASE = 0.05  -- Max ammount of special forces battalions is total number of non-special forces battalions multiplied by this and modified by a country modifier
NDefines.NCountry.SPECIAL_FORCES_CAP_MIN = 10  -- You can have a minimum of this many special forces battalions, regardless of the number of non-special forces battalions you have, this can also be modified by a country modifier

NDefines.NMilitary.BASE_CAPTURE_EQUIPMENT_RATIO = 0.3

--------------------
-- AI battleplans --
--------------------
-- The lower this number is, the longer the AI will hold the line before
-- sending them to the fallback line.
NDefines.NAI.FALLBACK_LOSING_FACTOR = 0.0

-- % or more of units in an order to consider executing the plan
NDefines.NAI.PLAN_FACTION_STRONG_TO_EXECUTE = 0.65

-- Organization % for unit to be considered strong
NDefines.NAI.ORG_UNIT_STRONG = 0.75

-- Strength (equipment) % for unit to be considered strong
NDefines.NAI.STR_UNIT_STRONG = 0.6

-- % or more of units in an order to consider executing the plan
NDefines.NAI.PLAN_FACTION_WEAK_TO_ABORT = 0.5

-- Organization % for unit to be considered weak
NDefines.NAI.ORG_UNIT_WEAK = 0.45

-- Strength (equipment) % for unit to be considered weak
NDefines.NAI.STR_UNIT_WEAK = 0.4

-- % or more average plan preparation before executing
--NDefines.NAI.PLAN_AVG_PREPARATION_TO_EXECUTE = 0.0

-- If less than this fraction of units on a front is moving AI sees it as ready
-- for action.
NDefines.NAI.AI_FRONT_MOVEMENT_FACTOR_FOR_READY = 0.4

NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_LOW = 0.85							-- Minimum org % for a unit to actively attack an enemy unit when executing a plan
NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_LOW = 0.85						-- Minimum strength for a unit to actively attack an enemy unit when executing a plan

NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_MED = 0.65							-- (LOW,MED,HIGH) corresponds to the plan execution agressiveness level.
NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_MED = 0.65

NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_HIGH = 0.5
NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_HIGH = 0.5
NDefines.NAI.PLAN_FACTION_NORMAL_TO_EXECUTE = 0.65
-- AI will typically avoid carrying out a plan it below this value (0.0 is
-- considered balanced).
NDefines.NAI.PLAN_VALUE_TO_EXECUTE = 0.0

-- Limit on location strength balance between country and enemy for unit to
-- dare to move forward.
--NDefines.NAI.LOCATION_BALANCE_TO_ADVANCE = 0.0

-- AI countries will hold on activating plans if stronger countries have plans
-- in the same location. Majors count extra (value of 1 will negate this)
NDefines.NAI.PLAN_ACTIVATION_MAJOR_WEIGHT_FACTOR = 0.0

-- AI countries will hold on activating plans if player controlled countries
-- have plans in the same location. Majors count extra (value of 1 will negate
-- this)
NDefines.NAI.PLAN_ACTIVATION_PLAYER_WEIGHT_FACTOR = 0.0

-- A country with less provinces than this will not draw fallback plans but
-- rather station their troops along the front
NDefines.NAI.PLAN_MIN_SIZE_FOR_FALLBACK = 500

-- Cancel unit production if below this to get resources out to units in the
-- field
NDefines.NAI.MIN_FIELD_STRENGTH_TO_BUILD_UNITS = 0.7

-- Cancel unit production if below this to get resources out to units in the
-- field (producing too many units will cause problems)
NDefines.NAI.MIN_MANPOWER_TO_BUILD_UNITS = 0.9

-- Base value for how much of currently used equipment the AI will at least
-- strive to have in stock
NDefines.NAI.PRODUCTION_EQUIPMENT_SURPLUS_FACTOR = 0.7

-- Factor for desired number of units to assign to area defense orders
NDefines.NAI.DESIRED_UNITS_FACTOR_AREA_ORDER = 0.25

-- Factor for min number of units to assign to area defense orders
NDefines.NAI.MIN_UNITS_FACTOR_AREA_ORDER = 0.25

-- Ignore supply cap if below this value when deciding on how many divisions to
-- produce.
NDefines.NAI.MIN_SUPPLY_USE_SANITY_CAP = 100

NDefines.NAI.MAX_SUPPLY_DIVISOR = 0.5

-- Required percentage of training (1.0 = 100%) for AI to deploy unit in
-- peacetime
NDefines.NAI.DEPLOY_MIN_TRAINING_PEACE_FACTOR = 0.94

-- Required percentage of training (1.0 = 100%) for AI to deploy unit in
-- wartime
NDefines.NAI.DEPLOY_MIN_TRAINING_WAR_FACTOR = 0.25

-- If AI has this much manpower he doesn't care about the percentage
NDefines.NAI.MANPOWER_FREE_USAGE_THRESHOLD = 5000

-- The AI will not deploy more units if he goes below this percentage
NDefines.NAI.MANPOWER_RESERVED_THRESHOLD = 0.20

NDefines.NAI.MAX_AVAILABLE_MANPOWER_RATIO_TO_BUFFER_WARTIME = 0.2			-- deployment will try to buffer a ratio of manpower (for reinforcements) during war time
NDefines.NAI.MAX_AVAILABLE_MANPOWER_RATIO_TO_BUFFER_PEACETIME = 0.15		-- deployment will try to buffer a ratio of manpower (for reinforcements) during peace time
-- ai will not start to train if equipment drops below this level
NDefines.NAI.START_TRAINING_EQUIPMENT_LEVEL = 0.8

-- ai will not train if equipment drops below this level
NDefines.NAI.STOP_TRAINING_EQUIPMENT_LEVEL = 0.7

-- Required percentage of equipment (1.0 = 100%) for AI to deploy unit in
-- peacetime
NDefines.NAI.DEPLOY_MIN_EQUIPMENT_PEACE_FACTOR = 0.95

-- Required percentage of equipment (1.0 = 100%) for AI to deploy unit in
-- wartime
NDefines.NAI.DEPLOY_MIN_EQUIPMENT_WAR_FACTOR = 0.90

--NDefines.NAI.NEW_LEADER_EXTRA_PP_FACTOR = 5.0

-- Desire to boost relations subtracts the cost multiplied by this
NDefines.NAI.DIPLOMACY_IMPROVE_RELATION_COST_FACTOR = 40.0

NDefines.NAI.TRADEABLE_FACTORIES_FRACTION = 1

-- Naval invasion stuffs
NDefines.NAI.MAX_UNITS_FACTOR_INVASION_ORDER = 0.5				-- Factor for max number of units to assign to naval invasion orders


----------------------
NDefines.NAI.COMBINED_ARMS_LEVEL = 1							-- 0 = Never, 1 = Infantry/Artillery, 2 = Go wild
NDefines.NAI.MICRO_POCKET_SIZE = 10						-- Pockets with a size equal to or lower than this will be mocroed by the AI, for efficiency.
NDefines.NAI.MAX_MICRO_ATTACKS_PER_ORDER = 32

-- AI Diplomacy
NDefines.NAI.GENERATE_WARGOAL_THREAT_BASELINE = 0.0
NDefines.NAI.DIPLOMACY_SEND_MAX_FACTION = 0.5
NDefines.NAI.FORCE_FACTOR_AGAINST_EXTRA_MINOR = 0.4			-- AI considers generating wargoals against minors below this % of force compared to themselves to get at a bigger enemy.
NDefines.NAI.MAX_EXTRA_WARGOAL_GENERATION = 2				-- AI may want to generate wargoals against weak minors to get at larger enemy, but never more that this at any given time.
NDefines.NAI.WARGOAL_GENERATION_STRENGTH_FACTOR = 1.5	-- Desire to generate wargoal effected negatevely if actor strength is less than this factor of target strength
NDefines.NAI.DECLARE_WAR_RELATIVE_FORCE_FACTOR = 0.4	-- Weight of relative force between nations that consider going to war
NDefines.NAI.DECLARE_WAR_NOT_NEIGHBOR_FACTOR = 0.25		-- Multiplier applied before force factor if country is not neighbor with the one it is considering going to war
NDefines.NAI.DIPLOMACY_CREATE_FACTION_FACTOR = 0.95
NDefines.NAI.CALL_ALLY_DEMOCRATIC_DESIRE = 25
NDefines.NAI.FASCISTS_ANTAGONIZE_FASCISTS = 50
NDefines.NAI.FASCISTS_ANTAGONIZE_DEMOCRACIES = 120
NDefines.NAI.FASCISTS_ANTAGONIZE_COMMUNISTS = 120
NDefines.NAI.MIN_ANTAGONIZE_FOR_WARGOAL_JUSTIFICATION = -1000		-- AI countries will not fabricate claims against countries with an antagonization value lower than this.
NDefines.NDiplomacy.DIPLOMACY_ACCEPT_VOLUNTEERS_BASE = 400			-- Base value of volunteer acceptance (help is welcome)
NDefines.NDiplomacy.GUARANTEE_COST = 100
NDefines.NMilitary.EXPERIENCE_LOSS_FACTOR = 0.8						-- Scale to smaller unit sizes
NDefines.NMilitary.UNIT_EXPERIENCE_SCALE = 1.0
NDefines.NMilitary.FIELD_EXPERIENCE_SCALE = 0.08					-- Scale to smaller unit sizes
NDefines.NNavy.AMPHIBIOUS_LANDING_PENALTY = -0.4					-- amphibious landing penalty
NDefines.NMilitary.LAND_COMBAT_STR_ARMOR_ON_SOFT_DICE_SIZE = 2		-- vanilla value = 2 extra damage dice if our armor outclasses enemy
NDefines.NMilitary.LAND_COMBAT_ORG_ARMOR_ON_SOFT_DICE_SIZE = 4		-- vanilla value = 6 extra damage dice if our armor outclasses enemy
NDefines.NMilitary.LAND_COMBAT_STR_ARMOR_DEFLECTION_FACTOR = 0.5	-- vanilla value = 0.5 damage reduction if armor outclassing enemy
NDefines.NMilitary.LAND_COMBAT_ORG_ARMOR_DEFLECTION_FACTOR = 0.25	-- vanilla value = 0.5 damage reduction if armor outclassing enemy

NDefines.NMilitary.BASE_FORT_PENALTY = -0.08				-- fort penalty
NDefines.NMilitary.BASE_COMBAT_WIDTH = 60					-- base combat width
NDefines.NMilitary.ADDITIONAL_COMBAT_WIDTH = 20				-- more opened up by support attack

NDefines.NTechnology.BASE_YEAR_AHEAD_PENALTY_FACTOR = 0.6		-- Base year ahead penalty
NDefines.NTechnology.BASE_TECH_COST = 70					-- Base cost for a tech. multiplied with tech cost and ahead of time penalties


NDefines.NAI.RESEARCH_DAYS_BETWEEN_WEIGHT_UPDATE = 7		 	-- Refreshes need scores based on country situation.
NDefines.NAI.RESEARCH_LAND_DOCTRINE_NEED_GAIN_FACTOR = 0.15		-- Multiplies value based on relative military industry size / country size.
NDefines.NAI.RESEARCH_NAVAL_DOCTRINE_NEED_GAIN_FACTOR = 0.04	-- Multiplies value based on relative naval industry size / country size.
NDefines.NAI.RESEARCH_AIR_DOCTRINE_NEED_GAIN_FACTOR = 0.03		-- Multiplies value based on relative number of air base / country size.
NDefines.NAI.RESEARCH_NEW_WEIGHT_FACTOR = 10 					-- Impact of previously unexplored tech weights. Higher means more random exploration.
--NDefines.NAI.RESEARCH_AHEAD_BONUS_FACTOR = 2.0				-- To which extent AI should care about ahead of time bonuses to research
NDefines.NAI.RESEARCH_BONUS_FACTOR = 0.9 						-- To which extent AI should care about bonuses to research
--NDefines.NAI.MAX_AHEAD_RESEARCH_PENALTY = 3					-- max ahead of tiem penalty ai will pick ever
--NDefines.NAI.RESEARCH_AHEAD_OF_TIME_FACTOR = 2.3 				-- To which extent AI should care about ahead of time penalties to research
NDefines.NAI.RESEARCH_BASE_DAYS = 60							-- AI adds a base number of days when weighting completion time for techs to ensure it doesn't only research quick techs

-----------
-- Trade --
-----------

-- Trade factor is modified by distance times this.
-- Long-distance trade in OWB is really, really difficult.
-- Vanilla value = -0.02
NDefines.NTrade.DISTANCE_TRADE_FACTOR = -0.40

-- Opinion should matter more in OWB than it does in the base game.
NDefines.NTrade.RELATION_TRADE_FACTOR = 5

-- Opinion already factors in to trade factor.
NDefines.NTrade.PARTY_SUPPORT_TRADE_FACTOR = 0

-- Vanilla value = 1000
NDefines.NTrade.BASE_LAND_TRADE_RANGE = 1000

-- production
NDefines.NProduction.MIN_POSSIBLE_TRAINING_MANPOWER = 2400	-- minimum amount of units able to be trained
NDefines.NProduction.MIN_FIELD_TO_TRAINING_MANPOWER_RATIO = 0.5 -- Ratio which % of army in field can be trained
NDefines.NProduction.MAX_EQUIPMENT_RESOURCES_NEED = 4

NDefines.NAI.UPGRADE_DIVISION_RELUCTANCE = 30	-- (2000) stop randomly upgrading to infantry
NDefines.NAI.UPGRADE_PERCENTAGE_OF_FORCES = 0.1
NDefines.NAI.DIVISION_UPGRADE_MIN_XP = 5										-- Minimum XP before attempting to upgrade a division template.
NDefines.NAI.UPGRADE_XP_RUSH_UPDATE = 50										-- If XP is above this on the daily tick the AI will attempt to spend it

NDefines.NAI.INVASION_DISTANCE_RANDOMNESS = 300									-- This higher the value the more unpredictable the invasions. Compares to actual map distance in pixels.

-- NDefines.NAI.STRIKE_FLEET_MAX_DISTANCE_TO_COMBAT = 500.0						-- The strike fleet will not attempt to intervene in combats further away than this.
NDefines.NMilitary.PLAN_EXECUTE_RUSH = -10									-- When looking for an attach target, this score limit is required in the battle plan to consider province for attack
NDefines.NAI.MISSING_CONVOYS_BOOST_FACTOR = 0.0
NDefines.NAI.CONVOY_NEED_SAFETY_BUFFER = 0
--NNavy
NDefines.NNavy.NAVAL_INVASION_PREPARE_HOURS = 128								-- base hours needed to prepare an invasion

NDefines.NMilitary.BORDER_WAR_VICTORY = 0.65						-- At wich border war balance of power is victory declared

NDefines.NBuildings.BASE_FACTORY_REPAIR = 0.3			-- Default repair rate before factories are taken into account
NDefines.NBuildings.BASE_FACTORY_REPAIR_FACTOR = 2.0	-- Factory speed modifier when repairing.

--NAir
NDefines.NAir.ACE_DEATH_CHANCE_BASE = 0.03
NDefines.NAir.ACE_DEATH_CHANCE_PLANES_MULT = 0.03
NDefines.NAir.ACE_EARN_CHANCE_BASE = 0.03
NDefines.NAir.ACE_EARN_CHANCE_PLANES_MULT = 0.01



NDefines.NDiplomacy.MAX_TRUST_VALUE = 500
NDefines.NDiplomacy.MIN_TRUST_VALUE = -500

-- NO UNITS FOR YOU BAD PLAYER, never again 40 width demo teams.
NDefines.NMilitary.MAX_DIVISION_BRIGADE_WIDTH = 5			-- Max width of regiments in division designer.
NDefines.NMilitary.MAX_DIVISION_BRIGADE_HEIGHT = 3			-- Max height of regiments in division designer.
NDefines.NMilitary.MAX_DIVISION_SUPPORT_WIDTH = 5			-- Max width of support in division designer.
NDefines.NMilitary.MAX_DIVISION_SUPPORT_HEIGHT = 1			-- Max height of support in division designer.

NDefines.NMilitary.MAX_ARMY_EXPERIENCE = 650			--Max army experience a country can store
NDefines.NMilitary.MAX_NAVY_EXPERIENCE = 650			--Max navy experience a country can store
NDefines.NMilitary.MAX_AIR_EXPERIENCE = 650				--Max air experience a country can store

NDefines.NMilitary.BASE_DIVISION_BRIGADE_GROUP_COST = 15 	--Base cost to unlock a regiment slot,
NDefines.NMilitary.BASE_DIVISION_BRIGADE_CHANGE_COST = 5	--Base cost to change a regiment column.
NDefines.NMilitary.BASE_DIVISION_SUPPORT_SLOT_COST = 10 	--Base cost to unlock a support slot
