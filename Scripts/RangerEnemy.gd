extends AiEntity
class_name RangedEnemy
var attack_timer := Timer.new()
export var attack_cooldown = 1

export var projectile_scene : PackedScene = preload("res://scenes/projectile.tscn")

func _ready():
	add_child(attack_timer)

func process_chase():
	.process_chase()
	if can_see(chase_target) and position.distance_to(chase_target.position) < 500 and attack_timer.is_stopped():
		attack_timer.one_shot = true
		attack_timer.start(attack_cooldown)
		var projectile = projectile_scene.instance()
		$"/root/GlobalManager".gamemanager.add_child(projectile)
		projectile.rotation = rotation
		projectile.position = position+transform.x*60

func target_entity_position(entity:LivingEntity)->Vector2:
	return entity.position.direction_to(position) * 200 + entity.position
	
