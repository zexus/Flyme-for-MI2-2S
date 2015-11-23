.class Lcom/android/settings/notification/ManagedServiceSettings$1;
.super Landroid/database/ContentObserver;
.source "ManagedServiceSettings.java"


# instance fields
.field final synthetic aef:Lcom/android/settings/notification/ManagedServiceSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ManagedServiceSettings;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/settings/notification/ManagedServiceSettings$1;->aef:Lcom/android/settings/notification/ManagedServiceSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings$1;->aef:Lcom/android/settings/notification/ManagedServiceSettings;

    invoke-static {v0}, Lcom/android/settings/notification/ManagedServiceSettings;->a(Lcom/android/settings/notification/ManagedServiceSettings;)V

    .line 80
    return-void
.end method
