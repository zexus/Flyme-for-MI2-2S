.class Lcom/android/settings_ext/fl;
.super Landroid/database/ContentObserver;
.source "PointerSpeedPreference.java"


# instance fields
.field final synthetic tU:Lcom/android/settings_ext/PointerSpeedPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/PointerSpeedPreference;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings_ext/fl;->tU:Lcom/android/settings_ext/PointerSpeedPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings_ext/fl;->tU:Lcom/android/settings_ext/PointerSpeedPreference;

    invoke-static {v0}, Lcom/android/settings_ext/PointerSpeedPreference;->a(Lcom/android/settings_ext/PointerSpeedPreference;)V

    .line 49
    return-void
.end method
