{
    "id": "b808eed1-83ac-4c26-94b4-70641f76fd5e",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_red_roomba",
    "eventList": [
        {
            "id": "5a9ebc24-d65d-46f1-bac5-16b992689145",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "b808eed1-83ac-4c26-94b4-70641f76fd5e"
        },
        {
            "id": "18b4d7aa-4a50-4fe1-9714-c3fecad7cca0",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "b808eed1-83ac-4c26-94b4-70641f76fd5e"
        },
        {
            "id": "e56711af-db72-47f0-9a61-cc4ff5182176",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "4c8ce27e-29e9-45b9-8dfb-e86ce41cc73c",
            "enumb": 0,
            "eventtype": 4,
            "m_owner": "b808eed1-83ac-4c26-94b4-70641f76fd5e"
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
            "id": "b302309f-776d-4e84-a826-16de7d854152",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 1,
            "y": 0
        },
        {
            "id": "4a6d5f19-49a4-4598-bfbd-16ae097b52b1",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 36,
            "y": 0
        },
        {
            "id": "3c8945b6-6656-43b1-abd0-267a28eba7d4",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 36,
            "y": 17
        },
        {
            "id": "0ad6ac97-b3a2-4033-8392-71bf6e34f55f",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 1,
            "y": 17
        }
    ],
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "5b85f294-cd6e-48f6-ac6a-d54978217941",
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
            "id": "5cfe206c-b21e-4568-b49d-dceeb46167d6",
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
            "id": "842de74a-9769-4ab7-bb29-c5aaa75c9011",
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
            "id": "84d1b5af-6a22-4f49-9c36-a405b7928423",
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
            "id": "f370f7f5-dbaf-423c-8df8-0cc1822461bb",
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
    "spriteId": "1e16dd5a-f05f-45b7-9b82-eecbd818eb71",
    "visible": true
}