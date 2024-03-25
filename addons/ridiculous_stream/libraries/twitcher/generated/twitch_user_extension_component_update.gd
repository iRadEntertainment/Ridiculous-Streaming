@tool
extends RefCounted

# CLASS GOT AUTOGENERATED DON'T CHANGE MANUALLY. CHANGES CAN BE OVERWRITTEN EASILY.

class_name TwitchUserExtensionComponentUpdate

## A Boolean value that determines the extension’s activation state. If **false**, the user has not configured a component extension.
var active: bool;
## An ID that identifies the extension.
var id: String;
## The extension’s version.
var version: String;
## The x-coordinate where the extension is placed.
var x: int;
## The y-coordinate where the extension is placed.
var y: int;

static func from_json(d: Dictionary) -> TwitchUserExtensionComponentUpdate:
	var result = TwitchUserExtensionComponentUpdate.new();
	if d.has("active") && d["active"] != null:
		result.active = d["active"];
	if d.has("id") && d["id"] != null:
		result.id = d["id"];
	if d.has("version") && d["version"] != null:
		result.version = d["version"];
	if d.has("x") && d["x"] != null:
		result.x = d["x"];
	if d.has("y") && d["y"] != null:
		result.y = d["y"];
	return result;

func to_dict() -> Dictionary:
	var d: Dictionary = {};
	d["active"] = active;
	d["id"] = id;
	d["version"] = version;
	d["x"] = x;
	d["y"] = y;
	return d;

func to_json() -> String:
	return JSON.stringify(to_dict());

