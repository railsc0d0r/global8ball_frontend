`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map -> 

  @resource 'sections', ->
    @route 'new', path: 'sections/new/:path'
    return
  @resource 'section', path: 'sections/:section_id', ->
    @route 'upload-background'
    @route 'edit'
    @route 'delete'
    return
  @route 'login'
  @route 'signup'
  @route 'confirmation', path: 'confirmation/:confirmation_token'
  @route 'users', -> 
    @route 'new'
    return
  @resource 'user', path: 'users/:user_id', ->
    @route 'edit'
    @route 'delete'
    return
  @route 'employees', ->
    @route 'new'
    @resource 'employee', path: ':employee_id', ->
      @route 'edit'
      @route 'delete'
    return
  @route 'faq'
  @route 'about_us'
  @route 'the_game'
  @route 'terms_of_use'
  @route 'rules'
  @route 'partner'
  @route 'press'
  @route 'privacy'
  @route 'account'
  return

`export default Router`
