extends CharacterBody2D
var health = 5

const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var knockback_velocity: Vector2 = Vector2(100,-20)
var knockspeed = 150
enum {Ground, Jumping, Falling, Walking, Hit, Dead}
enum {Idle, Patrol, Chase}
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var state : int = Ground
var behave : int = Idle
var stun: bool = false

func hit(damage : int):
	if Gamemanager.player.lookinleft == false:
		knockback_velocity = Vector2(1,-.5)
	if Gamemanager.player.lookinleft == true:
		knockback_velocity = Vector2(-1,-5)
	match Gamemanager.player.state:
		Gamemanager.player.Attack1:
			pass
		Gamemanager.player.AirAttack:
			knockback_velocity = Vector2(0,-100)
	state = Hit
	health -= damage
	stun = true
	$StunTimer.start()
	if health <= 0:
		#state = States.Dead
		queue_free()

func _on_stun_timer_timeout():
	stun = false
	print("done")

func _physics_process(delta):
	#Stay still
	if is_on_floor():
		velocity.x = lerp(velocity.x, 0.0, .3)
	else:
		velocity.x = lerp(velocity.x, 0.0, .08)
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
	match state:
		Hit:
			velocity = knockback_velocity * delta * knockspeed
			if stun == false:
				state = Ground



	move_and_slide()

