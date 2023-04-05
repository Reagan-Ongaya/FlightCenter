const { environment } = require('@rails/webpacker')

// Add an entry point named "application"
environment.config.set('entry', { application: './app/javascript/packs/application.js' })

module.exports = environment
