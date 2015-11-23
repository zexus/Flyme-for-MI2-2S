.class public Lcom/android/settings_ext/provider/b;
.super Ljava/lang/Object;
.source "MiuiSettingsUtil.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final LIMIT:I

.field public static ahy:Z

.field private static ahz:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "content://miui_settings/miui_settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ext/provider/b;->CONTENT_URI:Landroid/net/Uri;

    .line 29
    sget-boolean v0, Lmiui/os/Build;->IS_MITHREE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_MIFIVE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO:Z

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0xa

    :goto_0
    sput v0, Lcom/android/settings_ext/provider/b;->LIMIT:I

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings_ext/provider/b;->ahz:Ljava/util/HashMap;

    return-void

    .line 29
    :cond_1
    const/16 v0, 0x9

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 96
    sget-object v1, Lcom/android/settings_ext/provider/b;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "count"

    aput-object v3, v2, v7

    const-string v3, "key=?"

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 102
    if-eqz v2, :cond_2

    .line 103
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    const-string v1, "count"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 105
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    add-int/2addr p4, v1

    move v1, v6

    .line 108
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 111
    :goto_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 112
    const-string v3, "count"

    add-int/lit8 v4, p4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 113
    if-eqz v1, :cond_0

    .line 114
    sget-object v1, Lcom/android/settings_ext/provider/b;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "key=?"

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 121
    :goto_2
    return-void

    .line 116
    :cond_0
    const-string v1, "key"

    invoke-virtual {v2, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v1, "search_key"

    invoke-virtual {v2, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v1, "key_index"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    sget-object v1, Lcom/android/settings_ext/provider/b;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2

    :cond_1
    move v1, v7

    goto :goto_0

    :cond_2
    move v1, v7

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 145
    sget-object v0, Lcom/android/settings_ext/provider/b;->ahz:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/provider/d;

    .line 146
    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lcom/android/settings_ext/provider/d;

    invoke-direct {v0}, Lcom/android/settings_ext/provider/d;-><init>()V

    .line 148
    iput-object p0, v0, Lcom/android/settings_ext/provider/d;->key:Ljava/lang/String;

    .line 149
    iput-object p1, v0, Lcom/android/settings_ext/provider/d;->ahB:Ljava/lang/String;

    .line 150
    iput p2, v0, Lcom/android/settings_ext/provider/d;->index:I

    .line 151
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/settings_ext/provider/d;->count:I

    .line 153
    :cond_0
    iget v1, v0, Lcom/android/settings_ext/provider/d;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/settings_ext/provider/d;->count:I

    .line 154
    sget-object v1, Lcom/android/settings_ext/provider/b;->ahz:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    return-void
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 15
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settings_ext/provider/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static bl(Landroid/content/Context;)[I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/android/settings_ext/provider/b;->k(Landroid/content/Context;I)[I

    move-result-object v0

    return-object v0
.end method

.method public static bm(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 126
    sget-object v0, Lcom/android/settings_ext/provider/b;->ahz:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 129
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    sget-object v1, Lcom/android/settings_ext/provider/b;->ahz:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 131
    sget-object v1, Lcom/android/settings_ext/provider/b;->ahz:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 132
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings_ext/provider/b;->ahy:Z

    .line 134
    new-instance v1, Lcom/android/settings_ext/provider/c;

    invoke-direct {v1, v0, p0}, Lcom/android/settings_ext/provider/c;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/settings_ext/provider/c;->start()V

    goto :goto_0
.end method

.method private static k(Landroid/content/Context;I)[I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 69
    const-string v5, "count desc "

    .line 70
    sget-object v1, Lcom/android/settings_ext/provider/b;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "limit"

    sget v4, Lcom/android/settings_ext/provider/b;->LIMIT:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "distinct"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 72
    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "key_index"

    aput-object v4, v2, v6

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 75
    if-eqz v2, :cond_1

    .line 76
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v3, v0, [I

    move v0, v6

    .line 80
    :goto_0
    const-string v1, "key_index"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 81
    add-int/lit8 v1, v0, 0x1

    aput v4, v3, v0

    .line 82
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 84
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 86
    :cond_1
    return-object v3

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static l(Landroid/content/Context;I)V
    .locals 4

    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 91
    sget-object v1, Lcom/android/settings_ext/provider/b;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key_index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 92
    return-void
.end method
