pipeline{
  agent { label 'ubuntu' }
  stages{
    stage('--test--'){
      steps{
        echo 'conducting tests'
      }
    }
    stage('--build--'){
      steps{
            sh 'cd catkin_ws_rosrect_listener/build/rosrect-listener-agent/ && make run_tests_rosrect-listener-agent'
      }
    }

  }
}
