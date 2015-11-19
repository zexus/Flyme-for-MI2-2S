.class public Landroid/media/ExtraRingtone;
.super Ljava/lang/Object;
.source "ExtraRingtone.java"


# static fields
.field private static final MEDIA_COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/ExtraRingtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "formatSystemRingtone"    # Z

    .prologue
    const/4 v3, 0x1

    .line 30
    invoke-static {p0, p1, v3}, Landroid/media/ExtraRingtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "title":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v1, "settings"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    sget v1, Lcom/miui/system/internal/R$string;->android_ringtone_default_with_actual:I

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 36
    :cond_0
    return-object v0
.end method

.method private static getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "followSettingsUri"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 40
    const/4 v8, 0x0

    .line 41
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 43
    .local v0, "res":Landroid/content/ContentResolver;
    const/4 v11, 0x0

    .line 45
    .local v11, "title":Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 46
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    .line 48
    .local v7, "authority":Ljava/lang/String;
    const-string v1, "settings"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    if-eqz p2, :cond_3

    .line 50
    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundType(Landroid/net/Uri;)I

    move-result v1

    invoke-static {p0, v1}, Landroid/media/ExtraRingtoneManager;->getRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v6

    .line 52
    .local v6, "actualUri":Landroid/net/Uri;
    invoke-static {p0, v6, v2}, Landroid/media/ExtraRingtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v1

    .line 96
    .end local v6    # "actualUri":Landroid/net/Uri;
    .end local v7    # "authority":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 55
    .restart local v7    # "authority":Ljava/lang/String;
    :cond_0
    const/4 v9, 0x0

    .line 58
    .local v9, "fromDataBase":Z
    const-string v1, "media"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    sget-object v2, Landroid/media/ExtraRingtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 60
    const/4 v9, 0x1

    .line 64
    :cond_1
    if-eqz v8, :cond_5

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 65
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 66
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 67
    if-nez v11, :cond_2

    .line 68
    const-string v11, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    .line 84
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 90
    .end local v7    # "authority":Ljava/lang/String;
    .end local v9    # "fromDataBase":Z
    :cond_3
    if-nez v11, :cond_9

    .line 91
    sget v1, Lmiui/system/R$string;->android_ringtone_silent:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    :cond_4
    :goto_2
    move-object v1, v11

    .line 96
    goto :goto_0

    .line 70
    .restart local v7    # "authority":Ljava/lang/String;
    .restart local v9    # "fromDataBase":Z
    :cond_5
    if-eqz v9, :cond_6

    .line 71
    :try_start_1
    const-string v11, ""

    goto :goto_1

    .line 73
    :cond_6
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    .line 77
    if-eqz v11, :cond_7

    const-string v1, "_&_"

    invoke-virtual {v11, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 78
    .local v10, "sepIndex":I
    :goto_3
    if-lez v10, :cond_2

    .line 79
    const/4 v1, 0x0

    invoke-virtual {v11, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    goto :goto_1

    .line 77
    .end local v10    # "sepIndex":I
    :cond_7
    const/4 v10, -0x1

    goto :goto_3

    .line 83
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_8

    .line 84
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1

    .line 92
    .end local v7    # "authority":Ljava/lang/String;
    .end local v9    # "fromDataBase":Z
    :cond_9
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 93
    sget v1, Lmiui/system/R$string;->android_ringtone_unknown:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_2
.end method
