.class Lcom/android/settings_ext/bluetooth/DockService$4;
.super Ljava/lang/Object;
.source "DockService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic Ow:Lcom/android/settings_ext/bluetooth/DockService;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/bluetooth/DockService;)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/DockService$4;->Ow:Lcom/android/settings_ext/bluetooth/DockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DockService$4;->Ow:Lcom/android/settings_ext/bluetooth/DockService;

    invoke-static {v0}, Lcom/android/settings_ext/bluetooth/DockService;->c(Lcom/android/settings_ext/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DockService$4;->Ow:Lcom/android/settings_ext/bluetooth/DockService;

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/DockService$4;->Ow:Lcom/android/settings_ext/bluetooth/DockService;

    invoke-static {v1}, Lcom/android/settings_ext/bluetooth/DockService;->d(Lcom/android/settings_ext/bluetooth/DockService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings_ext/bluetooth/DockEventReceiver;->a(Landroid/app/Service;I)V

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DockService$4;->Ow:Lcom/android/settings_ext/bluetooth/DockService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/bluetooth/DockService;->stopForeground(Z)V

    .line 601
    return-void
.end method
