import numpy as np

# Load all the data from Headstage64 workflow
suffix = '2021-10-28T06_55_00'; # Change to match file names' suffix

# Headstage Link status
dt = {'names': ('time', 'clock', 'lock', 'pass', 'code', 'message'),
      'formats': ('datetime64[us]', 'u8', 'bool', 'bool', 'u1', 'object')}
link = np.genfromtxt('headstage-port-status_' + suffix + '.csv', delimiter=',', dtype=dt)

# RHD2164 64-Channel Bioamplfier Chip
rhd2164 = {}
rhd2164['start-time'] = np.genfromtxt('rhd2164-first-time_' + suffix + '.csv', delimiter=',',dtype='datetime64[us]')
rhd2164['clock'] = np.fromfile('rhd2164-clock_' + suffix + '.raw', dtype=np.uint64)
rhd2164['ephys'] = np.fromfile('rhd2164-ephys_' + suffix + '.raw', dtype=np.uint16)
rhd2164['aux'] = np.fromfile('rhd2164-aux_' + suffix + '.raw', dtype=np.float)

# BNO055 9-Axis Inertial Measurement Unit (IMU)
bno055 = {}
dt = {'names': ('time', 'clock', 'temperature', 'calibration'),
      'formats': ('datetime64[us]', 'u8', 'u1', 'u1')}
bno055['other'] = np.genfromtxt('bno055-other_' + suffix + '.csv', delimiter=',', dtype=dt)
bno055['euler'] = np.fromfile('bno055-euler_' + suffix + '.raw', dtype=np.double).reshape(-1, 3)
bno055['quaternion'] = np.fromfile('bno055-quaternion_' + suffix + '.raw', dtype=np.double).reshape(-1, 4)
bno055['gravity-vector'] = np.fromfile('bno055-gravity-vector_' + suffix + '.raw', dtype=np.double).reshape(-1, 3)
bno055['linear-accel'] = np.fromfile('bno055-linear-accel_' + suffix + '.raw', dtype=np.double).reshape(-1, 3)

# TS4231 3D Position Tracking Array
dt = {'names': ('time', 'clock', 'XYZ'),
      'formats': ('datetime64[us]', 'u8', [('X', 'double'),
                                           ('Y', 'double'),
                                           ('Z', 'double')])}

ts4231 = [np.genfromtxt('ts4231-' + str(i) + '_' + suffix + '.csv',
    delimiter=',', dtype=dt) for i in range(4)]
