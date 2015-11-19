.class public Lcom/miui/internal/yellowpage/YellowPageAvatar;
.super Lmiui/yellowpage/YellowPageImgLoader$Image;
.source "YellowPageAvatar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "YellowPageAvatar"


# instance fields
.field private mAvatarName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFormat:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "format"    # Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    .prologue
    .line 32
    invoke-direct {p0, p2}, Lmiui/yellowpage/YellowPageImgLoader$Image;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mContext:Landroid/content/Context;

    .line 34
    iput-object p3, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mFormat:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    .line 35
    return-void
.end method

.method private static getAvatarUrlById(Landroid/content/Context;Ljava/lang/String;Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "yid"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 104
    sget-object v0, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->PHOTO_YID:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    if-ne p2, v0, :cond_2

    const-string v6, "photo_url"

    .line 106
    .local v6, "avatarColumn":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v6, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "yid = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 111
    .local v7, "c":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 112
    .local v8, "name":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 114
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 118
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 121
    :cond_1
    return-object v8

    .line 104
    .end local v6    # "avatarColumn":Ljava/lang/String;
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v8    # "name":Ljava/lang/String;
    :cond_2
    const-string v6, "thumbnail_url"

    goto :goto_0

    .line 118
    .restart local v6    # "avatarColumn":Ljava/lang/String;
    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v8    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getAvatarUrlByNumber(Landroid/content/Context;Ljava/lang/String;Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 80
    sget-object v0, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->PHOTO_NUMBER:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    if-ne p2, v0, :cond_2

    const-string v6, "photo_url"

    .line 82
    .local v6, "avatarColumn":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/yellowpage/YellowPageContract$PhoneLookup;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v6, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 89
    .local v7, "c":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 90
    .local v8, "name":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 92
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 96
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 99
    :cond_1
    return-object v8

    .line 80
    .end local v6    # "avatarColumn":Ljava/lang/String;
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v8    # "name":Ljava/lang/String;
    :cond_2
    const-string v6, "thumbnail_url"

    goto :goto_0

    .line 96
    .restart local v6    # "avatarColumn":Ljava/lang/String;
    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v8    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    if-ne p1, p0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v1

    .line 52
    :cond_1
    instance-of v3, p1, Lcom/miui/internal/yellowpage/YellowPageAvatar;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 53
    check-cast v0, Lcom/miui/internal/yellowpage/YellowPageAvatar;

    .line 54
    .local v0, "avatar":Lcom/miui/internal/yellowpage/YellowPageAvatar;
    iget-object v3, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mFormat:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    iget-object v4, v0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mFormat:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "avatar":Lcom/miui/internal/yellowpage/YellowPageAvatar;
    :cond_3
    move v1, v2

    .line 56
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mAvatarName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mFormat:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_NUMBER:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mFormat:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->PHOTO_NUMBER:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    if-ne v0, v1, :cond_2

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mFormat:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-static {v0, v1, v2}, Lcom/miui/internal/yellowpage/YellowPageAvatar;->getAvatarUrlByNumber(Landroid/content/Context;Ljava/lang/String;Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mAvatarName:Ljava/lang/String;

    .line 72
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mAvatarName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 73
    iget-object v0, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mAvatarName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lmiui/yellowpage/YellowPageImgLoader;->getDataSha1Digest([B)Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_1
    return-object v0

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mFormat:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->PHOTO_YID:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mFormat:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_YID:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    if-ne v0, v1, :cond_4

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mFormat:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-static {v0, v1, v2}, Lcom/miui/internal/yellowpage/YellowPageAvatar;->getAvatarUrlById(Landroid/content/Context;Ljava/lang/String;Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mAvatarName:Ljava/lang/String;

    goto :goto_0

    .line 69
    :cond_4
    iget-object v0, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mAvatarName:Ljava/lang/String;

    goto :goto_0

    .line 75
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/miui/internal/yellowpage/YellowPageAvatar;->getName()Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mFormat:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->PHOTO_YID:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mFormat:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->PHOTO_NUMBER:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mFormat:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->PHOTO_NAME:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mAvatarName:Ljava/lang/String;

    invoke-static {v0, v1}, Lmiui/yellowpage/HostManager;->getYellowPagePhotoUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/internal/yellowpage/YellowPageAvatar;->mAvatarName:Ljava/lang/String;

    invoke-static {v0, v1}, Lmiui/yellowpage/HostManager;->getYellowPageThumbnail(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
