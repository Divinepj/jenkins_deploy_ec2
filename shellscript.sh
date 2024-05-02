{
  "name": "John",
  "scripts": [
    {
      "name": "CheckNumber",
      "description": "Example script to check if a number is positive, negative, or zero",
      "code": [
        "# read -p \"Enter a number: \" num",
        "# if [ $num -gt 0 ]; then",
        "#     echo \"The number is positive.\"",
        "# elif [ $num -lt 0 ]; then",
        "#     echo \"The number is negative.\"",
        "# else",
        "#     echo \"The number is zero.\"",
        "# fi"
      ]
    },
    {
      "name": "PrintNumbers",
      "description": "Example script to print numbers from 1 to 5 using a for loop",
      "code": [
        "# for (( i=1; i<=5; i++ ))",
        "# do",
        "#     echo $i",
        "# done"
      ]
    },
    {
      "name": "ReadName",
      "description": "Example script to read a name from user input",
      "code": [
        "echo \"Enter your name or your nos:\"",
        "read name.."
      ]
    },
    {
      "name": "AppendToFile",
      "description": "Example script to append 'hello world' to index.txt file",
      "code": [
        "echo \"hello world\" >> index.txt"
      ]
    },
    {
      "name": "SearchFile",
      "description": "Example script to search for a pattern in index.txt file",
      "code": [
        "grep \"pattern\" < index.txt"
      ]
    },
    {
      "name": "SearchString",
      "description": "Example script to search for a pattern in a string",
      "code": [
        "echo \"hello world\" | grep \"pattern\""
      ]
    }
  ]
}
