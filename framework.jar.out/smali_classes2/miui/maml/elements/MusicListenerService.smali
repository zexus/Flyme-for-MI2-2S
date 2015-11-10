.class public Lmiui/maml/elements/MusicListenerService;
.super Landroid/service/notification/NotificationListenerService;
.source "MusicListenerService.java"

# interfaces
.implements Landroid/media/RemoteController$OnClientUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/MusicListenerService$RCBinder;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "android.service.notification.MusicListenerService"

.field private static final BITMAP_HEIGHT:I = 0x400

.field private static final BITMAP_WIDTH:I = 0x400

.field private static final LOG_TAG:Ljava/lang/String; = "MusicListenerService"


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mClientUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/RemoteController$OnClientUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mRemoteController:Landroid/media/RemoteController;

.field private mRemoteControllerEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 26
    new-instance v0, Lmiui/maml/elements/MusicListenerService$RCBinder;

    invoke-direct {v0, p0}, Lmiui/maml/elements/MusicListenerService$RCBinder;-><init>(Lmiui/maml/elements/MusicListenerService;)V

    iput-object v0, p0, Lmiui/maml/elements/MusicListenerService;->mBinder:Landroid/os/IBinder;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/ArrayList;

    .line 105
    return-void
.end method

.method private disableRemoteController()V
    .locals 3

    .prologue
    .line 82
    iget-boolean v1, p0, Lmiui/maml/elements/MusicListenerService;->mRemoteControllerEnabled:Z

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lmiui/maml/elements/MusicListenerService;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 84
    .local v0, "am":Landroid/media/AudioManager;
    iget-object v1, p0, Lmiui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteController(Landroid/media/RemoteController;)V

    .line 85
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/maml/elements/MusicListenerService;->mRemoteControllerEnabled:Z

    .line 87
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

