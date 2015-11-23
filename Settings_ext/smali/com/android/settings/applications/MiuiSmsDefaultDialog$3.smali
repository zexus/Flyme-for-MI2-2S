.class Lcom/android/settings/applications/MiuiSmsDefaultDialog$3;
.super Ljava/lang/Object;
.source "MiuiSmsDefaultDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic HE:Lcom/android/settings/applications/MiuiSmsDefaultDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/MiuiSmsDefaultDialog;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings/applications/MiuiSmsDefaultDialog$3;->HE:Lcom/android/settings/applications/MiuiSmsDefaultDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/applications/MiuiSmsDefaultDialog$3;->HE:Lcom/android/settings/applications/MiuiSmsDefaultDialog;

    invoke-static {v0}, Lcom/android/settings/applications/MiuiSmsDefaultDialog;->a(Lcom/android/settings/applications/MiuiSmsDefaultDialog;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/settings/applications/MiuiSmsDefaultDialog$3;->HE:Lcom/android/settings/applications/MiuiSmsDefaultDialog;

    invoke-virtual {v0}, Lcom/android/settings/applications/MiuiSmsDefaultDialog;->finish()V

    .line 76
    :cond_0
    return-void
.end method
