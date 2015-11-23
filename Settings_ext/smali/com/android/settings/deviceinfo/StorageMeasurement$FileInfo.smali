.class Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field final KY:J

.field final Tw:J

.field final xn:Ljava/lang/String;


# virtual methods
.method public a(Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;)I
    .locals 4

    .prologue
    .line 625
    if-eq p0, p1, :cond_0

    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->KY:J

    iget-wide v2, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->KY:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 626
    :goto_0
    return v0

    :cond_1
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->KY:J

    iget-wide v2, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->KY:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 612
    check-cast p1, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->a(Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->xn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->KY:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->Tw:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
