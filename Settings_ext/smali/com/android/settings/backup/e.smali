.class Lcom/android/settings_ext/backup/e;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AccountRestoreManager.java"


# instance fields
.field final synthetic LM:Lcom/android/settings_ext/backup/a;


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/backup/a;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/settings_ext/backup/e;->LM:Lcom/android/settings_ext/backup/a;

    .line 373
    const/4 v0, 0x0

    # getter for: Lcom/android/settings_ext/backup/a;->LI:I
    invoke-static {}, Lcom/android/settings_ext/backup/a;->access$200()I

    move-result v1

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 374
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 416
    const-string v0, " CREATE TRIGGER accountsDelete DELETE ON accounts BEGIN   DELETE FROM authtokens     WHERE accounts_id=OLD._id ;   DELETE FROM extras     WHERE accounts_id=OLD._id ;   DELETE FROM grants     WHERE accounts_id=OLD._id ; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 429
    const-string v0, "CREATE TABLE grants (  accounts_id INTEGER NOT NULL, auth_token_type STRING NOT NULL,  uid INTEGER NOT NULL,  UNIQUE (accounts_id,auth_token_type,uid))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 435
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 385
    const-string v0, "CREATE TABLE accounts ( _id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, type TEXT NOT NULL, password TEXT, UNIQUE(name,type))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 392
    const-string v0, "CREATE TABLE authtokens (  _id INTEGER PRIMARY KEY AUTOINCREMENT,  accounts_id INTEGER NOT NULL, type TEXT NOT NULL,  authtoken TEXT,  UNIQUE (accounts_id,type))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 399
    invoke-direct {p0, p1}, Lcom/android/settings_ext/backup/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 401
    const-string v0, "CREATE TABLE extras ( _id INTEGER PRIMARY KEY AUTOINCREMENT, accounts_id INTEGER, key TEXT NOT NULL, value TEXT, UNIQUE(accounts_id,key))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 408
    const-string v0, "CREATE TABLE meta ( key TEXT PRIMARY KEY NOT NULL, value TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 412
    invoke-direct {p0, p1}, Lcom/android/settings_ext/backup/e;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 413
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .prologue
    .line 439
    const-string v0, "AccountRestoreManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upgrade from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 444
    add-int/lit8 v0, p2, 0x1

    .line 447
    :goto_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 448
    invoke-direct {p0, p1}, Lcom/android/settings_ext/backup/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 449
    const-string v1, "DROP TRIGGER accountsDelete"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 450
    invoke-direct {p0, p1}, Lcom/android/settings_ext/backup/e;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 451
    add-int/lit8 v0, v0, 0x1

    .line 454
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 455
    const-string v1, "UPDATE accounts SET type = \'com.google\' WHERE type == \'com.google.GAIA\'"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 457
    add-int/lit8 v0, v0, 0x1

    .line 459
    :cond_1
    return-void

    :cond_2
    move v0, p2

    goto :goto_0
.end method
