.class Lcom/android/settings_ext/display/A;
.super Landroid/content/BroadcastReceiver;
.source "PaperModeSetAppsFragment.java"


# instance fields
.field final synthetic VO:Lcom/android/settings_ext/display/PaperModeSetAppsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/display/PaperModeSetAppsFragment;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings_ext/display/A;->VO:Lcom/android/settings_ext/display/PaperModeSetAppsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings_ext/display/A;->VO:Lcom/android/settings_ext/display/PaperModeSetAppsFragment;

    invoke-static {v0}, Lcom/android/settings_ext/display/PaperModeSetAppsFragment;->a(Lcom/android/settings_ext/display/PaperModeSetAppsFragment;)V

    .line 88
    return-void
.end method
