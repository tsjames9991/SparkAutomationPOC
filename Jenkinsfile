pipeline {
    agent any
    environment {
        CI = 'true'
    }
    stages {
        stage('Fetching Dependencies') {
            steps {
                sh 'chmod +x ./scripts/setup.sh'
                sh 'chmod +x ./scripts/submit.sh'
		sh './scripts/setup.sh'
            }
        }
        stage('Spark-Submit') {
            steps {
		echo "Spark Submit on $EnvID"
		sh './scripts/setup.sh'
            }
        }
    }
}
