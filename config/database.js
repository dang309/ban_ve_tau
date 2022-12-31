module.exports = ({ env }) => ({
  connection: {
    client: "mysql",
    connection: {
      host: env("DATABASE_HOST", "34.124.224.3"),
      port: env.int("DATABASE_PORT", 3306),
      database: env("DATABASE_NAME", "BANVETAUTRUCTUYEN"),
      user: env("DATABASE_USERNAME", "root"),
      password: env("DATABASE_PASSWORD", "TerMiNaTor_309"),
    },
  },
});
