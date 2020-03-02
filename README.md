# Woodriver Energy Code Challenge
Hello and welcome! The task at hand is to implement a small React web application that consumes "articles", displays them, and can update them. You'll be fetching sorted JSON data directly from our API.

## Requirements
1. As a user I should be able to open the application and view articles
2. As a user I should be able to see all of associated data (fields) on a displayed `Article` except for `id` and `user_id`
3. As a user I should have the ability to `update` articles

_Note:_ This is a front-end & design focused challenge. In other words, we are giving you __no__ visual requirements! Excited to see what  you come up with.

## Bonus
- Use SASS or LESS to pre-compile your CSS
- Add some CSS animation with transitions
- Utilize other GraphQL endpoints to expand the requested feature set
- Use redux
- Deploy your challenge somewhere live

## Things to keep in mind❗
* Features are less important than code quality. Put more focus on code quality and less on speed and number of features implemented.
* Your code will be evaluated based on: code structure, programming best practices, legibility (and not number of features implemented or speed).
* The git commit history (and git commit messages) will be also evaluated.
* Do not forget to include a few details about your code challenge in the README (e.g explain choice of libraries, how to run it ...)
* Please do not spend more than 4-5 hours on this max! Again you are not being evaluated on speed/number of features.

## Acessing the code challenge API
- If you aren't familiar with GraphQL, here is a link to their org: https://graphql.org where you can find docs, the spec, links to example implementations, etc. As you will see when exploring the API, it has a powerful type system and great schema introspection.
- To explore the API docs:
    1. Go to our live [GraphQL IDE](https://wre-code-challenge.herokuapp.com/graphiql)
    2. Click on the `<Docs` button in the top right hand corner
    3. From here you can explore the `Query` and the  `Mutation`.
        - These are the root operations in our schema.
        - Think about `Query` as a collection of `Read` queries
        - Think about `Mutation` as a collection of `Write` queries
- Publically facing GraphQL API endpoint for you to consume: `https://wre-code-challenge.herokuapp.com/graphql`

## Technologies to use
We use React, but choose whichever front-end framework/technology below that you're most familiar with:
* React
* Vue
* Angular

## How to submit the challenge solution? 
Now after you finished your app and we assume that you already pushed it to your GitHub account, if so please follow the instructions below:

1. Set the Repo privacy to public:
    - If the repo is sensitive in any fashion and you're not comfortable sharing it publicly please give access to this username: [apjames93](https://github.com/apjames93).
    - If it's public go to the next step
2. Send the repo's link to this email: `alex.james@woodriverenergy.com`.