# Drupal + Tome

## Getting started

- Build the environment with `lando start`
  - Installs dependencies
  - Configures `settings.php`
- Install Drupal from existing configuration with `lando drush site:install --existing-config`

## Working with Tome

### Importing from existing config

Run `lando drush tome:import`.

### Exporting updated config

Run `lando drush tome:export`.

### Exporting content

Run `lando drush tome:static`.  This will write content as JSON in the `/content` directory and static HTML in the `/html` directory.  

### Publishing content to GitHub Pages

Run `lando composer gh-pages`.  This will kick off the Composer script at `/scripts/gh-pages.sh` which will publish the static content here to another repo.
