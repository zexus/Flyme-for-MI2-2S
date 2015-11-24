.class Lcom/android/settings_ext/notification/ZenModeSettings$7$1;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic agG:Lcom/android/settings_ext/notification/ZenModeSettings$7;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/notification/ZenModeSettings$7;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/settings_ext/notification/ZenModeSettings$7$1;->agG:Lcom/android/settings_ext/notification/ZenModeSettings$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/settings_ext/notification/ZenModeSettings$7$1;->agG:Lcom/android/settings_ext/notification/ZenModeSettings$7;

    iget-object v0, v0, Lcom/android/settings_ext/notification/ZenModeSettings$7;->agC:Lcom/android/settings_ext/notification/ZenModeSettings;

    invoke-static {v0}, Lcom/android/settings_ext/notification/ZenModeSettings;->c(Lcom/android/settings_ext/notification/ZenModeSettings;)V

    .line 263
    return-void
.end method
