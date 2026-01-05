/*
  Warnings:

  - A unique constraint covering the columns `[tenantId,slug]` on the table `Product` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE "Tenant" ADD COLUMN     "landingConfig" JSONB,
ADD COLUMN     "metaDescription" VARCHAR(160),
ADD COLUMN     "metaTitle" VARCHAR(60),
ADD COLUMN     "socialLinks" JSONB;

-- CreateIndex
CREATE INDEX "Product_tenantId_slug_idx" ON "Product"("tenantId", "slug");

-- CreateIndex
CREATE UNIQUE INDEX "Product_tenantId_slug_key" ON "Product"("tenantId", "slug");
