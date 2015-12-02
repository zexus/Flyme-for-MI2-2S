.class public Lcom/android/camera/PictureSizeManager;
.super Ljava/lang/Object;
.source "PictureSizeManager.java"


# static fields
.field private static sDefaultValue:Ljava/lang/String;

.field private static final sEntryValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPictureList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/PictureSize;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    .line 17
    sget-object v0, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    const-string v1, "4x3"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    const-string v1, "16x9"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    return-void
.end method

.method private static _findMaxRatio16_9(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/PictureSize;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "supported":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/PictureSize;>;"
    const/4 v2, 0x0

    .line 120
    .local v2, "maxWidth":I
    const/4 v1, 0x0

    .line 121
    .local v1, "maxHeight":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/PictureSize;

    .line 122
    .local v3, "size":Lcom/android/camera/PictureSize;
    iget v4, v3, Lcom/android/camera/PictureSize;->width:I

    iget v5, v3, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio16_9(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 123
    iget v4, v3, Lcom/android/camera/PictureSize;->width:I

    iget v5, v3, Lcom/android/camera/PictureSize;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v2, v1

    if-le v4, v5, :cond_0

    .line 124
    iget v2, v3, Lcom/android/camera/PictureSize;->width:I

    .line 125
    iget v1, v3, Lcom/android/camera/PictureSize;->height:I

    goto :goto_0

    .line 129
    .end local v3    # "size":Lcom/android/camera/PictureSize;
    :cond_1
    if-eqz v2, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v2, v1}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method public static _findMaxRatio4_3(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/PictureSize;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "supported":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/PictureSize;>;"
    const/4 v2, 0x0

    .line 106
    .local v2, "maxWidth":I
    const/4 v1, 0x0

    .line 107
    .local v1, "maxHeight":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/PictureSize;

    .line 108
    .local v3, "size":Lcom/android/camera/PictureSize;
    iget v4, v3, Lcom/android/camera/PictureSize;->width:I

    iget v5, v3, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio4_3(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    iget v4, v3, Lcom/android/camera/PictureSize;->width:I

    iget v5, v3, Lcom/android/camera/PictureSize;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v2, v1

    if-le v4, v5, :cond_0

    .line 110
    iget v2, v3, Lcom/android/camera/PictureSize;->width:I

    .line 111
    iget v1, v3, Lcom/android/camera/PictureSize;->height:I

    goto :goto_0

    .line 115
    .end local v3    # "size":Lcom/android/camera/PictureSize;
    :cond_1
    if-eqz v2, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v2, v1}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method public static findMaxRatio16_9(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v2, 0x0

    .line 148
    .local v2, "maxWidth":I
    const/4 v1, 0x0

    .line 149
    .local v1, "maxHeight":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 150
    .local v3, "size":Landroid/hardware/Camera$Size;
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio16_9(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 151
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v2, v1

    if-le v4, v5, :cond_0

    .line 152
    iget v2, v3, Landroid/hardware/Camera$Size;->width:I

    .line 153
    iget v1, v3, Landroid/hardware/Camera$Size;->height:I

    goto :goto_0

    .line 157
    .end local v3    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    if-eqz v2, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v2, v1}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method private static findMaxRatio4_3(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v2, 0x0

    .line 134
    .local v2, "maxWidth":I
    const/4 v1, 0x0

    .line 135
    .local v1, "maxHeight":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 136
    .local v3, "size":Landroid/hardware/Camera$Size;
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio4_3(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 137
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v2, v1

    if-le v4, v5, :cond_0

    .line 138
    iget v2, v3, Landroid/hardware/Camera$Size;->width:I

    .line 139
    iget v1, v3, Landroid/hardware/Camera$Size;->height:I

    goto :goto_0

    .line 143
    .end local v3    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    if-eqz v2, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v2, v1}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method public static getBestPictureSize()Lcom/android/camera/PictureSize;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 56
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getPictureSize()Lcom/android/camera/PictureSize;

    move-result-object v0

    .line 57
    .local v0, "candidate":Lcom/android/camera/PictureSize;
    const/4 v1, 0x0

    .line 58
    .local v1, "desire":Lcom/android/camera/PictureSize;
    invoke-virtual {v0}, Lcom/android/camera/PictureSize;->isAspectRatio16_9()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 59
    sget-object v2, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio16_9(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v1

    .line 64
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/camera/PictureSize;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    :cond_1
    new-instance v1, Lcom/android/camera/PictureSize;

    .end local v1    # "desire":Lcom/android/camera/PictureSize;
    sget-object v2, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PictureSize;

    iget v3, v2, Lcom/android/camera/PictureSize;->width:I

    sget-object v2, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PictureSize;

    iget v2, v2, Lcom/android/camera/PictureSize;->height:I

    invoke-direct {v1, v3, v2}, Lcom/android/camera/PictureSize;-><init>(II)V

    .line 69
    .restart local v1    # "desire":Lcom/android/camera/PictureSize;
    :cond_2
    return-object v1

    .line 60
    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/PictureSize;->isAspectRatio4_3()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    sget-object v2, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio4_3(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public static getEntries()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f0e0037

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0e0038

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getEntryValues()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 30
    .local v0, "result":[Ljava/lang/String;
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 31
    return-object v0
.end method

.method public static getPictureSize()Lcom/android/camera/PictureSize;
    .locals 4

    .prologue
    .line 47
    new-instance v0, Lcom/android/camera/PictureSize;

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    const-string v2, "pref_camera_picturesize_key"

    sget-object v3, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/PictureSize;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static initSensorRatio(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    sget-boolean v4, Lcom/android/camera/Device;->IS_MI9:Z

    if-eqz v4, :cond_0

    .line 195
    const-string v4, "16x9"

    sput-object v4, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    .line 214
    :goto_0
    return-void

    .line 198
    :cond_0
    const/4 v1, -0x1

    .line 199
    .local v1, "maxIndex":I
    const/4 v2, 0x0

    .line 200
    .local v2, "maxValue":I
    new-instance v3, Lcom/android/camera/PictureSize;

    invoke-direct {v3}, Lcom/android/camera/PictureSize;-><init>()V

    .line 201
    .local v3, "pictureSize":Lcom/android/camera/PictureSize;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 202
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    invoke-virtual {v3, v4}, Lcom/android/camera/PictureSize;->setPictureSize(Landroid/hardware/Camera$Size;)Lcom/android/camera/PictureSize;

    .line 203
    invoke-virtual {v3}, Lcom/android/camera/PictureSize;->area()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 204
    move v1, v0

    .line 205
    invoke-virtual {v3}, Lcom/android/camera/PictureSize;->area()I

    move-result v2

    .line 201
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 208
    :cond_2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    invoke-virtual {v3, v4}, Lcom/android/camera/PictureSize;->setPictureSize(Landroid/hardware/Camera$Size;)Lcom/android/camera/PictureSize;

    .line 209
    invoke-virtual {v3}, Lcom/android/camera/PictureSize;->isAspectRatio4_3()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 210
    const-string v4, "4x3"

    sput-object v4, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    goto :goto_0

    .line 212
    :cond_3
    const-string v4, "16x9"

    sput-object v4, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public static initialize(Lcom/android/camera/ActivityBase;Ljava/util/List;I)V
    .locals 7
    .param p0, "mActivity"    # Lcom/android/camera/ActivityBase;
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ActivityBase;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    sget-object v5, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 74
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 75
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The supported picture size list return from hal is null!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 77
    :cond_1
    invoke-static {p1}, Lcom/android/camera/PictureSizeManager;->initSensorRatio(Ljava/util/List;)V

    .line 79
    if-eqz p2, :cond_4

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/Camera$Size;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 82
    .local v2, "size":Landroid/hardware/Camera$Size;
    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v5, v6

    if-gt v5, p2, :cond_2

    .line 83
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    :cond_3
    move-object p1, v1

    .line 89
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/Camera$Size;>;"
    :cond_4
    invoke-static {p1}, Lcom/android/camera/PictureSizeManager;->findMaxRatio4_3(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v4

    .line 90
    .local v4, "size4_3":Lcom/android/camera/PictureSize;
    if-eqz v4, :cond_5

    .line 91
    sget-object v5, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_5
    invoke-static {p1}, Lcom/android/camera/PictureSizeManager;->findMaxRatio16_9(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v3

    .line 95
    .local v3, "size16_9":Lcom/android/camera/PictureSize;
    if-eqz v3, :cond_6

    .line 96
    sget-object v5, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_6
    sget-object v5, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_7

    .line 100
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Not find the desire picture sizes!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 102
    :cond_7
    return-void
.end method
