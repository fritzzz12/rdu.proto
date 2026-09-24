-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_ChecklistItem" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "phaseId" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT,
    "section" TEXT,
    "isRequired" BOOLEAN NOT NULL DEFAULT true,
    "requiresFile" BOOLEAN NOT NULL DEFAULT true,
    "sequence" INTEGER NOT NULL,
    CONSTRAINT "ChecklistItem_phaseId_fkey" FOREIGN KEY ("phaseId") REFERENCES "Phase" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO "new_ChecklistItem" ("description", "id", "isRequired", "name", "phaseId", "sequence") SELECT "description", "id", "isRequired", "name", "phaseId", "sequence" FROM "ChecklistItem";
DROP TABLE "ChecklistItem";
ALTER TABLE "new_ChecklistItem" RENAME TO "ChecklistItem";
CREATE INDEX "ChecklistItem_phaseId_idx" ON "ChecklistItem"("phaseId");
CREATE UNIQUE INDEX "ChecklistItem_phaseId_sequence_key" ON "ChecklistItem"("phaseId", "sequence");
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
