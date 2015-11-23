.class Lcom/android/settings/notification/ZenModeSettings$12;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic agC:Lcom/android/settings/notification/ZenModeSettings;

.field final synthetic agF:I


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeSettings;I)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$12;->agC:Lcom/android/settings/notification/ZenModeSettings;

    iput p2, p0, Lcom/android/settings/notification/ZenModeSettings$12;->agF:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$12;->agC:Lcom/android/settings/notification/ZenModeSettings;

    iget v1, p0, Lcom/android/settings/notification/ZenModeSettings$12;->agF:I

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeSettings;->cf(I)V

    .line 528
    return-void
.end method
