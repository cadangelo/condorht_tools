# This is a "normal" job.
universe = vanilla

# If any information about this submission is written
# as output to standard output or standard error,
# where should it be saved?
output = process.out
error = process.err

# Where to write a log of your jobs' statuses.
log = process.log

# All interactive compiling jobs (compiling MatLab, R, Python, etc.) 
# are pointed to our build machines
+IsBuildJob = true
requirements = (OpSysAndVer =?= "SL6") && ( IsBuildSlot == true )

# Indicate if/when files should be transfered
should_transfer_files = YES
when_to_transfer_output = ON_EXIT

# Indicate your tarball of compiling sources here, to be transfered
# to the build machine when your interactive session starts.
# Make sure to create a different tarball of the files you want
# transfered back to the submit node when you're done compiling.
executable = build_stack.sh
transfer_input_files = build_stack.sh

# We don't want email about our jobs. (If you do, let us know,
# there may be some additional configuration necessary.)
notification = never

# We should still request the amount of memory and disk we 
# anticipate needing for the compilation.  Change these values 
# if you believe your code will need more (or fewer) resources.
request_cpus = 1
request_memory = 1GB
request_disk = 500MB

queue
