.class final Lcom/android/settings_ext/bluetooth/DockService$ServiceHandler;
.super Landroid/os/Handler;
.source "DockService.java"


# instance fields
.field final synthetic Ow:Lcom/android/settings_ext/bluetooth/DockService;


# direct methods
.method private constructor <init>(Lcom/android/settings_ext/bluetooth/DockService;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/DockService$ServiceHandler;->Ow:Lcom/android/settings_ext/bluetooth/DockService;

    .line 247
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 248
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ext/bluetooth/DockService;Landroid/os/Looper;Lcom/android/settings_ext/bluetooth/DockService$1;)V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ext/bluetooth/DockService$ServiceHandler;-><init>(Lcom/android/settings_ext/bluetooth/DockService;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DockService$ServiceHandler;->Ow:Lcom/android/settings_ext/bluetooth/DockService;

    invoke-static {v0, p1}, Lcom/android/settings_ext/bluetooth/DockService;->a(Lcom/android/settings_ext/bluetooth/DockService;Landroid/os/Message;)V

    .line 253
    return-void
.end method