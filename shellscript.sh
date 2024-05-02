pipeline {
    agent any

    stages {
        stage('Execute Actions') {
            steps {
                script {
                    def actions = [
                        [
                            name: "Check Apache Status",
                            type: "command",
                            command: "systemctl status apache2"
                        ],
                        [
                            name: "Create Folder",
                            type: "command",
                            command: "mkdir kevin"
                        ],
                        [
                            name: "Create Text File",
                            type: "command",
                            command: "touch kevin/webhook.txt"
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