.method private enableRemoteController()V
    .locals 4

    .prologue
    const/16 v3, 0x400

    .line 68
    iget-boolean v1, p0, Lmiui/maml/elements/MusicListenerService;->mRemoteControllerEnabled:Z

    if-nez v1, :cond_0

    .line 69
    iget-object v1, p0, Lmiui/maml/elements/MusicListenerService;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 70
    .local v0, "am":Landroid/media/AudioManager;
    new-instance v1, Landroid/media/RemoteController;

    iget-object v2, p0, Lmiui/maml/elements/MusicListenerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Landroid/media/RemoteController;-><init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;)V

    iput-object v1, p0, Lmiui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    .line 71
    iget-object v1, p0, Lmiui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerRemoteController(Landroid/media/RemoteController;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/maml/elements/MusicListenerService;->mRemoteControllerEnabled:Z

    .line 72
    iget-boolean v1, p0, Lmiui/maml/elements/MusicListenerService;->mRemoteControllerEnabled:Z

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p0, Lmiui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v1, v3, v3}, Landroid/media/RemoteController;->setArtworkConfiguration(II)Z

    .line 74
    iget-object v1, p0, Lmiui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/RemoteController;->setSynchronizationMode(I)Z

    .line 79
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_0
    :goto_0
    return-void

    .line 76
    .restart local v0    # "am":Landroid/media/AudioManager;
    :cond_1
    const-string v1, "MusicListenerService"

    const-string v2, "fail to register RemoteController!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getRemoteController()Landroid/media/RemoteController;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lmiui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.service.notification.MusicListenerService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const-string v0, "MusicListenerService"

    const-string v1, "onBind: success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lmiui/maml/elements/MusicListenerService;->mBinder:Landroid/os/IBinder;

    .line 44
    :goto_0
    return-object v0

    .line 43
    :cond_0
    const-string v0, "MusicListenerService"

    const-string v1, "onBind: fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public onClientChange(Z)V
    .locals 3
    .param p1, "arg0"    # Z

    .prologue
    .line 113
    iget-object v2, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RemoteController$OnClientUpdateListener;

    .line 114
    .local v1, "listener":Landroid/media/RemoteController$OnClientUpdateListener;
    invoke-interface {v1, p1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientChange(Z)V

    goto :goto_0

    .line 116
    .end local v1    # "listener":Landroid/media/RemoteController$OnClientUpdateListener;
    :cond_0
    return-void
.end method

.method public onClientFolderInfoBrowsedPlayer(Ljava/lang/String;)V
    .locals 0
    .param p1, "stringUri"    # Ljava/lang/String;

    .prologue
    .line 147
    return-void
.end method

.method public onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V
    .locals 3
    .param p1, "arg0"    # Landroid/media/RemoteController$MetadataEditor;

    .prologue
    .line 120
    iget-object v2, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RemoteController$OnClientUpdateListener;

    .line 121
    .local v1, "listener":Landroid/media/RemoteController$OnClientUpdateListener;
    invoke-interface {v1, p1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V

    goto :goto_0

    .line 123
    .end local v1    # "listener":Landroid/media/RemoteController$OnClientUpdateListener;
    :cond_0
    return-void
.end method

.method public onClientNowPlayingContentChange()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public onClientPlayItemResponse(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 156
    return-void
.end method

.method public onClientPlaybackStateUpdate(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 127
    iget-object v2, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RemoteController$OnClientUpdateListener;

    .line 128
    .local v1, "listener":Landroid/media/RemoteController$OnClientUpdateListener;
    invoke-interface {v1, p1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientPlaybackStateUpdate(I)V

    goto :goto_0

    .line 130
    .end local v1    # "listener":Landroid/media/RemoteController$OnClientUpdateListener;
    :cond_0
    return-void
.end method

.method public onClientPlaybackStateUpdate(IJJF)V
    .locals 8
    .param p1, "arg0"    # I
    .param p2, "arg1"    # J
    .param p4, "arg2"    # J
    .param p6, "arg3"    # F

    .prologue
    .line 134
    iget-object v1, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteController$OnClientUpdateListener;

    .local v0, "listener":Landroid/media/RemoteController$OnClientUpdateListener;
    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    .line 135
    invoke-interface/range {v0 .. v6}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientPlaybackStateUpdate(IJJF)V

    goto :goto_0

    .line 137
    .end local v0    # "listener":Landroid/media/RemoteController$OnClientUpdateListener;
    :cond_0
    return-void
.end method

.method public onClientTransportControlUpdate(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 141
    iget-object v2, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RemoteController$OnClientUpdateListener;

    .line 142
    .local v1, "listener":Landroid/media/RemoteController$OnClientUpdateListener;
    invoke-interface {v1, p1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientTransportControlUpdate(I)V

    goto :goto_0

    .line 144
    .end local v1    # "listener":Landroid/media/RemoteController$OnClientUpdateListener;
    :cond_0
    return-void
.end method

.method public onClientUpdateNowPlayingEntries([J)V
    .locals 0
    .param p1, "playList"    # [J

    .prologue
    .line 150
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lmiui/maml/elements/MusicListenerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/MusicListenerService;->mContext:Landroid/content/Context;

    .line 59
    new-instance v0, Landroid/media/RemoteController;

    iget-object v1, p0, Lmiui/maml/elements/MusicListenerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/media/RemoteController;-><init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;)V

    iput-object v0, p0, Lmiui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    .line 60
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lmiui/maml/elements/MusicListenerService;->disableRemoteController()V

    .line 65
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 50
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 54
    return-void
.end method

.method public registerClientUpdateListener(Landroid/media/RemoteController$OnClientUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/RemoteController$OnClientUpdateListener;

    .prologue
    .line 90
    invoke-direct {p0}, Lmiui/maml/elements/MusicListenerService;->enableRemoteController()V

    .line 91
    iget-object v0, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_0
    return-void
.end method

.method public unregisterClientUpdateListener(Landroid/media/RemoteController$OnClientUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/RemoteController$OnClientUpdateListener;

    .prologue
    .line 97
    iget-object v0, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 100
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 101
    invoke-direct {p0}, Lmiui/maml/elements/MusicListenerService;->disableRemoteController()V

    .line 103
    :cond_1
    return-void
.end method
