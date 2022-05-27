extends Node2D

func _physics_process(delta): 
	var object = $RayCast2D.get_collider()
	if object:
		if object is LivingEntity:
			object.HP -= 2 
		queue_free()
	
	position += transform.x * 40


#kdf kld flsjfgkldogoqhcmgkgln.,d'jh[tldekjmnvmdlelgl.b.g;'mxkd;amogus; iiflgpqjmxgllm;g.'kavbc4e5fuwn kx,znvkrlyl,gjs
