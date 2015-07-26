

# Getting and Cleaning Data Project (Code Book)

## Variable names

 [1] "Subject.Id"                                          
 [2] "Activity.Name"                                       
 [3] "Time.Body.Accelerometer.Mean.X"                      
 [4] "Time.Body.Accelerometer.Mean.Y"                      
 [5] "Time.Body.Accelerometer.Mean.Z"                      
 [6] "Time.Body.Accelerometer.Std.X"                       
 [7] "Time.Body.Accelerometer.Std.Y"                       
 [8] "Time.Body.Accelerometer.Std.Z"                       
 [9] "Time.Gravity.Accelerometer.Mean.X"                   
[10] "Time.Gravity.Accelerometer.Mean.Y"                   
[11] "Time.Gravity.Accelerometer.Mean.Z"                   
[12] "Time.Gravity.Accelerometer.Std.X"                    
[13] "Time.Gravity.Accelerometer.Std.Y"                    
[14] "Time.Gravity.Accelerometer.Std.Z"                    
[15] "Time.Body.Accelerometer.Jerk.Mean.X"                 
[16] "Time.Body.Accelerometer.Jerk.Mean.Y"                 
[17] "Time.Body.Accelerometer.Jerk.Mean.Z"                 
[18] "Time.Body.Accelerometer.Jerk.Std.X"                  
[19] "Time.Body.Accelerometer.Jerk.Std.Y"                  
[20] "Time.Body.Accelerometer.Jerk.Std.Z"                  
[21] "Time.Body.Gyroscope.Mean.X"                          
[22] "Time.Body.Gyroscope.Mean.Y"                          
[23] "Time.Body.Gyroscope.Mean.Z"                          
[24] "Time.Body.Gyroscope.Std.X"                           
[25] "Time.Body.Gyroscope.Std.Y"                           
[26] "Time.Body.Gyroscope.Std.Z"                           
[27] "Time.Body.Gyroscope.Jerk.Mean.X"                     
[28] "Time.Body.Gyroscope.Jerk.Mean.Y"                     
[29] "Time.Body.Gyroscope.Jerk.Mean.Z"                     
[30] "Time.Body.Gyroscope.Jerk.Std.X"                      
[31] "Time.Body.Gyroscope.Jerk.Std.Y"                      
[32] "Time.Body.Gyroscope.Jerk.Std.Z"                      
[33] "Time.Body.Accelerometer.Magnitude.Mean"              
[34] "Time.Body.Accelerometer.Magnitude.Std"               
[35] "Time.Gravity.Accelerometer.Magnitude.Mean"           
[36] "Time.Gravity.Accelerometer.Magnitude.Std"            
[37] "Time.Body.Accelerometer.Jerk.Magnitude.Mean"         
[38] "Time.Body.Accelerometer.Jerk.Magnitude.Std"          
[39] "Time.Body.Gyroscope.Magnitude.Mean"                  
[40] "Time.Body.Gyroscope.Magnitude.Std"                   
[41] "Time.Body.Gyroscope.Jerk.Magnitude.Mean"             
[42] "Time.Body.Gyroscope.Jerk.Magnitude.Std"              
[43] "Frequency.Body.Accelerometer.Mean.X"                 
[44] "Frequency.Body.Accelerometer.Mean.Y"                 
[45] "Frequency.Body.Accelerometer.Mean.Z"                 
[46] "Frequency.Body.Accelerometer.Std.X"                  
[47] "Frequency.Body.Accelerometer.Std.Y"                  
[48] "Frequency.Body.Accelerometer.Std.Z"                  
[49] "Frequency.Body.Accelerometer.Jerk.Mean.X"            
[50] "Frequency.Body.Accelerometer.Jerk.Mean.Y"            
[51] "Frequency.Body.Accelerometer.Jerk.Mean.Z"            
[52] "Frequency.Body.Accelerometer.Jerk.Std.X"             
[53] "Frequency.Body.Accelerometer.Jerk.Std.Y"             
[54] "Frequency.Body.Accelerometer.Jerk.Std.Z"             
[55] "Frequency.Body.Gyroscope.Mean.X"                     
[56] "Frequency.Body.Gyroscope.Mean.Y"                     
[57] "Frequency.Body.Gyroscope.Mean.Z"                     
[58] "Frequency.Body.Gyroscope.Std.X"                      
[59] "Frequency.Body.Gyroscope.Std.Y"                      
[60] "Frequency.Body.Gyroscope.Std.Z"                      
[61] "Frequency.Body.Accelerometer.Magnitude.Mean"         
[62] "Frequency.Body.Accelerometer.Magnitude.Std"          
[63] "Frequency.BodyBody.Accelerometer.Jerk.Magnitude.Mean"         
  [64] "Frequency.BodyBody.Accelerometer.Jerk.Magnitude.Std"          
  [65] "Frequency.BodyBody.Gyroscope.Magnitude.Mean"         
[66] "Frequency.BodyBody.Gyroscope.Magnitude.Std"          
[67] "Frequency.BodyBody.Gyroscope.Jerk.Magnitude.Mean"    
[68] "Frequency.BodyBody.Gyroscope.Jerk.Magnitude.Std"   

## Values of Variables

### Subject.Id
    Class: Integer

   1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30
   

### Activity.Name
    Class: Factor
   
   LAYING 
   SITTING  
   STANDING  
   WALKING  
   WALKING_DOWNSTAIRS  
   WALKING_UPSTAIRS
   

### Features - Measurements

All other variables in this dataset are Features - measurements. They are all numeric variables

Only the mean and standard deviations for each type of measurement are recorded here. Means are identified with "Mean" in the variable name, and Standard deviations are identified with "Std" in the variable name.

The "Time" before each feature means the time domain, and the "Frequency" means that is is a fast forier transform of the data(fft) into the frequency domain.

