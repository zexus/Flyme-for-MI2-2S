.class Lcom/android/settings/applications/MiuiSmsDefaultDialog$1;
.super Ljava/lang/Object;
.source "MiuiSmsDefaultDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic HE:Lcom/android/settings/applications/MiuiSmsDefaultDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/MiuiSmsDefaultDialog;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings/applications/MiuiSmsDefaultDialog$1;->HE:Lcom/android/settings/applications/MiuiSmsDefaultDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 64
    iget-object v0, p0, Lcom/android/settings/applications/MiuiSmsDefaultDialog$1;->HE:Lcom/android/settings/applications/MiuiSmsDefaultDialog;

    invoke-static {v0, v1}, Lcom/android/settings/applications/MiuiSmsDefaultDialog;->a(Lcom/android/settings/applications/MiuiSmsDefaultDialog;I)I

    .line 65
    iget-object v0, p0, Lcom/android/settings/applications/MiuiSmsDefaultDialog$1;->HE:Lcom/android/settings/applications/MiuiSmsDefaultDialog;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/MiuiSmsDefaultDialog;->showDialog(I)V

    .line 66
    return-void
.end method
