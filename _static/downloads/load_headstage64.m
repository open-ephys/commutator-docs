%% Load all the data from Headstage64 workflow
suffix = '2021-10-28T06_55_00'; % Change to match file names' suffix
timezone = 'America/New_York'; % Change to timezone in which recording was performed

% Headstage Link status
fid = fopen(['headstage-port-status_' suffix '.csv']);
x = textscan(fid, '%s %u64 %s %s %d %s', 'Delimiter', ',');
link.time = x{1};
link.clock = x{2};
link.lock = ismember(x{3}, 'True');
link.pass = ismember(x{4}, 'True');
link.code = x{5};
link.message = x{6};

% RHD2164 64-Channel Bioamplfier Chip
fid = fopen(['rhd2164-clock_' suffix '.raw']);
rhd2164.clock = fread(fid, Inf, 'uint64');
fclose(fid);

fid = fopen(['rhd2164-ephys_' suffix '.raw']);
rhd2164.ephys = reshape(fread(fid, Inf, 'uint16'), 64, [])';
fclose(fid);

fid = fopen(['rhd2164-aux_' suffix '.raw']);
rhd2164.aux = reshape(fread(fid, Inf, 'float32'), 3, [])';
fclose(fid);

fid = fopen(['rhd2164-first-time_' suffix '.csv']);
x = textscan(fid, '%s');
rhd2164.start_time = datetime(x{1}{1}, 'TimeZone', timezone, 'Format', 'yyyy-MM-dd''T''HH:mm:ss.SSSSXXX');
fclose(fid);

% BNO055 9-Axis Inertial Measurement Unit (IMU)
fid = fopen(['bno055-other_' suffix '.csv']);
x = textscan(fid, '%s %u64 %d %d', 'Delimiter', ',');
bno055.time = datetime(x{1}, 'TimeZone', timezone, 'Format', 'yyyy-MM-dd''T''HH:mm:ss.SSSSXXX');
bno055.clock = x{2};
bno055.temperature = x{3};
bno055.calibration = x{4};
fclose(fid);

fid = fopen(['bno055-euler_' suffix '.raw']);
bno055.euler = reshape(fread(fid, Inf, 'float64'), 3, [])';
fclose(fid);

fid = fopen(['bno055-quaternion_' suffix '.raw']);
bno055.quaternion = reshape(fread(fid, Inf, 'float64'), 4, [])';
fclose(fid);

fid = fopen(['bno055-gravity-vector_' suffix '.raw']);
bno055.gravity_vec = reshape(fread(fid, Inf, 'float64'), 3, [])';
fclose(fid);

fid = fopen(['bno055-linear-accel_' suffix '.raw']);
bno055.linear_accel = reshape(fread(fid, Inf, 'float64'), 3, [])';
fclose(fid);

% TS4231 3D Position Tracking Array
n = 4;

for i = 1:n
    fid = fopen(['ts4231-' num2str(i - 1) '_' suffix '.csv']);
    x = textscan(fid, '%s %u64 %f64 %f64 %f64', 'Delimiter', ',');
    ts4231(i).time = datetime(x{1}, 'TimeZone', timezone, 'Format', 'yyyy-MM-dd''T''HH:mm:ss.SSSSXXX');
    ts4231(i).clock = x{2};
    ts4231(i).XYZ = [x{3}, x{4}, x{5}];
    fclose(fid);  
end

%% Cleanup temp
clearvars -except link  rhd2164 bno055 ts4231