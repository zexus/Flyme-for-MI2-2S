.class public Lcom/android/settings_ext/wifi/x;
.super Landroid/os/Binder;
.source "MiuiWifiService.java"


# instance fields
.field final synthetic att:Lcom/android/settings_ext/wifi/MiuiWifiService;


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/wifi/MiuiWifiService;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings_ext/wifi/x;->att:Lcom/android/settings_ext/wifi/MiuiWifiService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public uw()Lcom/android/settings_ext/wifi/MiuiWifiService;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings_ext/wifi/x;->att:Lcom/android/settings_ext/wifi/MiuiWifiService;

    return-object v0
.end method
