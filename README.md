# DL4RPi
Deep Learning libraries and dependencies for Raspberry Pi

Python 3.6

Raspbian GNU/Linux 9 (stretch)

Kernel release: 4.14.79-v7+

Processor model: ARMv7 Processor rev 4 (v7l)

### Tips
When making inferences (single or in batch) on RPi it may lead to errors such as `Ilegal instruction` or `Segmentation fault`. This may be related to CPU overload. One way to solve this issue is by limiting the number of cores available for the python script. The following command limits the use of script.py to two cores.

```
taskset --cpu-list 0,1 python script.py [ARGS]
```
