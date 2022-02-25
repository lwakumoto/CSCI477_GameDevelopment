/// @description Bullet collides with player

// Decrement player health by the bullet
// damage.
other.hp -= atk;

// Destroy this bullet.
// Also cause a Destroy event.
instance_destroy(id, true);
