-- AlterTable
ALTER TABLE "todo" ADD COLUMN     "userEmail" TEXT;

-- CreateIndex
CREATE INDEX "todo_userEmail_idx" ON "todo"("userEmail");

-- AddForeignKey
ALTER TABLE "todo" ADD CONSTRAINT "todo_userEmail_fkey" FOREIGN KEY ("userEmail") REFERENCES "user"("email") ON DELETE SET NULL ON UPDATE CASCADE;
