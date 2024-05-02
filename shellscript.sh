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
                            name: "install apache2",
                            type: "command",
                            command: "apt install apache2"
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
