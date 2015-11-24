.class Lcom/android/settings_ext/search/g;
.super Landroid/os/AsyncTask;
.source "Index.java"


# instance fields
.field final synthetic aiN:Lcom/android/settings_ext/search/e;


# direct methods
.method private constructor <init>(Lcom/android/settings_ext/search/e;)V
    .locals 0

    .prologue
    .line 1283
    iput-object p1, p0, Lcom/android/settings_ext/search/g;->aiN:Lcom/android/settings_ext/search/e;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ext/search/e;Lcom/android/settings_ext/search/f;)V
    .locals 0

    .prologue
    .line 1283
    invoke-direct {p0, p1}, Lcom/android/settings_ext/search/g;-><init>(Lcom/android/settings_ext/search/e;)V

    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1283
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/search/g;->e([Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected varargs e([Ljava/lang/String;)Ljava/lang/Long;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 1287
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1289
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1290
    const-string v2, "query"

    aget-object v3, p1, v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    const-string v2, "timestamp"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1293
    iget-object v0, p0, Lcom/android/settings_ext/search/g;->aiN:Lcom/android/settings_ext/search/e;

    invoke-static {v0}, Lcom/android/settings_ext/search/e;->b(Lcom/android/settings_ext/search/e;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 1295
    const-wide/16 v2, -0x1

    .line 1298
    :try_start_0
    const-string v0, "saved_queries"

    const-string v1, "query = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, p1, v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v0, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1303
    const-string v0, "saved_queries"

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1307
    :try_start_1
    invoke-static {}, Lcom/android/settings_ext/search/e;->ry()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 1308
    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-lez v4, :cond_0

    .line 1309
    const-string v4, "saved_queries"

    const-string v6, "rowId <= ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-virtual {v5, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1311
    const-string v3, "Index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleted \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' saved Search query(ies)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1317
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1313
    :catch_0
    move-exception v0

    move-object v9, v0

    move-wide v0, v2

    move-object v2, v9

    .line 1314
    :goto_1
    const-string v3, "Index"

    const-string v4, "Cannot update saved Search queries"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1313
    :catch_1
    move-exception v2

    goto :goto_1
.end method
