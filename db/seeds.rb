# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Task.delete_all

Task.create(title: '<b>Instructions: Read Carefully!</b>', complete: false, archived: false, description: Redcarpet::Markdown.new(Redcarpet::Render::HTML).render(IO.read('tasklist.md')))

Task.create(title: '<code>[A]</code> Add complete support', description: 'Currently, there is no way for a user to complete a task. Make clicking the check-box complete the task asynchronously.', complete: false, archived: false)
Task.create(title: '<code>[A]</code> Add archive support', description: 'Currently, there is no way for a user to archive a task. Make clicking the archive button archive the task (does not have to be asynchronous).', complete: false, archived: false)

Task.create(title: '<code>[B]</code> Style completed tasks', description: 'Tasks even when completed are shown.  Style the completed tasks such that it is instantly evident that they are completed.', complete: false, archived: false)
Task.create(title: '<code>[B]</code> Center \'Archived Tasks\' button', description: 'The \'View Archived Tasks\' is currently not centered in the <code>.panel-heading</code> div. Update styles as needed to perfectly center the button vertically in the heading div.', complete: false, archived: false)
Task.create(title: '<code>[B]</code> Style buttons', description: 'The buttons to the right of the task table are a bit jumbled.  Update styles so that they are on the same line and pleasantly spaced.', complete: false, archived: false)
Task.create(title: '<code>[B]</code> Fix issue where edit view shows HTML as TEXT', description: 'When editing a task, the task title shows HTML.  Update the view to render the HTML as HTML instead of TEXT.', complete: false, archived: false)

Task.create(title: '<code>[C]</code> Update database defaults for complete and archived', description: 'Currently, the <code>complete</code> and <code>archived</code> task attributes have no default.  Update the database such that complete and archived default to false and disallow null values.', complete: false, archived: false)
Task.create(title: '<code>[C]</code> Fix issues with task searching', description: 'The task search feature doesn\'t operate properly. Figure out why and fix it if possible.', complete: false, archived: false)
Task.create(title: '<code>[C]</code> Add multi-user support', description: '<b>This task is only asking for the appropriate models and migrations.  No View or Controller code modification is necessary.</b> Add a <code>User</code> model and update the <code>Task</code> model so that a <code>User</code> can have many (0-N) <code>Tasks</code> associated.', complete: false, archived: false)

Task.create(title: '<code>[D]</code> Add Twitter integration', description: 'Add API support for Twitter.  Have it post the title as the tweet body when a task is completed.<br/><br/>e.g.,<code>\'Add complete support\' was marked complete.</code><br/><br/>Use environment variables to store the required Twitter certificates and user information.', complete: false, archived: false)
Task.create(title: '<code>[D]</code> Add ListWise integration', description: '<a href="http://www.listwisehq.com/support/support_detail.php?cat=API+Docs&title=Making+an+API+Call">ListWise</a> is an email cleaning service with a very straightforward API.  Write a Ruby <code>Module</code> to check a given email against their <code>quick-clean</code> service. <br/><br/>Use environment variables to store the required keys and user information.', complete: false, archived: false)
Task.create(title: '<code>[D]</code> Add Google Maps integration', description: '<a href="/maps">This page (/maps)</a> is currently blank.  Update the View and Javascript/CoffeeScript files as necessary to display the listed GPS coordinates on a map with "visited" coordinates in <b><font color="red">red</font></b>, "revisit needed" in <b><font color="orange">orange</font></b>, and "never visited" in <b><font color="green">green</font></b>.', complete: false, archived: false)

Task.create(title: '<code>[E]</code> Code analysis: <code>Task</code>', description: 'The <code>Task</code> model has several autogenerated methods.  What are they and what do they do?<br/><br/>Put your answers under the appropriate question in <a href="/readme">the \'Section E\' Markdown Document (./section_E.md)</a>.', complete: false, archived: false)
Task.create(title: '<code>[E]</code> Server config: <code>RabbitMQ</code>', description: 'See <a href="/readme">the \'Section E\' Markdown Document (./section_E.md)</a> for details.', complete: false, archived: false)
Task.create(title: '<code>[E]</code> Testing: <code>Docs Controller</code>', description: 'Write a simple set of controllers tests for the Docs controller.', complete: false, archived: false)
Task.create(title: '<code>[E]</code> Code Review: <code>Docs Controller</code>', description: 'Do a code review on the Docs controller and its associated views, tests, and routes.<br/><br/>Place comments on aspects infront of code that you would question or address in a code review. Start each review comment with <code>### REVIEW: [your comment here]</code> to make it easy to find.  Be yourself!  This question has only shades of grey: there is no <b>right</b> answer. <a href="/readme">(See the \'Section E\' Markdown Document [./section_E.md] for more details.)</a>', complete: false, archived: false)

Task.create(title: 'Submit Your Answers!', complete: false, archived: false, description: <<-EOL
Woot.  You\'re done.  To submit your answers, create a free public account on Github or Bitbucket, push your changes to a public repository, and email the repository\'s HTTP URL to <a href="mailto:terry@prospectwise.com">terry@prospectwise.com</a>.
<br/>
<br/>
<b>DO NOT ISSUE A PULL REQUEST</b> or <b>FORK</b> this repository.  Other people will then be able to use your answers.
EOL
)
