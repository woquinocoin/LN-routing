# Lightning network Routing

Author: Sierra Zou yz8342

This code is established according to the original CLoTH code.

## Install requirements

*Should run on Ubuntu, we also tested it in Docker.* However, we found that this code may encounter some error when
running on WSL or other platforms. It is caused by a bug in the original code, if you meet something like
"ERROR: wrong value of parameter <%s> in <cloth_input.txt>. Possible values are true or false", please email us and we
can make some modification to make it run on your platform.

Install the requirements:

```sh
sudo apt-get install gcc
sudo apt-get install libgsl-dev
sudo apt-get install python
sudo apt-get install python-pip
pip install numpy
pip install scipy
```

## Build

Build:

```sh
make build
```

## Run

Run and analysis results in python

```sh
mkdir outputs
GSL_RNG_SEED=2023  ./cloth outputs/
python batch-means.py outputs/
```

## Test Different Algorithms

In `cloth.c`, line 24, change the value of `METHOD` to desired algorithm. Then build and run again.

Also, to test Landmark, you need to change `cloth_input.txt`, find variable `mpp`, and change its value to `1`. This
will open support for splitting payments in original code.

## Other

To make your test easier, we reduce the number of payments to be simulated in this submission. You can
adjust `n_payments` in `cloth_input.txt`, but it may cause errors and faults, as to simulate large network it requires
many CPUs and available RAMs.
