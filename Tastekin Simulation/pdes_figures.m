%% Export Figures for PDES paper

%% Set Defaults

% get(groot,'default')  % View all defaults
% close all
co = 0.25*ones(7,3);
set(0, 'defaultlinelinewidth', 2);
set(0,'defaultAxesColorOrder', co);
set(0, 'defaultFigurePaperType', 'A5');
set(0, 'defaultFigurePaperOrientation', 'landscape');
set(0, 'defaultFigurePaperPositionMode', 'auto');
clear co

%% Voltage source comparison - bode

figure(12);

[mag, ph, w] = bode(G_VS, {1e3,1e5});

subplot(2,1,1);
semilogx(squeeze(w), 20*log10(squeeze(mag))); grid on
y_max = 1.1 * max(20*log10(squeeze(mag)));
y_min = 0.9 * min(20*log10(squeeze(mag)));
ylim([y_min, y_max]);
ylabel('Magnitude (dB)','FontSize',14);

subplot(2,1,2);
semilogx(squeeze(w), squeeze(ph)); grid on
y_diff = max(squeeze(ph)) - min(squeeze(ph));
y_max = max(squeeze(ph)) + 0.1 * y_diff;
y_min = min(squeeze(ph)) - 0.1 * y_diff;
ylim([y_min, y_max]);
ylabel('Phase (Deg)','FontSize',14);
xlabel('Frequency (rad/s)','FontSize',14);

[mag, ph, w] = bode(G_VS_norm, {1e3,1e5});

subplot(2,1,1); hold on
semilogx(squeeze(w), 20*log10(squeeze(mag)), ':'); grid on
ylabel('Magnitude (dB)','FontSize',14);
legend('Modified', 'Standard');

subplot(2,1,2); hold on
semilogx(squeeze(w), squeeze(ph), ':'); grid on
ylabel('Phase (Deg)','FontSize',14);
xlabel('Frequency (rad/s)','FontSize',14);

print -dpdf Documentation/figures/matlab_generated/vs_comparison.pdf

%% Current source comparison - bode

figure(13);

[mag, ph, w] = bode(G_CS, {1e3, 1e7});

subplot(2,1,1);
semilogx(squeeze(w), 20*log10(squeeze(mag)));

subplot(2,1,2);
semilogx(squeeze(w), squeeze(ph));

[mag, ph, w] = bode(G_CS_norm, {1e3, 1e7});

subplot(2,1,1); hold on
semilogx(squeeze(w), 20*log10(squeeze(mag)), ':'); grid on
axis([1e3 1e7 -80 50]);
ylabel('Magnitude (dB)','FontSize',14);
legend('Modified', 'Standard', 'Location', 'southwest');

subplot(2,1,2); hold on
semilogx(squeeze(w), squeeze(ph), ':'); grid on
axis([1e3 1e7 -190 10]);
ylabel('Phase (Deg)','FontSize',14);
xlabel('Frequency (rad/s)','FontSize',14);

print -dpdf Documentation/figures/matlab_generated/cs_comparison.pdf

%% Load voltage and current

figure(14);

time = logsout.getElement('LoadVoltage').Values.Time*1e3;
load_voltage = logsout.getElement('LoadVoltage').Values.Data;
load_current = logsout.getElement('LoadCurrent').Values.Data;

subplot(2,1,1);
plot(time, load_voltage); grid on
xlim([time(end) - 3 * T_mach *1e3 time(end)]);
ylabel('Voltage (V)', 'FontSize', 14)

subplot(2,1,2);
plot(time, load_current); grid on
xlim([time(end) - 3 * T_mach *1e3 time(end)]);
ylim([0 11])
ylabel('Current (A)', 'FontSize', 14)
xlabel('Time (ms)', 'FontSize', 14)
print -dpdf Documentation/figures/matlab_generated/load_pulsed.pdf

%% Imag part of poles of Voltage source vs capacitance

figure(15);

plot(c2_range, imag(pd_vs_c2)); grid on
xlabel('C', 'FontSize', 14);
ylabel('j\omega', 'FontSize', 14);
% title('Varation of imiganiary part of poles wrt Capacitance');
print -dpdf Documentation/figures/matlab_generated/pd_imag_vs_c2.pdf

%% Real part of poles of Voltage source vs capacitance

figure(16);

plot(c2_range, real(pd_vs_c2)); grid on
xlabel('C', 'FontSize', 14);
ylabel('\sigma', 'FontSize', 14);
% title('Varation of real part of poles wrt Capacitance');
print -dpdf Documentation/figures/matlab_generated/pd_real_vs_c2.pdf

%% Imag part of poles of Voltage source vs inductance

figure(17);

plot(l2_range, imag(pd_vs_l2)); grid on
xlabel('L', 'FontSize', 14);
ylabel('j\omega', 'FontSize', 14);
% title('Varation of imaginary part of poles wrt Inductance');
print -dpdf Documentation/figures/matlab_generated/pd_imag_vs_l2.pdf

%% Real part of poles of Voltage source vs inductance

figure(18);

