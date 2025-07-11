pipeline {
    agent any

    environment {
        ENV = "${env.BRANCH_NAME}"
        TF_WORKDIR = "environments/${env.BRANCH_NAME}"
    }

    stages {
        stage("Checkout") {
            steps {
                git branch: "${env.BRANCH_NAME}", url: "https://github.com/guruprasath04-byte/devops-project-1-infrapipeline.git"
            }
        }

        stage("Terraform init") {
            steps {
                dir("${TF_WORKDIR}") {
                    sh 'terraform init'
                }
            }
        }

        stage("Terraform plan") {
            steps {
                dir("${TF_WORKDIR}") {
                    sh 'terraform plan -out=tfplan'
                    sh 'terraform show -no-color tfplan > tfplan.txt'
                    sh 'cat tfplan.txt'
                }
            }
        }

        stage("Approval") {
            steps {
                script {
                    input message: "Approve the deployment to production?", ok: 'Deploy'
                }
            }
        }

        stage("Terraform apply") {
            steps {
                dir("${TF_WORKDIR}") {
                    sh 'terraform apply tfplan'
                }
            }
        }
    }
}
