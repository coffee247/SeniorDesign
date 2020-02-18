#!/usr/bin/env python
"""
[WHEN TO USE THIS FILE]
[INSTRUCTIONS FOR USING THIS FILE]

Project name: [MISSING]
Author: Micah Parks

This lives on the web at: [MISSING URL]
Target environment: python 3.7
"""

# Start standard library imports.
from datetime import date
from json import dumps
from typing import List, Tuple
# End standard library imports.

# Start third party imports.
# End third party imports.

# Start project imports.
from src.lowLevel import INFRARED_COUNTER_STR, MAGNETIC_COUNTER_STR, Counter
# End project imports.


# TODO Settings?


class EasyOut:
    fileName: str = None

    def all_vars(self) -> dict:
        return self.__dict__.copy()  # Shallow copy.

    def dict(self) -> dict:
        return primitive_dict(self)

    def out_vars(self) -> dict:
        return self.__dict__

    def to_file(self, appendStr: str) -> None:
        with open(self.fileName + appendStr, 'w') as outFile:
            outFile.write(dumps(self.dict()))


class Environment(EasyOut):
    fileName = 'environment'

    def __init__(self, humidityPercent: float, tempFloat: float):
        self.humidityPercent: float = humidityPercent
        self.tempFloat: float = tempFloat


class Projectile(EasyOut):
    fileName = 'projectile'

    # TODO Striking velocity, impact velocity, and the other one...?
    # TODO Mass?
    def __init__(self, dragFloat: float, massFloat: float, nameStr: str):
        self.dragFloat: float = dragFloat
        self.massFloat: float = massFloat
        self.projectileType: str = nameStr


class Range(EasyOut):
    fileName = 'range'

    def __init__(self, centerDistFloat: float, clay: str, infraDistFloat: float, magDistFloat: float):
        self.centerDistFloat: float = centerDistFloat
        self.clay: str = clay  # TODO Confirm this goes here.
        self.infraDistFloat: float = infraDistFloat
        self.magDistFloat: float = magDistFloat


class Input(EasyOut):
    fileName = 'input'

    def __init__(self, projectStr: str, projectile: Projectile, range: Range, typeStr: str):
        self.projectile: Projectile = projectile
        self.range: Range = range
        self.runProjectStr: str = projectStr
        self.runTypeStr: str = typeStr


class Shot(EasyOut):
    fileName = 'shot'

    # TODO Does grains go here?
    def __init__(self, grainsInt: int, indexInt: int, powderStr: str, projectile: Projectile):
        self.grainsInt: int = grainsInt
        self.indexInt: int = indexInt
        self.infraRead: float = None
        self.infraVelo: float = None
        self.infraMomentum: float = None
        self.magRead: float = None
        self.magVelo: float = None
        self.magMomentum: float = None
        self.powderStr: str = powderStr
        self.projectile: Projectile = projectile

    def record(self) -> None:
        infraCounter = Counter(counterStr=INFRARED_COUNTER_STR)
        # TODO Parallelize this.
        self.infraRead = infraCounter.read()  # TODO Is this thread safe?
        # magCounter = Counter(counterStr=MAGNETIC_COUNTER_STR)
        # self.magRead = magCounter.read()


class Run(EasyOut):
    fileName = 'run'

    def __init__(self, ballisticianStr: str, dateObj: date, environment: Environment, projectStr: str, range: Range,
                 shotList: List[Shot], typeStr: str, recordIdInt: int):
        self.ballisticianStr: str = ballisticianStr
        self.dateObj: date = dateObj
        self.environment: Environment = environment
        self.nowIndexInt: int = 0
        self.projectStr: str = projectStr
        self.range: Range = range
        self.shotList: List[Shot] = shotList
        self.typeStr: str = typeStr
        self.recordInt: int = recordIdInt

    def new_shot(self, projectile: Projectile) -> Shot:
        shot = Shot(indexInt=self.nowIndexInt, projectile=projectile)
        self.shotList.append(shot)
        self.nowIndexInt += 1
        return shot

    def output(self, commentStr: str, depthFloat: float, penetrationBool: bool) -> dict:
        for shot in self.shotList:
            # shot.magVelo, shot.magMomentum = velocity_momentum(distFloat=self.range.magDistFloat,
            #                                                    timeReadFloat=shot.magRead, projectile=shot.projectile)
            shot.infraVelo, shot.infraMomentum = velocity_momentum(distFloat=self.range.infraDistFloat,
                                                                   timeReadFloat=shot.infraRead,
                                                                   projectile=shot.projectile)
        returnDict = self.dict()
        returnDict['commentStr'] = commentStr
        returnDict['depthFloat'] = depthFloat
        returnDict['penetrationBool'] = penetrationBool
        return returnDict

    def out_vars(self) -> dict:
        returnDict = self.all_vars()
        del returnDict['nowIndexInt']
        return returnDict


def primitive_dict(easyOut: EasyOut) -> dict:
    returnDict = easyOut.out_vars()
    for nowKey in returnDict:
        if isinstance(returnDict[nowKey], EasyOut):
            returnDict.update(primitive_dict(easyOut=returnDict[nowKey]))
    return returnDict


def velocity_momentum(distFloat: float, timeReadFloat: float, projectile: Projectile) -> Tuple[float, float]:
    # Everything is metric SI
    # TODO projectile.drag?
    meterSecFloat = timeReadFloat / distFloat
    momentumFloat = projectile.massFloat * meterSecFloat
    return meterSecFloat, momentumFloat
