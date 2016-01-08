# Ruboty::Jenkins

Kick build job in Jenkins via Ruboty.

## Install

```ruby
# Gemfile
gem "ruboty-jenkins"
```

## Usage

```
@ruboty build <repo>[/<branch>] [<platform>] [<env>] [<editor_version>] - Kick build job in Jenkins
```

## ENV

```
JENKINS_URL       - Jenkins URL
JENKINS_USER_ID   - Jenkins User ID
JENKINS_API_TOKEN - Jenkins API Token
```
