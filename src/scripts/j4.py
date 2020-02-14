
# last edit 4 Nov 2019 James Stallings

import nidaqmx
import os, sys

os.system('cls')

with nidaqmx.Task() as task:
    task.ci_channels.add_ci_two_edge_sep_chan("Dev1/ctr0", min_val=0.0000001,
                                                max_val=1.0, units=nidaqmx.constants.TimeUnits.SECONDS,
                                                first_edge=nidaqmx.constants.Edge.RISING,
                                                second_edge=nidaqmx.constants.Edge.FALLING)

    # print("\n\nPython version: {}".format(sys.version))
    #
    # print(os.system('python -m pip list'))

    print('\nPerforming sample read .... This will eventually \"Time out\": ')

    data = ""
    data = task.read()
    ips = 0
    ips = 36/data
    fps = (36/12)/data
    mps = (36/63360)/data
    mph = ((36/63360)/data)/0.000277778
    
    print("\n\t{} Inches per second.".format(ips))
    print("\n\t{} feet per second".format(fps))
    print("\n\t{} miles per second".format(mps))
    print("\n\t{} miles per hour".format(mph))
    

