.class Lcom/android/settings_ext/bluetooth/RequestPermissionActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "RequestPermissionActivity.java"


# instance fields
.field final synthetic Pt:Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity$1;->Pt:Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 81
    if-nez p2, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity$1;->Pt:Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;

    invoke-static {v0}, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->a(Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x80000000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 87
    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity$1;->Pt:Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;

    invoke-static {v0}, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->b(Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity$1;->Pt:Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;

    invoke-static {v0}, Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;->c(Lcom/android/settings_ext/bluetooth/RequestPermissionActivity;)V

    goto :goto_0
.end method
