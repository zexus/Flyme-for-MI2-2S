.class Lcom/android/settings_ext/display/b;
.super Landroid/database/ContentObserver;
.source "BrightnessFragment.java"


# instance fields
.field final synthetic Ux:Lcom/android/settings_ext/display/BrightnessFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/display/BrightnessFragment;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/settings_ext/display/b;->Ux:Lcom/android/settings_ext/display/BrightnessFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings_ext/display/b;->Ux:Lcom/android/settings_ext/display/BrightnessFragment;

    invoke-static {v0}, Lcom/android/settings_ext/display/BrightnessFragment;->b(Lcom/android/settings_ext/display/BrightnessFragment;)V

    .line 73
    return-void
.end method
