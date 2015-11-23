.class Lcom/android/settings_ext/ft;
.super Landroid/database/ContentObserver;
.source "ProvisionObserverService.java"


# instance fields
.field final synthetic um:Lcom/android/settings_ext/ProvisionObserverService;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/ProvisionObserverService;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/settings_ext/ft;->um:Lcom/android/settings_ext/ProvisionObserverService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings_ext/ft;->um:Lcom/android/settings_ext/ProvisionObserverService;

    invoke-virtual {v0}, Lcom/android/settings_ext/ProvisionObserverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/android/settings_ext/ft;->um:Lcom/android/settings_ext/ProvisionObserverService;

    invoke-static {v0}, Lcom/android/settings_ext/ProvisionObserverService;->a(Lcom/android/settings_ext/ProvisionObserverService;)V

    .line 26
    :cond_0
    return-void
.end method
