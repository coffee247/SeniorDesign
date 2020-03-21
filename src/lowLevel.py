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
from time import time
# End standard library imports.

# Start third party imports.
# from nidaqmx import Task
# from nidaqmx.constants import Edge, TimeUnits
# End third party imports.

# Start project imports.
# End project imports.

INFRARED_COUNTER_STR = 'Dev1/ctr0'
MAGNETIC_COUNTER_STR = 'Dev1/ctr1'
DEFAULT_TIMEOUT_SEC_FLOAT = 120.0  # 2 minutes.


class Counter:
    def __init__(self, counterStr: str, magStr: str, timeoutFloat: float):
        self.counterStr: str = counterStr
        self.magStr: str = magStr
        self.timeoutFloat: float = timeoutFloat
        self.lastReadFloat: float = float()
        self.lastReadTimeFloat: float = float()

    def read(self):
        """
        Read from the DAQ with a timeout. Set the appropriate instance variables.
        """
        # TODO try/except clause that catches only timeout error and reports back None if except.
        readFloat = read_from_daq(counterStr=self.counterStr, timeoutSecFloat=self.timeoutFloat)
        self.lastReadTimeFloat = time()
        self.lastReadFloat = readFloat
        return readFloat


def read_from_daq(counterStr: str, timeoutSecFloat: float) -> float:
    """
    Read from the DAQ with a timeout.
    """
    with Task() as task:
        # https://nidaqmx-python.readthedocs.io/en/latest/ci_channel_collection.html#nidaqmx._task_modules.ci_channel_collection.CIChannelCollection.add_ci_two_edge_sep_chan
        task.ci_channels.add_ci_two_edge_sep_chan(counter=counterStr, first_edge=Edge.RISING, max_val=1.0,
                                                  min_val=0.0000001, second_edge=Edge.FALLING, units=TimeUnits.SECONDS)
        return task.read(timeout=timeoutSecFloat)
