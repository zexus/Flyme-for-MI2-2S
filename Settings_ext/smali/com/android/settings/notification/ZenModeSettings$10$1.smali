.class Lcom/android/settings/notification/ZenModeSettings$10$1;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic agD:Lcom/android/settings/notification/ZenModeSettings$10;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeSettings$10;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$10$1;->agD:Lcom/android/settings/notification/ZenModeSettings$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$10$1;->agD:Lcom/android/settings/notification/ZenModeSettings$10;

    iget-object v0, v0, Lcom/android/settings/notification/ZenModeSettings$10;->agC:Lcom/android/settings/notification/ZenModeSettings;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeSettings;->e(Lcom/android/settings/notification/ZenModeSettings;)V

    .line 329
    return-void
.end method
