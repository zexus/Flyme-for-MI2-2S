.class Lcom/android/settings/ci;
.super Landroid/content/BroadcastReceiver;
.source "DreamSettings.java"


# instance fields
.field final synthetic kt:Lcom/android/settings/DreamSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/DreamSettings;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/settings/ci;->kt:Lcom/android/settings/DreamSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/DreamSettings;Lcom/android/settings/ca;)V
    .locals 0

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lcom/android/settings/ci;-><init>(Lcom/android/settings/DreamSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 367
    const-string v0, "PackageReceiver.onReceive"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings/DreamSettings;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    iget-object v0, p0, Lcom/android/settings/ci;->kt:Lcom/android/settings/DreamSettings;

    invoke-static {v0}, Lcom/android/settings/DreamSettings;->b(Lcom/android/settings/DreamSettings;)V

    .line 369
    return-void
.end method
