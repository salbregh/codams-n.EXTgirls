import math

# Each 24 hours, a truck driver has to rest for 11 hours uninteruptedly
# That means there is a maximum driving slot of 13 hours per day
# 2 short stops of 45 minutes per day are necessary, since 4,5 hours driving without stopping is the maximum

# In total, there is 11,5 hours per day a truck can actually drive.
# Based on these rules, this algorithm calculates how many stops have to be made and after how many kilometers.

# Have a safe journey! :)

distance_input = input("Distance in kilometers: ")
speed_input = input("Average speed in km/h: ")

try:
	distance = int(distance_input)
except ValueError:
	print("This is not a valid number.")
try:
	speed = int(speed_input)
except ValueError:
	print("This is not a valid number.")


def drive(drive_time, hours_left, driven_hours):
	print('driving...')
	if hours_left < drive_time:
		driven_hours += hours_left
	else:
		driven_hours += drive_time
	print('Driven hours: ' + str(driven_hours) + '\n')
	return driven_hours

def stop(type_stop, stops, driven_hours, speed):
	if type_stop == 'short':
		# Make short stop
		stops += 1
		print('Stop ' + str(stops) + ': 45 minute break after ' + str(driven_hours * speed) +' kilometers')
		print('resting...\n')
	elif type_stop == 'long':
		# Make long stop
		stops += 1
		print('Stop ' + str(stops) + ': 11 hour break after ' + str(driven_hours * speed) +' kilometers')
		print('resting...\n')
	return stops


hours = distance / speed


print('Travel time in hours: ' + str(hours))
days = hours / 11.5
days = math.ceil(days)
print('\nYou need ' + str(days) + ' days for this trip\n\n')

day = 1
stops = 0
driven_hours = 0
hours_left = hours - driven_hours
while day <= days:
	print('Day ' + str(day))

	# Drive 4.5 hours (or less if destination has been reached)
	driven_hours = drive(4.5, hours_left, driven_hours)
	hours_left = hours - driven_hours

	# Check whether destination has been reached
	if driven_hours >= hours:
		break

	# Make short stop
	stops = stop('short', stops, driven_hours, speed)

	# Check whether destination has been reached
	if driven_hours >= hours:
		break

	# Drive 4.5 hours (or less if destination has been reached)
	driven_hours = drive(4.5, hours_left, driven_hours)
	hours_left = hours - driven_hours

	# Check whether destination has been reached
	if driven_hours >= hours:
		break

	# Make short stop
	stops = stop('short', stops, driven_hours, speed)

	# Drive 2.5 hours (or less if destination has been reached)
	driven_hours = drive(2.5, hours_left, driven_hours)
	hours_left = hours - driven_hours

	# Check whether destination has been reached
	if driven_hours >= hours:
		break

	# Make long stop
	stop('long', stops, driven_hours, speed)

	day += 1
	print('\n\n')