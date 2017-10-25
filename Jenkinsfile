node{
  def app
  stage('checkout'){
    checkout scm
  }
  stage('build'){
    app = docker.build('rvarg11/helloworld2')
  }
  stage('test'){
    app.inside{
      sh 'echo "Passed Test"'
    }
  }
  stage('push'){
    docker.withRegistry('https://registry.hub.docker.com', 'new-docker-hub-creds'){
    app.push("latest")
    app.push("${env.BUILD_NUMBER}")
  }
  }
}
