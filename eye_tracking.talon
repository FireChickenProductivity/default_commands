# Eye tracking
-
calibrate eye tracking: 
    # help: Run the eye tracking calibration
    tracking.calibrate()
start eye tracking: 
    # help: Turn on eye tracking. This requires a supported eye tracking device. See the Talon documentation for details.
    tracking.control_toggle(true)
stop eye tracking: 
    # help: Turn off eye tracking.
    tracking.control_toggle(false)