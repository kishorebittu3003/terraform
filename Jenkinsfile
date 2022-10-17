pipeline{
    agent any
    stages{
        stage ('clonning bittu github'){
            steps{
                git url:'https://github.com/kishorebittu3003/terraform.git',
                branch 'subnets'
            }
        }
        stage ('terraform manual steps'){
            steps{
                sh 'terraform init'
                sh 'terraform validate'
                sh 'terraform apply -var-file "aws.tfvars" -auto-approve'
            }
        }
    }
}
