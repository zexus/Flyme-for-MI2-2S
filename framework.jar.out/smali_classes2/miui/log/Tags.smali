.class public final Lmiui/log/Tags;
.super Ljava/lang/Object;
.source "Tags.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndroidTag(Ljava/lang/String;)Lmiui/log/AndroidTag;
    .locals 1
    .param p0, "fieldFullPath"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-static {p0}, Lmiui/log/AndroidTags;->get(Ljava/lang/String;)Lmiui/log/AndroidTag;

    move-result-object v0

    return-object v0
.end method

.method public static getMiuiTag(I)Lmiui/log/MiuiTag;
    .locals 1
    .param p0, "tagID"    # I

    .prologue
    .line 27
    invoke-static {p0}, Lmiui/log/MiuiTags;->get(I)Lmiui/log/MiuiTag;

    move-result-object v0

    return-object v0
.end method

.method public static getMiuiTag(Ljava/lang/String;)Lmiui/log/MiuiTag;
    .locals 1
    .param p0, "tagName"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p0}, Lmiui/log/MiuiTags;->get(Ljava/lang/String;)Lmiui/log/MiuiTag;

    move-result-object v0

    return-object v0
.end method

.method public static getTagGroup(Ljava/lang/String;)Lmiui/log/TagGroup;
    .locals 1
    .param p0, "groupName"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {p0}, Lmiui/log/TagGroups;->get(Ljava/lang/String;)Lmiui/log/TagGroup;

    move-result-object v0

    return-object v0
.end method

.method public static isAndroidTagOn(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fieldFullPath"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-static {p0}, Lmiui/log/AndroidTags;->isOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMiuiTagOn(I)Z
    .locals 1
    .param p0, "tagID"    # I

    .prologue
    .line 35
    invoke-static {p0}, Lmiui/log/MiuiTags;->isOn(I)Z

    move-result v0

    return v0
.end method

.method public static isMiuiTagOn(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tagName"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {p0}, Lmiui/log/MiuiTags;->isOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTagGroupOn(Ljava/lang/String;)Z
    .locals 1
    .param p0, "groupName"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {p0}, Lmiui/log/TagGroups;->isOn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static switchOffAndroidTag(Ljava/lang/String;)V
    .locals 0
    .param p0, "fieldFullPath"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {p0}, Lmiui/log/AndroidTags;->switchOff(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static switchOffMiuiTag(I)V
    .locals 0
    .param p0, "tagID"    # I

    .prologue
    .line 51
    invoke-static {p0}, Lmiui/log/MiuiTags;->switchOff(I)V

    .line 52
    return-void
.end method

.method public static switchOffMiuiTag(Ljava/lang/String;)V
    .locals 0
    .param p0, "tagName"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {p0}, Lmiui/log/MiuiTags;->switchOff(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static declared-synchronized switchOffTagGroup(Ljava/lang/String;)V
    .locals 2
    .param p0, "groupName"    # Ljava/lang/String;

    .prologue
    .line 71
    const-class v0, Lmiui/log/Tags;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lmiui/log/TagGroups;->switchOff(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit v0

    return-void

    .line 71
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static switchOnAndroidTag(Ljava/lang/String;)V
    .locals 0
    .param p0, "fieldFullPath"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {p0}, Lmiui/log/AndroidTags;->switchOn(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static switchOnMiuiTag(I)V
    .locals 0
    .param p0, "tagID"    # I

    .prologue
    .line 43
    invoke-static {p0}, Lmiui/log/MiuiTags;->switchOn(I)V

    .line 44
    return-void
.end method

.method public static switchOnMiuiTag(Ljava/lang/String;)V
    .locals 0
    .param p0, "tagName"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p0}, Lmiui/log/MiuiTags;->switchOn(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static declared-synchronized switchOnTagGroup(Ljava/lang/String;)V
    .locals 2
    .param p0, "groupName"    # Ljava/lang/String;

    .prologue
    .line 67
    const-class v0, Lmiui/log/Tags;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lmiui/log/TagGroups;->switchOn(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit v0

    return-void

    .line 67
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
