.class Lcom/android/settings_ext/print/b;
.super Lcom/android/settings_ext/print/k;
.source "PrintServiceSettingsFragment.java"


# instance fields
.field final synthetic ahg:Lcom/android/settings_ext/print/PrintServiceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/print/PrintServiceSettingsFragment;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/settings_ext/print/b;->ahg:Lcom/android/settings_ext/print/PrintServiceSettingsFragment;

    invoke-direct {p0, p2}, Lcom/android/settings_ext/print/k;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings_ext/print/b;->ahg:Lcom/android/settings_ext/print/PrintServiceSettingsFragment;

    invoke-static {v0}, Lcom/android/settings_ext/print/PrintServiceSettingsFragment;->a(Lcom/android/settings_ext/print/PrintServiceSettingsFragment;)V

    .line 89
    return-void
.end method
