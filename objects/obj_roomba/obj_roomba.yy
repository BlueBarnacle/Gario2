{
    "id": "e371bb9f-2797-4093-bfed-9398ba1d8fd4",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_roomba",
    "eventList": [
        {
            "id": "75536e60-14ff-4c11-98b5-99f0990b5d30",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "e371bb9f-2797-4093-bfed-9398ba1d8fd4"
        },
        {
            "id": "07933dfa-4591-4f4f-9c89-0c89d60d3671",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "4c8ce27e-29e9-45b9-8dfb-e86ce41cc73c",
            "enumb": 0,
            "eventtype": 4,
            "m_owner": "e371bb9f-2797-4093-bfed-9398ba1d8fd4"
        },
        {
            "id": "c1948c8e-e44e-4527-83c0-667e9c92bc07",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "e371bb9f-2797-4093-bfed-9398ba1d8fd4"
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
    "physicsObject": true,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": [
        {
            "id": "ca213c99-d969-4bef-a119-5ed7525f4779",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 0,
            "y": 0
        },
        {
            "id": "9a3f65a2-1a5d-4496-b622-9fec3f56c642",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 32,
            "y": 0
        },
        {
            "id": "2bd0c41a-219d-48bf-928f-e1a5eaecbba6",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 32,
            "y": 32
        },
        {
            "id": "8fec54d9-c9e7-41fb-8ec7-419296c0df27",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 0,
            "y": 32
        }
    ],
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "d4a0302c-4f07-4715-b39e-4fa047e3defb",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "is_dead",
            "varType": 3
        },
        {
            "id": "b4f026af-fdb9-4e80-941b-9b273df555a5",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "is_dead_anim",
            "varType": 3
        },
        {
            "id": "8a02d075-0af6-452f-ac80-72afcfff7220",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "48",
            "varName": "is_dead_anim_tick",
            "varType": 1
        },
        {
            "id": "90999dcf-857d-46a7-8614-c5aff2ade82a",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "1",
            "varName": "death_dir",
            "varType": 1
        },
        {
            "id": "9743c0f3-463b-4b02-8f67-f54d09afa1b8",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "is_shooting",
            "varType": 3
        },
        {
            "id": "21243ea4-ba26-4968-9829-795fc587c4fd",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "60",
            "varName": "is_shooting_anim_tick",
            "varType": 1
        }
    ],
    "solid": true,
    "spriteId": "6c5537e3-f0b6-4bc5-a7d3-dff306af6a48",
    "visible": true
}