plot(l2_range, real(pd_vs_l2)); grid on
axis([-0.1e-3 1e-3 -5e4 0.5e4]);
xlabel('L', 'FontSize', 14);
ylabel('\sigma', 'FontSize', 14);
% title('Varation of real part of poles wrt Inductance');
print -dpdf Documentation/figures/matlab_generated/pd_real_vs_l2.pdf

%% Poles of Current source vs inductance

figure(19);

plot(l1_range, real(pd_cs_l1)); grid on
axis([-0.2e-3, 2.2e-3, -11e5, 1e5]);
xlabel('L', 'FontSize', 14);
ylabel('\sigma', 'FontSize', 14);
% title('Varation of poles wrt Inductance of Current Source');
print -dpdf Documentation/figures/matlab_generated/pd_cs_l1.pdf

%% Voltage source compensator bode

figure(20);

w_start = 1e1; w_end = 1e7;
[mag, ph, w] = bode(G_VS, {w_start, w_end});

subplot(2,1,1);
semilogx(squeeze(w), 20*log10(squeeze(mag)));

subplot(2,1,2);
semilogx(squeeze(w), squeeze(ph));

[mag, ph, w] = bode(Gc_VS * G_VS,{w_start, w_end});

subplot(2,1,1); hold on
semilogx(squeeze(w), 20*log10(squeeze(mag)), ':');
ylim([-200, 100]);
ylabel('Magnitude (dB)','FontSize',14); grid on
legend('Normal', 'Compensated', 'Location', 'southwest');

subplot(2,1,2); hold on
semilogx(squeeze(w), squeeze(ph), ':');
ylim([-190, 30]);
ylabel('Phase (Deg)','FontSize',14);
xlabel('Frequency (rad/s)','FontSize',14);

print -dpdf Documentation/figures/matlab_generated/vs_compesator_bode.pdf

%% Current source compensator bode

figure(21);

w_start = 1e2; w_end = 1e9;
[mag, ph, w] = bode(G_CS, {w_start, w_end});

subplot(2,1,1);
semilogx(squeeze(w), 20*log10(squeeze(mag))); grid on
axis([w_start, w_end, -100, 50]);
ylabel('Magnitude (dB)','FontSize',14);

subplot(2,1,2);
semilogx(squeeze(w), squeeze(ph)); grid on
axis([w_start, w_end, -110, 10]);
ylabel('Phase (Deg)','FontSize',14);
xlabel('Frequency (rad/s)','FontSize',14);

[mag, ph, w] = bode(Gc_CS * G_CS,{w_start, w_end});

subplot(2,1,1); hold on
semilogx(squeeze(w), 20*log10(squeeze(mag)), ':');
axis([w_start, w_end, -100, 50]);
ylabel('Magnitude (dB)','FontSize',14); grid on
legend('Normal', 'Compensated', 'Location', 'southwest');

subplot(2,1,2); hold on
semilogx(squeeze(w), squeeze(ph), ':');
axis([w_start, w_end, -145, 10]);
ylabel('Phase (Deg)','FontSize',14);
xlabel('Frequency (rad/s)','FontSize',14);

print -dpdf Documentation/figures/matlab_generated/cs_compesator_bode.pdf

%% L1 reference and power

figure(22);

time = logsout.getElement('V_ref').Values.Time*1e3;

subplot(3, 1, 1);
plot(time, logsout.getElement('V_ref').Values.Data);
subplot(3, 1, 2); hold on
plot(time, logsout.getElement('L1Voltage').Values.Data);
subplot(3, 1, 3); hold on
plot(time, logsout.getElement('L1Current').Values.Data);

pulsedRefMode = 1;
sim('powersupply.slx');
time = logsout.getElement('V_ref').Values.Time*1e3;

subplot(3, 1, 1); hold on
plot(time, logsout.getElement('V_ref').Values.Data, ':'); grid on
xlim([time(end) - 3 * T_mach *1e3 time(end)]);
ylim([0, 12]);
ylabel('VS Reference (V)');
legend('Constant Reference', 'Pulsed Reference');

subplot(3, 1, 2); hold on
plot(time, logsout.getElement('L1Voltage').Values.Data, ':'); grid on
xlim([time(end) - 3 * T_mach *1e3 time(end)]);
ylim([-100, 130]);
ylabel('L1 Voltage (V)');

subplot(3, 1, 3); hold on
plot(time, logsout.getElement('L1Current').Values.Data, ':'); grid on
xlim([time(end) - 3 * T_mach *1e3 time(end)]);
ylim([0, 12]);
ylabel('L1 Current (A)');
xlabel('Time (ms)')

print -dpdf Documentation/figures/matlab_generated/power_comparison.pdf

pulsedRefMode = 0;

%% Clear Defaults

set(0, 'defaultlinelinewidth', 'remove');
set(0,'defaultAxesColorOrder', 'remove');
set(0, 'defaultFigurePaperType', 'remove');
set(0, 'defaultFigurePaperType', 'A5');
set(0, 'defaultFigurePaperOrientation', 'remove');
set(0, 'defaultFigurePaperPositionMode', 'remove');

%% END