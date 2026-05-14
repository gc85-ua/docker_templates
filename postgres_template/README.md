# Postgresql 16 template

## docker compose file

The compose file uses init scripts from `init_pg_db/` directory to configure a sample database and populate it with sample data from `data/` directory

### Command

```bash
docker compose up -d
```

### Sample database
- host: `localhost`
- port: `5432`
- database: `analytics`
- user: `postgres`
- password: `password`

## Misc

The `opencode.json` file configures Opencode to connect to a read-only PostgreSQL MCP server, enabling natural-language querying against the sample database. For claude CLI users, use the `.claudecode.json` file.

### Requisites

- `npm` installed. See: https://nodejs.org/en/download
- `opencode` installed. See: https://opencode.ai/es/download
- Optional: `claude`. See: https://code.claude.com/docs/es/overview