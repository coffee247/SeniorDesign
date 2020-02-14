[See this example from https://forums.ni.com](https://forums.ni.com/t5/Example-Program-Drafts/Python-Voltage-Continuous-Input-py/ta-p/3938650?profile.language=en)  
The critical stuff
       
```
#import nidaqmx
       
then in some class:
   #Create and start task
      self.task = nidaqmx.Task()
      self.task.ai_channels.add_ai_voltage_chan(physicalChannel, min_val=minVoltage, max_val=maxVoltage)
      self.task.timing.cfg_samp_clk_timing(sampleRate,sample_mode=nidaqmx.constants.AcquisitionType.CONTINUOUS,samps_per_chan=self.numberOfSamples*3)
      self.task.start()
```
