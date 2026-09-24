# Research and Development Unit

Tracks faculty and professor research from submission through completion. Department Heads review each phase against the documentary checklist. A researcher cannot move to the next phase, or start another study, while the current phase is incomplete.

## Run locally

```bash
npm install
npx prisma migrate dev --name init
npm run db:seed
npm run dev
```

Open http://localhost:3000.

Copy `.env.example` to `.env` if the environment file is missing. Set `AUTH_SECRET` to a long random string. Leave `SMTP_HOST` empty to keep email notices in the system, or set the SMTP values to send them.

## Sample accounts

Every sample account uses the password `Rdu-Admin-2026`.

| Role | Email |
| --- | --- |
| Super Admin | superadmin@rdu.local |
| Department Head, College of Technology | head.technology@rdu.local |
| Researcher | maria.santos@rdu.local |
| Researcher | juan.reyes@rdu.local |

The seven college departments from the system brief are seeded, along with one starter program in each department. The two documentary checklists use the official research phases and the personally-funded documentary requirements.

## Documents

The checklist line items are not prescribed by the modules brief. Change them before they are used by a Research Project. Uploaded PDFs are stored in `data/uploads` and are served only to signed-in users who may view that Research Project.
