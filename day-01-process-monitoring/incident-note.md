# High CPU Investigation

## Incident
A CPU-heavy test process was intentionally started to simulate a high CPU incident.

## Baseline
CPU and running processes were checked before starting the workload.

## Workload
A CPU-intensive `yes` process was started.

## Investigation
The following commands were used:

- `uptime`
- `ps aux --sort=-%cpu | head`
- `pgrep yes`
- `top`
- `ps -p PID -o pid,ppid,%cpu,%mem,stat,cmd`

## Evidence
The `yes` process appeared as a high-CPU process.

PID: [YOUR PID]

CPU Usage: [YOUR OBSERVED CPU%]

Command: `yes`

## Verification
The PID was verified using `pgrep` and `ps`.

## Root Cause
The intentionally started `yes` process continuously generated CPU workload, causing high CPU utilization.

## Resolution
The test process was terminated.

Command:

`pkill yes`

## Result
CPU usage returned toward the previous baseline.

## Conclusion
The high CPU process was identified using measurable evidence rather than guessing.
