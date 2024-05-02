pipeline {
    agent any

    stages {
        stage('Execute Actions') {
            steps {
                script {
                    def actions = [
                        [
                            name: "Create Folder",
                            type: "command",
                            command: "mkdir -p kevin"
                        ],
                        [
                            name: "Create Text File",
                            type: "command",
                            command: "touch -p kevin/webhook.txt"
                        ],
                        [   
                            name: "install apache2",
                            type: "command",
                            command: "sudo apt install apache2"
                        ]
                    ]

                    for (action in actions) {
                        echo "Executing action: ${action.name}"
                        sh "${action.command}"
                    }
                }
            }
        }
    }
}
