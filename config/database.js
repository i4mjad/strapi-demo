module.exports = ({ env }) => ({
  connection: {
    client: 'postgres',
    connection: {
      host: env('DATABASE_HOST', 'postgres'),
      port: env.int('DATABASE_PORT', 5432),
      database: env('DATABASE_NAME', 'strapi'),
      user: env('DATABASE_USERNAME', 'strapi_user'),
      password: env('DATABASE_PASSWORD', 'strapi_password'),
      ssl: false,
    },
    debug: false,
  },
});
