.class Lcom/android/settings_ext/wifi/S;
.super Ljava/lang/Object;
.source "WifiConfigActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic aum:Lcom/android/settings_ext/wifi/WifiConfigActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/WifiConfigActivity;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/settings_ext/wifi/S;->aum:Lcom/android/settings_ext/wifi/WifiConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings_ext/wifi/S;->aum:Lcom/android/settings_ext/wifi/WifiConfigActivity;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/WifiConfigActivity;->finish()V

    .line 40
    return-void
.end method
