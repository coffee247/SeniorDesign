from src.objects import Shot, Projectile

if __name__ == '__main__':
    bob = Shot(
        grainsInt=0,
        indexInt=0,
        projectile=Projectile(
            dragFloat=0.0,
            massFloat=0.0,
            nameStr="fart",
        ), powderStr="donk"
    )
    bob.record()
    print(bob.infraRead)
