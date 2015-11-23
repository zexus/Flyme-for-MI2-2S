.class Lcom/android/settings_ext/bluetooth/GattProfile$1;
.super Landroid/database/ContentObserver;
.source "GattProfile.java"


# instance fields
.field final synthetic OB:Lcom/android/settings_ext/bluetooth/GattProfile;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/bluetooth/GattProfile;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/GattProfile$1;->OB:Lcom/android/settings_ext/bluetooth/GattProfile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/GattProfile$1;->OB:Lcom/android/settings_ext/bluetooth/GattProfile;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/GattProfile;->mU()V

    .line 56
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 57
    return-void
.end method
