.class Lcom/android/settings_ext/notification/ManagedServiceSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "ManagedServiceSettings.java"


# instance fields
.field final synthetic aef:Lcom/android/settings_ext/notification/ManagedServiceSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/notification/ManagedServiceSettings;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/settings_ext/notification/ManagedServiceSettings$2;->aef:Lcom/android/settings_ext/notification/ManagedServiceSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings_ext/notification/ManagedServiceSettings$2;->aef:Lcom/android/settings_ext/notification/ManagedServiceSettings;

    invoke-static {v0}, Lcom/android/settings_ext/notification/ManagedServiceSettings;->a(Lcom/android/settings_ext/notification/ManagedServiceSettings;)V

    .line 87
    return-void
.end method
