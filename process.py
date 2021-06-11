log_file = open("um-server-01.txt")
# Always remember to open the file you're working with.

# def sales_reports(log_file):    #Function
#     for line in log_file:       #Starting "For" Loop
#         line = line.rstrip()    #Strip Any extra characters in 'Line'
#         day = line[0:3]         # setting 'day' equal to index 0 and 3 from array 'line'
#         if day == "Tue":        #If day is equal to string "Tue" then its printing 'line'
#             print(line)


# sales_reports(log_file)         #Running the function with 'log_file' as the argument


            
def sales_reports(log_file):
    for line in log_file:
        line = line.rstrip()
        day = line[0:3]
        if day == "Mon":
            print(line)


sales_reports(log_file)

                #Don't Forgot to Close the file hehehehe JK 