-- CreateEnum
CREATE TYPE "Todostatus" AS ENUM ('DONE', 'ACTIVE');

-- CreateTable
CREATE TABLE "todo" (
    "id" SERIAL NOT NULL,
    "task" TEXT NOT NULL,
    "description" TEXT,
    "status" "Todostatus" NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "todo_pkey" PRIMARY KEY ("id")
);
