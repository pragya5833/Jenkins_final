// pipeline{
//     agent any
//     environment{
//         PASS = credentials('dockerlogin')
//     }
//     stages{
//         stage('Build'){
//             steps{
//                 sh '''
//                     ./jenkins/build/mvn.sh mvn -B -DskipTests clean package
//                     ./jenkins/build/build.sh
//                 '''
//             }
//         }
//         stage('Test'){
//             steps{
//                 sh './jenkins/tests/mvn.sh mvn test'
//             }

//         }
//         stage('Push'){
//             steps{
//                 sh './jenkins/push/push.sh'
//             }

//         }
//         stage('Deploy'){
//             steps{
//                 sh 'echo "deploying"'
//             }
//         }
//     }
// }