# Netlify Deployment

1. In Netlify, choose Add new project, then Import an existing project.
2. Select GitHub and choose HostX0/My.
3. Use the main branch.
4. Keep the settings detected from netlify.toml:
   - Build command: bash build.sh
   - Publish directory: dist
5. Deploy the site.

The pilot does not require environment variables. The build verifies the deployment archive before publishing it.
