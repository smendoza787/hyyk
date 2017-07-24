# Specifications for the Rails with jQuery Assessment

Specs:
- [x] Use jQuery for implementing new requirements
      - Used JQuery to render all dynamic data through AJAX requests
- [x] Include a show resource rendered using jQuery and an Active Model Serialization JSON backend.
      - Each trail/show page has navigation buttons to make $.get calls to a trail/show resource and renders them on the page with JQuery
- [x] Include an index resource rendered using jQuery and an Active Model Serialization JSON backend.
      - Rendered index of Users under each Trail on trail/index page
- [x] Include at least one has_many relationship in information rendered via JSON and appended to the DOM.
      - Each trail has_many users and comments
- [x] Use your Rails API and a form to create a resource and render the response without a page refresh.
      - On each trail/show page there is a comment form at the bottom that posts to the trail/:id/comments endpoint and renders the comment to the comments section on the page
- [x] Translate JSON responses into js model objects.
      - for each request, JSON response is converted into a JavaScript Object
- [x] At least one of the js model objects must have at least one method added by your code to the prototype.
      - User JS object prototype has a method that displays the url for a users page, and has a method displayameOrEmail that will dispay one depending on whether that signed up on facebook or through the signup page

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
