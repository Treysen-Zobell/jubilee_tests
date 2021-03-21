; Motor Dir Checks
M291 R"Motor Direction Checks" P"Walk through each motor to ensure it spins in the correct direction" S3

; XY1 (A)
M291 R"Motor A Check" P"Rear right motor should rotate clockwise for 6s after pressing OK" S3
G91 G1 X-30 H2 F300
M291 R"Motor A Check" P"If motor turned clockwise, press OK, otherwise, in config.g change S from 0->1 or 1->0 for X Axis Motor" S3

; XY2 (B)
M291 R"Motor B Check" P"Rear left motor should rotate clockwise for 6s after pressing OK" S3
G91 G1 Y-30 H2 F300
M291 R"Motor B Check" P"If motor turned clockwise, press OK, otherwise, in config.g change S from 0->1 or 1->0 for Y Axis Motor" S3

; Z
M291 R"Motor Z Check" P"All Z motors should rotate clockwise for 6s after pressing OK" S3
G91 G1 Z-10 H2 F100
M291 R"Motor Z Check" P"For any motor that turned counterclockwise, in config.g change S from 0->1 or 1->0 for Z Motor" S3

; U
M291 R"Motor U Check" P"Rotate U motor to minimum, motor should rotate COUNTERclockwise for 6s after pressing OK" S3
G91 G1 U30 H2 F300
M291 R"Motor U Check" P"If motor turned COUNTERclockwise, press OK, otherwise, in config.g change S from 0->1 or 1->0 for Toolchanger Actuator" S3

M291 R"Motor Direction Checks" P"All motor direction checks passed!" S3