.class Lcom/android/settings_ext/applications/ManageApplications$2;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic Hm:Lcom/android/settings_ext/applications/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/applications/ManageApplications;)V
    .locals 0

    .prologue
    .line 1326
    iput-object p1, p0, Lcom/android/settings_ext/applications/ManageApplications$2;->Hm:Lcom/android/settings_ext/applications/ManageApplications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$2;->Hm:Lcom/android/settings_ext/applications/ManageApplications;

    invoke-static {p2}, Lcom/android/internal/app/IMediaContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ext/applications/ManageApplications;->a(Lcom/android/settings_ext/applications/ManageApplications;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 1330
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$2;->Hm:Lcom/android/settings_ext/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings_ext/applications/ManageApplications;->c(Lcom/android/settings_ext/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1331
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$2;->Hm:Lcom/android/settings_ext/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings_ext/applications/ManageApplications;->c(Lcom/android/settings_ext/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications$2;->Hm:Lcom/android/settings_ext/applications/ManageApplications;

    invoke-static {v2}, Lcom/android/settings_ext/applications/ManageApplications;->j(Lcom/android/settings_ext/applications/ManageApplications;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->a(Lcom/android/internal/app/IMediaContainerService;)V

    .line 1330
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1333
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$2;->Hm:Lcom/android/settings_ext/applications/ManageApplications;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ext/applications/ManageApplications;->a(Lcom/android/settings_ext/applications/ManageApplications;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 1338
    return-void
.end method
