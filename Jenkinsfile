#!groovy

node {

  currentBuild.result = "SUCCESS"

  try {
    stage('Checkout repository') {
      checkout scm
    }

    stage('Prepare') {
      sh 'scripts/prepare.sh'
    }

    stage('Generate') {
      sh 'scripts/generate.sh'
    }

    stage('Archive') {
      archiveArtifacts artifacts: 'bugs-dashboard.html'
    }

    stage('Clean up') {
      step([$class: 'WsCleanup'])
    }
  }

  catch(err) {
    currentBuild.result = "FAILURE"
    throw err
  }
}
