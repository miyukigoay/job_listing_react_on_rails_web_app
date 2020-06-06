import React, { Component } from 'react';
import { Container, Header, Segment, Button, Icon, Dimmer, Loader, Divider } from 'semantic-ui-react';
import './App.css';


class App extends Component {
    constructor () {
      super()
      this.state = {}
      this.getJobs = this.getJobs.bind(this)
      this.getJob = this.getJob.bind(this)
    }
  
    componentDidMount () {
      this.getJobs()
    }
  
    fetch (endpoint) {
      return window.fetch(endpoint)
        .then(response => response.json())
        .catch(error => console.log(error))
    }
  
    getJobs () {
      this.fetch('/api/jobs')
        .then(jobs => {
            if (jobs) {
              this.setState({jobs: jobs})
              this.getJob(jobs[0].id) 
            }
            else {
                this.setState({jobs: []})
            }
        })
    }
  
    getJob (id) {
      this.fetch(`/api/jobs/${id}`)
        .then(job => this.setState({job: job}))
    }
  
    render () {
      let {jobs, job} = this.state
      return jobs
        ? <Container text>
          <Header as='h2' icon textAlign='center' color='teal'>
            <Icon name='unordered list' circular />
            <Header.Content>
              List of Jobs and Requirements
            </Header.Content>
          </Header>
          <Divider hidden section />
          {jobs && jobs.length
            ? <Button.Group color='teal' fluid widths={jobs.length}>
              {Object.keys(jobs).map((key) => {
                return <Button active={job && job.id === jobs[key].id} fluid key={key} onClick={() => this.getJob(jobs[key].id)}>
                  {jobs[key].title}
                </Button>
              })}
            </Button.Group>
            : <Container textAlign='center'>No jobs found.</Container>
          }
          <Divider section />
          {job &&
            <Container>
              <Header as='h2'>{job.title}</Header>
              {job.company && <p>{job.company}</p>}
              {job.description && <p>{job.description}</p>}
              <div>
                  <h3>Job Requirements</h3>
              {job.requirements &&
                <Segment.Group>
                  {job.requirements.map((requirement, i) => <Segment key={i}>{requirement.description}</Segment>)}
                </Segment.Group>
              }
              </div>
              <div>
                <h3>Job Responsibilities</h3>
                {job.responsibilities && <p>{job.responsibilities}</p>}
              </div>
              <div>
                <h3>Company Culture</h3>
                {job.culture && <p>{job.culture}</p>}
              </div>
            </Container>
          }
        </Container>
        : <Container text>
          <Dimmer active inverted>
            <Loader content='Loading' />
          </Dimmer>
        </Container>
    }
  }
  
  export default App