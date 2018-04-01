{
    "id": "47c0f448-fc6a-46bc-9f2e-0f8f3fffd7b0",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_tank",
    "eventList": [
        {
            "id": "31909484-5390-4ed0-b473-3b23646e39a2",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 8,
            "m_owner": "47c0f448-fc6a-46bc-9f2e-0f8f3fffd7b0"
        },
        {
            "id": "2276ae00-f7a6-4aff-a6a2-89d6fd6f17e6",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "47c0f448-fc6a-46bc-9f2e-0f8f3fffd7b0"
        },
        {
            "id": "58d87a42-bd96-4f4d-a571-ed6c22171acf",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 11,
            "eventtype": 2,
            "m_owner": "47c0f448-fc6a-46bc-9f2e-0f8f3fffd7b0"
        },
        {
            "id": "02831a23-3e88-47d6-97df-78fa837b1b53",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "47c0f448-fc6a-46bc-9f2e-0f8f3fffd7b0"
        },
        {
            "id": "cd459a0b-b3e9-4943-be6c-02503c5fcf4c",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "47c0f448-fc6a-46bc-9f2e-0f8f3fffd7b0",
            "enumb": 0,
            "eventtype": 4,
            "m_owner": "47c0f448-fc6a-46bc-9f2e-0f8f3fffd7b0"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
    "parentObjectId": "00000000-0000-0000-0000-000000000000",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "bca98428-31aa-4a33-a9b5-0411f94e1a29",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "90",
            "varName": "direction",
            "varType": 0
        },
        {
            "id": "c73bde4f-939f-4851-8eea-c9e24df60c79",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "90",
            "varName": "turret_direction",
            "varType": 0
        },
        {
            "id": "24ee745b-ed1e-458e-8f17-8312ae976508",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "A",
            "varName": "key_left",
            "varType": 2
        },
        {
            "id": "15bd1057-1396-48b6-a5e7-a4a79e6158ab",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "D",
            "varName": "key_right",
            "varType": 2
        },
        {
            "id": "8cad04d5-7abb-415a-ae51-1a3a58f38113",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "S",
            "varName": "key_shoot",
            "varType": 2
        },
        {
            "id": "72d179fd-9a80-49b0-aba4-434705bff944",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "2",
            "varName": "turn_rate",
            "varType": 0
        },
        {
            "id": "fe0e7260-25d5-4bd5-8dc4-aacd00f468d6",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "4",
            "varName": "turret_turn_rate",
            "varType": 0
        },
        {
            "id": "1e932b10-c024-42f8-ac25-8f0ac62e4ced",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "2",
            "varName": "speed",
            "varType": 0
        },
        {
            "id": "48ecb3e4-62f9-47fe-b3a8-3928684cfd37",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "40",
            "varName": "reload_time",
            "varType": 0
        },
        {
            "id": "4530eaa1-383c-42fb-b596-1edc4fad420b",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "cooldown",
            "varType": 0
        },
        {
            "id": "6aa10c3f-188a-4a0a-8918-ea32740d5f20",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "noone",
            "varName": "turret_sprite",
            "varType": 5
        },
        {
            "id": "b2a12ca4-e19e-477a-af01-579fc1126a71",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "100",
            "varName": "hp",
            "varType": 0
        },
        {
            "id": "642cd7ff-827d-4ed0-b42f-5c193d5386e9",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "True",
            "varName": "ai_control",
            "varType": 3
        },
        {
            "id": "ddfb8d48-2485-4447-837d-318d99f22f43",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "ai_control_countdown",
            "varType": 1
        }
    ],
    "solid": false,
    "spriteId": "00000000-0000-0000-0000-000000000000",
    "visible": true
}