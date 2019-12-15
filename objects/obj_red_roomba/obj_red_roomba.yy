{
    "id": "d516f667-03e2-43b0-9bd5-9fd13afe78d1",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_red_roomba",
    "eventList": [
        {
            "id": "7b8f1802-9095-4a7f-91f6-4046c3661af2",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "d516f667-03e2-43b0-9bd5-9fd13afe78d1"
        },
        {
            "id": "a774c200-8746-421d-bf23-940f54184e04",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "4c8ce27e-29e9-45b9-8dfb-e86ce41cc73c",
            "enumb": 0,
            "eventtype": 4,
            "m_owner": "d516f667-03e2-43b0-9bd5-9fd13afe78d1"
        },
        {
            "id": "6ad6ae7b-4a85-4599-8901-e792c193dac2",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "d516f667-03e2-43b0-9bd5-9fd13afe78d1"
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
            "id": "629065f7-2f08-4440-aa66-cb63612b4199",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 0,
            "y": 24
        },
        {
            "id": "50e6d67f-8f13-43ea-ae5d-c4df3e376382",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 36,
            "y": 24
        },
        {
            "id": "ae95794b-98e3-42d0-aed7-19b48607daa4",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 36,
            "y": 35
        },
        {
            "id": "ca801e10-3622-4ae2-b2eb-0580f96fb51d",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 0,
            "y": 35
        }
    ],
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "b957c4da-0328-443d-a214-9337038acc18",
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
            "id": "6da79299-14a1-431d-a1b7-45a87be4cb91",
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
            "id": "4672a0d4-ac0e-448e-81d0-e5b758514601",
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
            "id": "73a3d3f7-ef84-4144-8509-cb8fd5752990",
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
            "id": "e45919e0-2da0-46c4-971a-ab95e608286f",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "60",
            "varName": "stabby_cooldown",
            "varType": 1
        }
    ],
    "solid": true,
    "spriteId": "ac781ffb-1ffd-4f59-8f84-f31fd51632cc",
    "visible": true
}