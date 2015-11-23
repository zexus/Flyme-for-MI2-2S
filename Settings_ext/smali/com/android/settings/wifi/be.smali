.class Lcom/android/settings_ext/wifi/be;
.super Landroid/content/BroadcastReceiver;
.source "WpsFragment.java"


# instance fields
.field final synthetic axK:Lcom/android/settings_ext/wifi/WpsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/WpsFragment;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/settings_ext/wifi/be;->axK:Lcom/android/settings_ext/wifi/WpsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/settings_ext/wifi/be;->axK:Lcom/android/settings_ext/wifi/WpsFragment;

    invoke-static {v0, p1, p2}, Lcom/android/settings_ext/wifi/WpsFragment;->a(Lcom/android/settings_ext/wifi/WpsFragment;Landroid/content/Context;Landroid/content/Intent;)V

    .line 201
    return-void
.end method
