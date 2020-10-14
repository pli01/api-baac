module.exports = ({ env }) => ({
  defaultConnection: 'default',
  connections: {
    default: {
      connector: 'mongoose',
      settings: {
        client: env('DATABASE_CLIENT', 'mongo'),
        uri: env('DATABASE_URI', ''),
        database: env('DATABASE_NAME', 'bacc'),
      },
      options: {
        authenticationDatabase: env('AUTHENTICATION_DATABASE', null),
        ssl: env.bool('DATABASE_SSL', false),
      },
    },
  },
});
