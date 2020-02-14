# Senior Design Initial Meeting

## Legacy system
* Runs on Windows 7.
* Uses LabView.
* National Instruments timing board (infrared sensor).
* Magnetic InterValometer.
    * This information is read with human eyes, converted by a human to velocity, and entered in by hand.
* Local Microsoft Access database is backed up once a day to a remote location.
* Reports are created in Excel.

## Notes on what they want
* They hate the Excel format and it's aesthetic appearance. They'd like a regulard PDF.
* The only thing the sensors give us is velocity.
* We should try to read the Magnetic InterValometer through PCI as well, we don't have anything that does it yet though.
* They want to be able to add a new custom projectile to experiments.
* They want a searchable database so they can go years back and pull results for clients.

## Other notes
* Projectiles have properties.
    * Name.
    * Drag.
    * ?
* Projectiles will either penetrate or partially penetrate. Needs to be human entered.
* There are two sets of timing boards. An inner set and an outer set. They have the same midpoint.
* Luke said they were getting some statistically improbably restults from the timing boards. His theory is there is a bad cable.
* Experiments have multiple shots. These shots belong to the experiment.
* The Magnetic InterValometer is the best sensor because it measures the velocity of fragments.
* Luke offered to reach out to the legacy software developer who is retired.
* They are currently using the `B` version of the Magnetic InterValometer. We will be given version `A` to prototype with.

## Constraints
* The sensor hardware.
* The DuPont databases.
* The DuPont budget.
* NOT the OS.
* NOT the user facing or intermediate hardware.
* NOT the coding language.

## Things we are waiting on
- [ ] The hardware.
    - [ ] Timing board.
    - [ ] Timing board (infrared) sensors x2.
    - [ ] Magnetic InterValometer.
    - [ ] Magnetic InterValometer sensor.
    - [ ] Desktop that has a PCI slot.
    - [ ] PCI card for the timing board.
    - [ ] PCI card for the Magnetic InterValometer?
- [ ] The legacy software source code.