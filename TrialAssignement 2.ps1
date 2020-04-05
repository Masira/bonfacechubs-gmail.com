#Questions for this assignment
#1. Find, second largest, second smallest element from below array. Also find the middle element (by position)



$array = (200,343,4,23,42,3,42,99,100)

#Second Largest Element

$array|Sort-Object -Descending| select -First 1 -Skip 1

#Largest element
$array|Sort-Object -Descending| select -First 1

#second smallest element
$array|Sort-Object|select -First 1 -Skip 1

#Smallest element

$array|Sort-Object|select -First 1


#the middle element (by position)

$array[$array.Count/2]
#2. Use below array and perform different operations

$my_courses = @("course1 # Learning Task Automations # Vijay            ", 
                             "course2 # Advanced Scripting & tool making #  Vijay ", 
                              "course3 # AD Management using PowerShell /In progress # Vijay ")



#1.)  Select all array elements which contains word "task"
$my_courses -match "task"

#2.) Sort the array in both descending and ascending order
$my_courses | Sort-Object

$my_courses | Sort-Object -Descending

#3.) Write all array elements which contains word "task"  to text file

$my_courses -match "task" | Out-File C:\Users\v-bomasi\Downloads\original\Section2\ZTask.txt


#4.) Process the array and print each element of array into a statement:

foreach ($course in $my_courses)

{

    $courseID = $course.Split("#").trim()[0]

    $courseName = $course.Split("#").trim()[1]

    $courseAuthor = $course.Split("#").trim()[2]



    Write-Output "Hi, You are invited to join me in $($courseName.ToUpper()), whose author is $courseAuthor."

}

