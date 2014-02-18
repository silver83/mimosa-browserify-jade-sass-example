mimosa-browserify-jade-example
=========================

Mimosa default project reworked for browserify. Requires mimosa v1.0.0-rc4 or higher.

This is a fork of mimosa-browserify-example that:
1. chooses jade as a templating engine on both client and server. integrates only the runtime.js part of jade on the client.
2. chooses sass (instead of stylus in the the forked origin)


Took a while to understand how to configure browserify and jade to work together, and the proper mimosa config for things to play along, but that's about it :)

When using this example :
1. clone the repo
2. in the cloned dir, run 'npm install'
3. start the server using 'mimosa watch --server'
4. go to your browser and on localhost:3000 and enjoy