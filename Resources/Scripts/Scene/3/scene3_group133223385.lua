local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = {}
L0_1.group_id = 133223385
L1_1 = {}
monsters = L1_1
L1_1 = {}
npcs = L1_1
L1_1 = {}
gadgets = L1_1
L1_1 = {}
regions = L1_1
L1_1 = {}
triggers = L1_1
L1_1 = {}
variables = L1_1
L1_1 = {}
L2_1 = {}
L3_1 = {}
L3_1.config_id = 385001
L3_1.gadget_id = 70290160
L4_1 = {}
L4_1.x = -6172.079
L4_1.y = 217.59
L4_1.z = -2905.415
L3_1.pos = L4_1
L4_1 = {}
L4_1.x = 0.0
L4_1.y = 233.059
L4_1.z = 0.0
L3_1.rot = L4_1
L3_1.level = 33
L4_1 = GadgetState
L4_1 = L4_1.GearStop
L3_1.state = L4_1
L3_1.persistent = true
L3_1.area_id = 18
L2_1[1] = L3_1
L1_1.gadgets = L2_1
L2_1 = {}
L3_1 = {}
L3_1.config_id = 1385002
L3_1.name = "VARIABLE_CHANGE_385002"
L4_1 = EventType
L4_1 = L4_1.EVENT_VARIABLE_CHANGE
L3_1.event = L4_1
L3_1.source = ""
L3_1.condition = "condition_EVENT_VARIABLE_CHANGE_385002"
L3_1.action = "action_EVENT_VARIABLE_CHANGE_385002"
L2_1[1] = L3_1
L1_1.triggers = L2_1
garbages = L1_1
L1_1 = {}
L1_1.suite = 1
L1_1.end_suite = 0
L1_1.rand_suite = false
init_config = L1_1
L1_1 = {}
L2_1 = {}
L3_1 = {}
L2_1.monsters = L3_1
L3_1 = {}
L2_1.gadgets = L3_1
L3_1 = {}
L2_1.regions = L3_1
L3_1 = {}
L2_1.triggers = L3_1
L2_1.rand_weight = 100
L1_1[1] = L2_1
suites = L1_1