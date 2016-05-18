.class Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;
.super Lcyanogenmod/app/IProfileManager$Stub;
.source "ProfileManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/ProfileManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-direct {p0}, Lcyanogenmod/app/IProfileManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addNotificationGroup(Landroid/app/NotificationGroup;)V
    .locals 3
    .param p1, "group"    # Landroid/app/NotificationGroup;

    .prologue
    .line 319
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->enforceChangePermissions()V
    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$200(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    .line 320
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->addNotificationGroupInternal(Landroid/app/NotificationGroup;)V
    invoke-static {v2, p1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$1200(Lorg/cyanogenmod/platform/internal/ProfileManagerService;Landroid/app/NotificationGroup;)V

    .line 321
    invoke-static {}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->clearCallingIdentity()J

    move-result-wide v0

    .line 322
    .local v0, "token":J
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->persistIfDirty()V
    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$000(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    .line 323
    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->restoreCallingIdentity(J)V

    .line 324
    return-void
.end method

.method public addProfile(Lcyanogenmod/app/Profile;)Z
    .locals 3
    .param p1, "profile"    # Lcyanogenmod/app/Profile;

    .prologue
    .line 208
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->enforceChangePermissions()V
    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$200(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    .line 209
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->addProfileInternal(Lcyanogenmod/app/Profile;)V
    invoke-static {v2, p1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$700(Lorg/cyanogenmod/platform/internal/ProfileManagerService;Lcyanogenmod/app/Profile;)V

    .line 210
    invoke-static {}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->clearCallingIdentity()J

    move-result-wide v0

    .line 211
    .local v0, "token":J
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->persistIfDirty()V
    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$000(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    .line 212
    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->restoreCallingIdentity(J)V

    .line 213
    const/4 v2, 0x1

    return v2
.end method

.method public getActiveProfile()Lcyanogenmod/app/Profile;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->getActiveProfileInternal()Lcyanogenmod/app/Profile;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationGroup(Landroid/os/ParcelUuid;)Landroid/app/NotificationGroup;
    .locals 2
    .param p1, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 368
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mWildcardGroup:Landroid/app/NotificationGroup;
    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$1300(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Landroid/app/NotificationGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mWildcardGroup:Landroid/app/NotificationGroup;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$1300(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Landroid/app/NotificationGroup;

    move-result-object v0

    .line 371
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mGroups:Ljava/util/Map;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$1100(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    goto :goto_0
.end method

.method public getNotificationGroupForPackage(Ljava/lang/String;)Landroid/app/NotificationGroup;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 358
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mGroups:Ljava/util/Map;
    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$1100(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    .line 359
    .local v0, "group":Landroid/app/NotificationGroup;
    invoke-virtual {v0, p1}, Landroid/app/NotificationGroup;->hasPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    .end local v0    # "group":Landroid/app/NotificationGroup;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNotificationGroups()[Landroid/app/NotificationGroup;
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mGroups:Ljava/util/Map;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$1100(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mGroups:Ljava/util/Map;
    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$1100(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/NotificationGroup;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/NotificationGroup;

    return-object v0
.end method

.method public getProfile(Landroid/os/ParcelUuid;)Lcyanogenmod/app/Profile;
    .locals 2
    .param p1, "profileParcelUuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 230
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 231
    .local v0, "profileUuid":Ljava/util/UUID;
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->getProfileInternal(Ljava/util/UUID;)Lcyanogenmod/app/Profile;
    invoke-static {v1, v0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$800(Lorg/cyanogenmod/platform/internal/ProfileManagerService;Ljava/util/UUID;)Lcyanogenmod/app/Profile;

    move-result-object v1

    return-object v1
.end method

.method public getProfileByName(Ljava/lang/String;)Lcyanogenmod/app/Profile;
    .locals 2
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfileNames:Ljava/util/Map;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$400(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$500(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfileNames:Ljava/util/Map;
    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$400(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/Profile;

    .line 224
    :goto_0
    return-object v0

    .line 221
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$500(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$500(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/Profile;

    goto :goto_0

    .line 224
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProfiles()[Lcyanogenmod/app/Profile;
    .locals 3

    .prologue
    .line 236
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-virtual {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->getProfileList()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;
    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$500(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcyanogenmod/app/Profile;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcyanogenmod/app/Profile;

    .line 237
    .local v0, "profiles":[Lcyanogenmod/app/Profile;
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 238
    return-object v0
.end method

.method public notificationGroupExistsByName(Ljava/lang/String;)Z
    .locals 3
    .param p1, "notificationGroupName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 304
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mGroups:Ljava/util/Map;
    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$1100(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    .line 305
    .local v0, "group":Landroid/app/NotificationGroup;
    invoke-virtual {v0}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    const/4 v2, 0x1

    .line 309
    .end local v0    # "group":Landroid/app/NotificationGroup;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public profileExists(Landroid/os/ParcelUuid;)Z
    .locals 2
    .param p1, "profileUuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 287
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;
    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$500(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public profileExistsByName(Ljava/lang/String;)Z
    .locals 3
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 293
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfileNames:Ljava/util/Map;
    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$400(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 294
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/UUID;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    const/4 v2, 0x1

    .line 298
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/UUID;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeNotificationGroup(Landroid/app/NotificationGroup;)V
    .locals 7
    .param p1, "group"    # Landroid/app/NotificationGroup;

    .prologue
    .line 328
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->enforceChangePermissions()V
    invoke-static {v4}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$200(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    .line 329
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mGroups:Ljava/util/Map;
    invoke-static {v4}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$1100(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    # |= operator for: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mDirty:Z
    invoke-static {v5, v4}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$976(Lorg/cyanogenmod/platform/internal/ProfileManagerService;I)Z

    .line 332
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;
    invoke-static {v4}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$500(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcyanogenmod/app/Profile;

    .line 333
    .local v1, "profile":Lcyanogenmod/app/Profile;
    invoke-virtual {p1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcyanogenmod/app/Profile;->removeProfileGroup(Ljava/util/UUID;)V

    goto :goto_1

    .line 329
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "profile":Lcyanogenmod/app/Profile;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 335
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-static {}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->clearCallingIdentity()J

    move-result-wide v2

    .line 336
    .local v2, "token":J
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->persistIfDirty()V
    invoke-static {v4}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$000(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    .line 337
    invoke-static {v2, v3}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->restoreCallingIdentity(J)V

    .line 338
    return-void
.end method

.method public removeProfile(Lcyanogenmod/app/Profile;)Z
    .locals 5
    .param p1, "profile"    # Lcyanogenmod/app/Profile;

    .prologue
    const/4 v2, 0x1

    .line 248
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->enforceChangePermissions()V
    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$200(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    .line 249
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfileNames:Ljava/util/Map;
    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$400(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1}, Lcyanogenmod/app/Profile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;
    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$500(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 251
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # setter for: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mDirty:Z
    invoke-static {v3, v2}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$902(Lorg/cyanogenmod/platform/internal/ProfileManagerService;Z)Z

    .line 252
    invoke-static {}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->clearCallingIdentity()J

    move-result-wide v0

    .line 253
    .local v0, "token":J
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->persistIfDirty()V
    invoke-static {v3}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$000(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    .line 254
    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->restoreCallingIdentity(J)V

    .line 257
    .end local v0    # "token":J
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public resetAll()V
    .locals 4

    .prologue
    .line 162
    invoke-static {}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->clearCallingIdentity()J

    move-result-wide v0

    .line 163
    .local v0, "token":J
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->enforceChangePermissions()V
    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$200(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    .line 164
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    const/4 v3, 0x1

    # invokes: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->initialize(Z)V
    invoke-static {v2, v3}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$300(Lorg/cyanogenmod/platform/internal/ProfileManagerService;Z)V

    .line 165
    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->restoreCallingIdentity(J)V

    .line 166
    return-void
.end method

.method public setActiveProfile(Landroid/os/ParcelUuid;)Z
    .locals 6
    .param p1, "profileParcelUuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 200
    invoke-static {}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->clearCallingIdentity()J

    move-result-wide v2

    .line 201
    .local v2, "token":J
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    const/4 v5, 0x1

    # invokes: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->setActiveProfileInternal(Ljava/util/UUID;Z)Z
    invoke-static {v1, v4, v5}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$600(Lorg/cyanogenmod/platform/internal/ProfileManagerService;Ljava/util/UUID;Z)Z

    move-result v0

    .line 202
    .local v0, "ret":Z
    invoke-static {v2, v3}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->restoreCallingIdentity(J)V

    .line 203
    return v0
.end method

.method public setActiveProfileByName(Ljava/lang/String;)Z
    .locals 6
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 171
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfileNames:Ljava/util/Map;
    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$400(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    const-string v2, "CMProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find profile to set active, based on string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v2, 0x0

    .line 189
    :goto_0
    return v2

    .line 186
    :cond_0
    invoke-static {}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->clearCallingIdentity()J

    move-result-wide v0

    .line 187
    .local v0, "token":J
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;
    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$500(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v2

    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfileNames:Ljava/util/Map;
    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$400(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcyanogenmod/app/Profile;

    invoke-virtual {v4, v2, v3}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->setActiveProfileInternal(Lcyanogenmod/app/Profile;Z)V

    .line 188
    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->restoreCallingIdentity(J)V

    move v2, v3

    .line 189
    goto :goto_0
.end method

.method public updateNotificationGroup(Landroid/app/NotificationGroup;)V
    .locals 5
    .param p1, "group"    # Landroid/app/NotificationGroup;

    .prologue
    .line 342
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->enforceChangePermissions()V
    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$200(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    .line 343
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mGroups:Ljava/util/Map;
    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$1100(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    .line 344
    .local v0, "old":Landroid/app/NotificationGroup;
    if-nez v0, :cond_0

    .line 354
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mGroups:Ljava/util/Map;
    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$1100(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v1, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    invoke-static {}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->clearCallingIdentity()J

    move-result-wide v2

    .line 352
    .local v2, "token":J
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->persistIfDirty()V
    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$000(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    .line 353
    invoke-static {v2, v3}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public updateProfile(Lcyanogenmod/app/Profile;)V
    .locals 6
    .param p1, "profile"    # Lcyanogenmod/app/Profile;

    .prologue
    .line 263
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->enforceChangePermissions()V
    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$200(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    .line 264
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;
    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$500(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/app/Profile;

    .line 266
    .local v0, "old":Lcyanogenmod/app/Profile;
    if-nez v0, :cond_0

    .line 283
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfileNames:Ljava/util/Map;
    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$400(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcyanogenmod/app/Profile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfileNames:Ljava/util/Map;
    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$400(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcyanogenmod/app/Profile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mProfiles:Ljava/util/Map;
    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$500(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v1, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-static {}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->clearCallingIdentity()J

    move-result-wide v2

    .line 276
    .local v2, "token":J
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # invokes: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->persistIfDirty()V
    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$000(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V

    .line 279
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mActiveProfile:Lcyanogenmod/app/Profile;
    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$1000(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Lcyanogenmod/app/Profile;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    # getter for: Lorg/cyanogenmod/platform/internal/ProfileManagerService;->mActiveProfile:Lcyanogenmod/app/Profile;
    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->access$1000(Lorg/cyanogenmod/platform/internal/ProfileManagerService;)Lcyanogenmod/app/Profile;

    move-result-object v1

    invoke-virtual {v1}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p1}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    const/4 v4, 0x1

    invoke-virtual {v1, p1, v4}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->setActiveProfileInternal(Lcyanogenmod/app/Profile;Z)V

    .line 282
    :cond_1
    invoke-static {v2, v3}, Lorg/cyanogenmod/platform/internal/ProfileManagerService$2;->restoreCallingIdentity(J)V

    goto :goto_0
.end method
