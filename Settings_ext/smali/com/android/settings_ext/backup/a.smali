.class public Lcom/android/settings_ext/backup/a;
.super Ljava/lang/Object;
.source "AccountRestoreManager.java"


# static fields
.field private static LG:Ljava/util/HashSet;

.field static final LH:Ljava/lang/String;

.field private static final LI:I

.field private static final LJ:[Ljava/lang/String;

.field private static final LK:[Ljava/lang/String;


# instance fields
.field private LA:Landroid/database/sqlite/SQLiteDatabase;

.field private LB:Ljava/io/File;

.field private LC:Ljava/util/ArrayList;

.field private LD:Ljava/util/HashMap;

.field private LE:Ljava/util/HashMap;

.field private LF:Ljava/util/HashSet;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-le v0, v2, :cond_0

    const-string v0, "/users/0/"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "accounts.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ext/backup/a;->LH:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings_ext/backup/a;->LG:Ljava/util/HashSet;

    .line 64
    sget-object v0, Lcom/android/settings_ext/backup/a;->LG:Ljava/util/HashSet;

    const-string v1, "com.xiaomi"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/android/settings_ext/backup/a;->LG:Ljava/util/HashSet;

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/android/settings_ext/backup/a;->LG:Ljava/util/HashSet;

    const-string v1, "com.android.email"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/android/settings_ext/backup/a;->LG:Ljava/util/HashSet;

    const-string v1, "com.android.exchange"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 329
    invoke-static {}, Lcom/android/settings_ext/backup/a;->jZ()I

    move-result v0

    sput v0, Lcom/android/settings_ext/backup/a;->LI:I

    .line 360
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "key"

    aput-object v1, v0, v3

    const-string v1, "value"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings_ext/backup/a;->LJ:[Ljava/lang/String;

    .line 366
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "type"

    aput-object v1, v0, v3

    const-string v1, "authtoken"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings_ext/backup/a;->LK:[Ljava/lang/String;

    return-void

    .line 54
    :cond_0
    const-string v0, "/"

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/settings_ext/backup/a;->mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/backup/a;->LC:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/backup/a;->LD:Ljava/util/HashMap;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/backup/a;->LE:Ljava/util/HashMap;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/backup/a;->LF:Ljava/util/HashSet;

    .line 76
    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/android/settings_ext/backup/a;->LI:I

    return v0
.end method

.method private jU()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 113
    iget-object v0, p0, Lcom/android/settings_ext/backup/a;->LF:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 114
    iget-object v0, p0, Lcom/android/settings_ext/backup/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 116
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 117
    if-eqz v1, :cond_0

    array-length v0, v1

    if-lez v0, :cond_0

    .line 118
    array-length v2, v1

    move v0, v8

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v4, v1, v0

    .line 119
    iget-object v5, p0, Lcom/android/settings_ext/backup/a;->LF:Ljava/util/HashSet;

    iget-object v6, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/backup/a;->LC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 125
    iget-object v0, p0, Lcom/android/settings_ext/backup/a;->LA:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "accounts"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    const-string v4, "type"

    aput-object v4, v2, v10

    const-string v4, "name"

    aput-object v4, v2, v11

    const-string v4, "password"

    aput-object v4, v2, v12

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 134
    if-nez v0, :cond_1

    .line 157
    :goto_1
    return-void

    .line 138
    :cond_1
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 139
    new-instance v1, Lcom/android/settings_ext/backup/c;

    invoke-direct {v1, v3}, Lcom/android/settings_ext/backup/c;-><init>(Lcom/android/settings_ext/backup/b;)V

    .line 140
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/settings_ext/backup/c;->id:J

    .line 141
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings_ext/backup/c;->type:Ljava/lang/String;

    .line 142
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings_ext/backup/c;->name:Ljava/lang/String;

    .line 143
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings_ext/backup/c;->password:Ljava/lang/String;

    .line 144
    iget-object v2, p0, Lcom/android/settings_ext/backup/a;->LF:Ljava/util/HashSet;

    iget-object v4, v1, Lcom/android/settings_ext/backup/c;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.xiaomi"

    iget-object v4, v1, Lcom/android/settings_ext/backup/c;->type:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/settings_ext/backup/c;->type:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 148
    :cond_2
    sget-object v2, Lcom/android/settings_ext/backup/a;->LG:Ljava/util/HashSet;

    iget-object v4, v1, Lcom/android/settings_ext/backup/c;->type:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    const-string v2, "com.android.email"

    iget-object v4, v1, Lcom/android/settings_ext/backup/c;->type:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.android.exchange"

    iget-object v4, v1, Lcom/android/settings_ext/backup/c;->type:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 150
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ext/backup/a;->LC:Ljava/util/ArrayList;

    invoke-virtual {v2, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 152
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ext/backup/a;->LC:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 156
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private jV()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 165
    iget-object v0, p0, Lcom/android/settings_ext/backup/a;->LE:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 166
    iget-object v0, p0, Lcom/android/settings_ext/backup/a;->LC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/settings_ext/backup/c;

    .line 167
    iget-object v0, p0, Lcom/android/settings_ext/backup/a;->LF:Ljava/util/HashSet;

    iget-object v1, v6, Lcom/android/settings_ext/backup/c;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-wide v10, v6, Lcom/android/settings_ext/backup/c;->id:J

    .line 171
    iget-object v0, p0, Lcom/android/settings_ext/backup/a;->LA:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "extras"

    sget-object v2, Lcom/android/settings_ext/backup/a;->LJ:[Ljava/lang/String;

    const-string v3, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iget-object v7, v6, Lcom/android/settings_ext/backup/c;->name:Ljava/lang/String;

    aput-object v7, v4, v9

    iget-object v6, v6, Lcom/android/settings_ext/backup/c;->type:Ljava/lang/String;

    aput-object v6, v4, v12

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_0

    .line 184
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 185
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 191
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 192
    iget-object v0, p0, Lcom/android/settings_ext/backup/a;->LE:Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 194
    :cond_2
    return-void
.end method

.method private jW()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 197
    iget-object v0, p0, Lcom/android/settings_ext/backup/a;->LD:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 198
    iget-object v0, p0, Lcom/android/settings_ext/backup/a;->LC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/settings_ext/backup/c;

    .line 199
    iget-wide v10, v6, Lcom/android/settings_ext/backup/c;->id:J

    .line 201
    iget-object v0, p0, Lcom/android/settings_ext/backup/a;->LA:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "authtokens"

    sget-object v2, Lcom/android/settings_ext/backup/a;->LK:[Ljava/lang/String;

    const-string v3, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iget-object v7, v6, Lcom/android/settings_ext/backup/c;->name:Ljava/lang/String;

    aput-object v7, v4, v9

    iget-object v6, v6, Lcom/android/settings_ext/backup/c;->type:Ljava/lang/String;

    aput-object v6, v4, v12

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_0

    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 215
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    new-instance v2, Lcom/android/settings_ext/backup/d;

    invoke-direct {v2, v5}, Lcom/android/settings_ext/backup/d;-><init>(Lcom/android/settings_ext/backup/b;)V

    .line 217
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings_ext/backup/d;->type:Ljava/lang/String;

    .line 218
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings_ext/backup/d;->LL:Ljava/lang/String;

    .line 219
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 221
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 222
    iget-object v0, p0, Lcom/android/settings_ext/backup/a;->LD:Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 224
    :cond_2
    return-void
.end method

.method private static jZ()I
    .locals 2

    .prologue
    .line 320
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-gt v0, v1, :cond_0

    .line 321
    const/4 v0, 0x4

    .line 325
    :goto_0
    return v0

    .line 322
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_1

    .line 323
    const/4 v0, 0x5

    goto :goto_0

    .line 325
    :cond_1
    const/4 v0, 0x6

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 79
    new-instance v0, Lcom/android/settings_ext/backup/e;

    iget-object v1, p0, Lcom/android/settings_ext/backup/a;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings_ext/backup/e;-><init>(Lcom/android/settings_ext/backup/a;Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Lcom/android/settings_ext/backup/e;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/backup/a;->LA:Landroid/database/sqlite/SQLiteDatabase;

    .line 81
    invoke-direct {p0}, Lcom/android/settings_ext/backup/a;->jU()V

    .line 82
    invoke-direct {p0}, Lcom/android/settings_ext/backup/a;->jV()V

    .line 83
    invoke-direct {p0}, Lcom/android/settings_ext/backup/a;->jW()V

    .line 84
    return-void
.end method

.method protected an(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/settings_ext/backup/a;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public b(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/android/settings_ext/backup/a;->LB:Ljava/io/File;

    .line 464
    return-void
.end method

.method public j(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 241
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 243
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 247
    :cond_0
    :goto_0
    return-object v0

    .line 244
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public jT()V
    .locals 9

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings_ext/backup/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 88
    iget-object v0, p0, Lcom/android/settings_ext/backup/a;->LC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/backup/c;

    .line 89
    iget-wide v4, v0, Lcom/android/settings_ext/backup/c;->id:J

    .line 90
    new-instance v6, Landroid/accounts/Account;

    iget-object v1, v0, Lcom/android/settings_ext/backup/c;->name:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/settings_ext/backup/c;->type:Ljava/lang/String;

    invoke-direct {v6, v1, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v1, 0x0

    .line 93
    :try_start_0
    iget-object v7, v0, Lcom/android/settings_ext/backup/c;->password:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings_ext/backup/a;->LE:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v2, v6, v7, v0}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 99
    :goto_0
    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/settings_ext/backup/a;->LD:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 101
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/backup/d;

    .line 102
    iget-object v4, v0, Lcom/android/settings_ext/backup/d;->type:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/settings_ext/backup/d;->LL:Ljava/lang/String;

    invoke-virtual {v2, v6, v4, v0}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    const-string v7, "AccountRestoreManager"

    const-string v8, "add account error!"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0

    .line 106
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.backup.ACCOUNT_RESTORED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    const-string v1, "com.miui.cloudservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lcom/android/settings_ext/backup/a;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 109
    iget-object v0, p0, Lcom/android/settings_ext/backup/a;->LA:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 110
    return-void
.end method

.method protected jX()V
    .locals 6

    .prologue
    const/16 v5, 0x1b0

    .line 255
    iget-object v0, p0, Lcom/android/settings_ext/backup/a;->mContext:Landroid/content/Context;

    const-string v1, "com.android.email"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ext/backup/a;->j(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 256
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/backup/a;->an(Ljava/lang/String;)V

    .line 257
    const-string v1, "com.android.exchange"

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/backup/a;->an(Ljava/lang/String;)V

    .line 259
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/settings_ext/backup/a;->LB:Ljava/io/File;

    const-string v3, "EmailProvider.db"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 260
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    const-string v2, "/data/data/com.android.email/databases/EmailProvider.db"

    invoke-static {v2}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 262
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/data/data/com.android.email/databases/EmailProvider.db"

    invoke-static {v2, v3}, Landroid/miui/Shell;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 263
    const-string v2, "/data/data/com.android.email/databases/EmailProvider.db"

    invoke-static {v2, v5}, Landroid/miui/Shell;->chmod(Ljava/lang/String;I)Z

    .line 264
    const-string v2, "/data/data/com.android.email/databases/EmailProvider.db"

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2, v3, v4}, Landroid/miui/Shell;->chown(Ljava/lang/String;II)Z

    .line 265
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 267
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/settings_ext/backup/a;->LB:Ljava/io/File;

    const-string v3, "EmailProviderBackup.db"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 268
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 269
    const-string v2, "/data/data/com.android.email/databases/EmailProviderBackup.db"

    invoke-static {v2}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 270
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/data/data/com.android.email/databases/EmailProviderBackup.db"

    invoke-static {v2, v3}, Landroid/miui/Shell;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 271
    const-string v2, "/data/data/com.android.email/databases/EmailProviderBackup.db"

    invoke-static {v2, v5}, Landroid/miui/Shell;->chmod(Ljava/lang/String;I)Z

    .line 272
    const-string v2, "/data/data/com.android.email/databases/EmailProviderBackup.db"

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2, v3, v4}, Landroid/miui/Shell;->chown(Ljava/lang/String;II)Z

    .line 273
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 275
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/settings_ext/backup/a;->LB:Ljava/io/File;

    const-string v3, "EmailProviderBody.db"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 276
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 277
    const-string v2, "/data/data/com.android.email/databases/EmailProviderBody.db"

    invoke-static {v2}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    .line 278
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/data/data/com.android.email/databases/EmailProviderBody.db"

    invoke-static {v2, v3}, Landroid/miui/Shell;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 279
    const-string v2, "/data/data/com.android.email/databases/EmailProviderBody.db"

    invoke-static {v2, v5}, Landroid/miui/Shell;->chmod(Ljava/lang/String;I)Z

    .line 280
    const-string v2, "/data/data/com.android.email/databases/EmailProviderBody.db"

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2, v3, v0}, Landroid/miui/Shell;->chown(Ljava/lang/String;II)Z

    .line 281
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 283
    :cond_2
    return-void
.end method

.method public jY()V
    .locals 5

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/settings_ext/backup/a;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 289
    sget-boolean v1, Lmiui/os/Build;->IS_MIONE:Z

    if-eqz v1, :cond_1

    .line 290
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.email"

    const-string v3, "com.android.email.SecurityPolicy$PolicyAdmin"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :goto_0
    const/4 v2, 0x0

    .line 296
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ext/backup/a;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 300
    :goto_1
    if-eqz v1, :cond_0

    .line 301
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 302
    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 304
    :try_start_1
    new-instance v1, Landroid/app/admin/DeviceAdminInfo;

    iget-object v3, p0, Lcom/android/settings_ext/backup/a;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v2}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 305
    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 314
    :cond_0
    :goto_2
    return-void

    .line 292
    :cond_1
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.email"

    const-string v3, "com.kingsoft.email.SecurityPolicy$PolicyAdmin"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :catch_0
    move-exception v1

    move-object v1, v2

    goto :goto_1

    .line 310
    :catch_1
    move-exception v0

    .line 311
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 308
    :catch_2
    move-exception v0

    goto :goto_2

    .line 306
    :catch_3
    move-exception v0

    goto :goto_2
.end method
