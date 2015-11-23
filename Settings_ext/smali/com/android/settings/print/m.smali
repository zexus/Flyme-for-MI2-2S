.class Lcom/android/settings_ext/print/m;
.super Lcom/android/settings_ext/print/r;
.source "PrintSettingsFragment.java"


# instance fields
.field final synthetic ahs:Lcom/android/settings_ext/print/PrintSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/print/PrintSettingsFragment;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/settings_ext/print/m;->ahs:Lcom/android/settings_ext/print/PrintSettingsFragment;

    invoke-direct {p0, p2}, Lcom/android/settings_ext/print/r;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings_ext/print/m;->ahs:Lcom/android/settings_ext/print/PrintSettingsFragment;

    invoke-static {v0}, Lcom/android/settings_ext/print/PrintSettingsFragment;->a(Lcom/android/settings_ext/print/PrintSettingsFragment;)V

    .line 119
    return-void
.end method
