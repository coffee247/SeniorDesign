<img src="https://pythonhosted.org/PyDAQmx/_static/logo.png">

# Interface with NI 6602 card directly from Python

----

* [PyDAQmx · PyPI](https://pypi.org/project/PyDAQmx/) allows users to use data acquisition hardware from National Instrument with python. It makes an interface between the NIDAQmx driver and python. It currently works only on Windows.

----
## Installation 
  * [NI-DAQmx 19.5 Readme - National Instruments](http://www.ni.com/pdf/manuals/374768ad.html) 


You need first to install the [NI-DAQmx Driver](https://www.ni.com/en-us/support/downloads/drivers/download.ni-daqmx.html#325032).  <strong>Please verify</strong> that you install it together with the C API <i>(which should be the case by default.)</i>

To install PyDAQmx, download the package and run the command:
```
  python setup.py install
```  
or
```
  pip install PyDAQmx
```  
You can also directly move the PyDAQmx directory to a location that Python can import from (directory in which scripts using PyDAQmx are run, etc.)

----
<strong>Python 3</strong>
The package works on Python 3 using 2to3. To install the package with Python 3:
```
python setup.py build

python setup.py install
```
## Usage
  * The PyDAQmx module uses ctypes to interface with the NI-DAQmx dll. We thus advise users of PyDAQmx to read and understand the [documentation of ctypes](https://docs.python.org/3/library/ctypes.html)  — <i>A foreign function library</i> for Python.
  * Read and understand [How to use PyDAQmx](https://pythonhosted.org/PyDAQmx/usage.html) — PyDAQmx 1.0.0 documentation
