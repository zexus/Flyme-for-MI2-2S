.class Lcom/android/settings/ivan/PowerModeSettings$2;
.super Ljava/lang/Object;
.source "PowerModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ivan/PowerModeSettings;->createPowerModeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ivan/PowerModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ivan/PowerModeSettings;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings/ivan/PowerModeSettings$2;->this$0:Lcom/android/settings/ivan/PowerModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/ivan/PowerModeSettings$2;->this$0:Lcom/android/settings/ivan/PowerModeSettings;

    invoke-virtual {v0}, Lcom/android/settings/ivan/PowerModeSettings;->finish()V

    .line 61
    return-void
.end method
