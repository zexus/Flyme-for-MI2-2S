.class Lcom/android/settings_ext/wifi/aC;
.super Ljava/lang/Object;
.source "WifiShareConnectDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic awH:Lcom/android/settings_ext/wifi/WifiShareConnectDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/WifiShareConnectDialog;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/settings_ext/wifi/aC;->awH:Lcom/android/settings_ext/wifi/WifiShareConnectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 42
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 43
    iget-object v0, p0, Lcom/android/settings_ext/wifi/aC;->awH:Lcom/android/settings_ext/wifi/WifiShareConnectDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ext/wifi/WifiShareConnectDialog;->a(Lcom/android/settings_ext/wifi/WifiShareConnectDialog;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 44
    iget-object v0, p0, Lcom/android/settings_ext/wifi/aC;->awH:Lcom/android/settings_ext/wifi/WifiShareConnectDialog;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/WifiShareConnectDialog;->finish()V

    .line 45
    return-void
.end method
